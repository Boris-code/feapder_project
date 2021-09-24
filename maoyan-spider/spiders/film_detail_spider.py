# -*- coding: utf-8 -*-
"""
Created on 2021-08-28 19:37:29
---------
@summary: 影片详情爬虫
---------
@author: Boris
"""

import re

import feapder
import setting
from feapder.utils import tools
from feapder.utils.log import log
from items import *


class FilmDetailSpider(feapder.BatchSpider):
    def init_task(self):
        pass

    def start_requests(self, task):
        task_id = task.id
        movie_id = task.movie_id
        city_id = task.city_id
        brand_id = task.brand_id
        show_date = str(task.show_date)

        url = f"https://maoyan.com/cinemas?movieId={movie_id}&showDate={show_date}"
        if brand_id:
            url += f"&brandId={brand_id}"

        yield feapder.Request(
            url,
            city_id=city_id,
            movie_id=movie_id,
            show_date=show_date,
            brand_id=brand_id,
            page=1,
            task_id=task_id,
        )

    def download_midware(self, request):
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
        """
        解析影院列表
        """
        cinema_list = response.xpath('//div[@class="cinema-cell"]')
        for cinema in cinema_list:
            # 电影院信息
            name = cinema.xpath('.//a[@class="cinema-name"]/text()').extract_first()
            address = cinema.xpath(
                './/p[@class="cinema-address"]/text()'
            ).extract_first()
            cinema_id = cinema.xpath('.//a[@class="cinema-name"]/@data-val').re_first(
                "cinema_id: (\d*)"
            )
            tags = cinema.xpath(".//div[@class='cinema-tags']//span/text()").extract()
            # 电影院列表入库
            item = maoyan_cinema_list_item.MaoyanCinemaListItem()
            item.name = name
            item.address = address
            item.cinema_id = cinema_id
            item.tags = tags
            item.crawl_time = tools.get_current_date()
            item.city_id = request.city_id
            yield item

            # 采集场次
            url = cinema.xpath('.//a[@class="cinema-name"]/@href').extract_first()
            next_request = request.copy()
            next_request.url = url
            next_request.cinema_id = cinema_id
            next_request.callback = self.parse_play_time
            yield next_request

        # 翻页
        page = request.page
        page_urls = response.xpath('//ul[@class="list-pager"]//a/@href').extract()
        for page_url in page_urls[1:-1]:
            page += 1
            yield feapder.Request(
                page_url,
                city_id=request.city_id,
                movie_id=request.movie_id,
                show_date=request.show_date,
                brand_id=request.brand_id,
                page=page,
                task_id=request.task_id,
            )

        if request.page == 1:
            # 更新任务
            yield self.update_task_batch(request.task_id, 1)

    def parse_play_time(self, request, response):
        """
        解析购买地址
        """
        movie_id = request.movie_id
        cinema_id = request.cinema_id

        pay_urls = response.xpath(
            f'//a[@data-val="{{movie_id: {movie_id}, cinema_id:{cinema_id}}}"]/@href'
        ).extract()
        for pay_url in pay_urls:
            log.debug("解析到购买地址 {}".format(pay_url))
            next_request = request.copy()
            next_request.url = pay_url
            next_request.callback = self.parse_seats
            next_request.priority = 1
            yield next_request

    def parse_seats(self, request, response):
        """
        解析客座率等信息
        """
        if re.search("本场次暂未开放售票", response.text):
            return

        movie_id = request.movie_id
        movie_name = response.xpath(
            '//p[@class="name text-ellipsis"]/text()'
        ).extract_first()
        cinema_id = tools.get_param(request.url, "movieId")
        cinema_name = response.re_first("影院 :</span>.*?'>(.*?)<", default="").strip()
        screen = response.re_first("影厅 :</span>.*?'>(.*?)<", default="").strip()
        version = response.re_first("版本 :</span>.*?'>(.*?)<", default="").strip()
        show_time = response.re_first("场次 :</span>.*?'>(.*?)<", default="").strip()
        price = response.re_first("票价 :</span>.*?'>(.*?)<", default="").strip()

        show_time = " ".join(show_time.split(" ")[1:])
        show_time = tools.format_time(show_time)

        seat_selectable_count = len(response.xpath('//span[@class="seat selectable"]'))
        seat_sold_count = len(response.xpath('//span[@class="seat sold"]'))
        seat_total_count = seat_selectable_count + seat_sold_count

        # 入库
        item = maoyan_film_detail_item.MaoyanFilmDetailItem()
        item.movie_id = movie_id
        item.movie_name = movie_name
        item.city_id = request.city_id
        item.cinema_id = cinema_id
        item.cinema_name = cinema_name
        item.screen = screen
        item.version = version
        item.price = price
        item.show_time = show_time
        item.seat_sold_count = seat_sold_count
        item.seat_total_count = seat_total_count
        item.url = response.url
        item.crawl_time = tools.get_current_date()
        yield item

        # 生产开播前5分钟再采集一次的详情任务
        snapshot_task_item = (
            maoyan_film_detail_snapshot_task_item.MaoyanFilmDetailSnapshotTaskItem()
        )
        snapshot_task_item.movie_id = movie_id  # 电影id
        snapshot_task_item.city_id = request.city_id  # 城市id
        snapshot_task_item.url = response.url  # 售票地址
        snapshot_task_item.show_time = show_time  # 播出时间
        snapshot_task_item.crawl_time = None  # 采集时间
        yield snapshot_task_item
