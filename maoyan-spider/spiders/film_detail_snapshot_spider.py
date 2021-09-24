# -*- coding: utf-8 -*-
"""
Created on 2021-08-28 19:37:29
---------
@summary: 影片详情爬虫 (采集开播前最后五分钟的客座率)
---------
@author: Boris
"""

import re

import feapder
from feapder.utils import tools

from items import *
from spiders.film_detail_spider import FilmDetailSpider


class FilmDetailSnapshotSpider(FilmDetailSpider):
    def start_requests(self, task):
        task_id = task.id
        movie_id = task.movie_id
        city_id = task.city_id
        url = task.url
        yield feapder.Request(
            url,
            city_id=city_id,
            task_id=task_id,
            movie_id=movie_id,
            callback=self.parse_seats,
        )

    def parse_seats(self, request, response):
        """
        解析客座率等信息
        """
        # TODO 判断是不是过期了

        if re.search("本场次暂未开放售票", response.text):
            yield self.update_task_batch(request.task_id, -1)
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
        item = maoyan_film_detail_item.MaoyanFilmDetailUpdateItem()
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
        item.crawl_time = tools.get_current_date()
        item.url = response.url
        item.update_time = tools.get_current_date()
        yield item

        yield self.update_task_batch(request.task_id, 1)
