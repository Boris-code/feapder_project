# -*- coding: utf-8 -*-
"""
Created on 2021-08-28 16:38:24
---------
@summary:  热映电影
---------
@author: Boris
"""

import feapder
import setting
from feapder.utils import tools
from items import *


class HotFilmsSpider(feapder.BatchSpider):
    def start_requests(self, task):
        task_id, city_id = task
        yield feapder.Request(city_id=city_id, page=1, task_id=task_id)

    def download_midware(self, request):
        offset = (request.page - 1) * 30
        request.url = f"https://maoyan.com/films?showType=1&offset={offset}"
        request.cookies = {"ci": str(request.city_id)}
        return request

    def validate(self, request, response):
        if "verify.maoyan.com/" in response.url:
            ip = request.proxy() or ""
            url = response.url
            ua = request.user_agent()
            self._redisdb.sadd(setting.CAPTCHA_BLOCK_IP_REDIS_KEY, ip)
            self._redisdb.hset(setting.CAPTCHA_REDIS_KEY, ip, {"url": url, "ua": ua})
            raise Exception("出现验证码，重试")

    def parse(self, request, response):
        movie_list = response.xpath("//dl[@class='movie-list']//dd")
        for movie in movie_list:
            cover = movie.xpath(
                './div[@class="movie-item film-channel"]//div[@class="movie-poster"]/img[2]/@data-src'
            ).extract_first()
            name = movie.xpath(
                './div[@class="channel-detail movie-item-title"]/@title'
            ).extract_first()
            url = movie.xpath(
                './div[@class="channel-detail movie-item-title"]/a/@href'
            ).extract_first()
            score = movie.xpath(
                'string(./div[@class="channel-detail channel-detail-orange"])'
            ).extract_first()
            movie_type = movie.re_first("类型:</span>(.*?)<", default="").strip()
            main_actor = movie.re_first("主演:</span>(.*?)<", default="").strip()
            release_date = movie.re_first("上映时间:</span>(.*?)<", default="").strip()
            imax = movie.xpath(
                './div[@class="movie-item film-channel"]//div[@class="movie-ver"]/i/@class'
            ).extract_first()
            movie_id = url.split("/")[-1]

            item = maoyan_hot_movie_list_item.MaoyanHotMovieListItem()
            item.name = name
            item.movie_id = movie_id
            item.cover = cover
            item.url = url
            item.score = score
            item.movie_type = movie_type
            item.main_actor = main_actor
            item.release_date = release_date
            item.imax = imax
            item.city_id = request.city_id
            item.crawl_time = tools.get_current_date()
            yield item

            # 电影详情任务
            for brand_id in setting.BRAND_IDS:
                detail_task_item = (
                    maoyan_film_detail_task_item.MaoyanFilmDetailTaskItem()
                )
                detail_task_item.movie_id = movie_id  # 电影id
                detail_task_item.city_id = request.city_id  # 城市id
                detail_task_item.brand_id = brand_id  # 品牌 -1表示全部
                detail_task_item.show_date = tools.get_current_date("%Y-%m-%d")  # 日期
                yield detail_task_item

        # 翻页
        if request.page == 1:
            total_page = response.xpath(
                '//ul[@class="list-pager"]//li[last()-1]/a/text()'
            ).extract_first()
            if total_page:
                total_page = int(total_page)
                for page in range(2, total_page + 1):
                    yield feapder.Request(
                        page=page, city_id=request.city_id, task_id=request.task_id
                    )

            # 更新任务
            yield self.update_task_batch(request.task_id, 1)
