# -*- coding: utf-8 -*-
"""
Created on 2021-08-28 16:33:33
---------
@summary: 爬虫入口
---------
@author: Boris
"""

from feapder import ArgumentParser

from spiders import *
from fuck_captcha import fuck_captcha_service


def fuck_captcha():
    fuck_captcha_service.run()


def crawl_city():
    """
    抓取城市id
    """
    spider = city_spider.CitySpider()
    spider.start()


def crawl_hot_films(args):
    """
    抓取热门电影
    @param args: 1 / 2 / 3
    """
    spider = hot_films_spider.HotFilmsSpider(
        task_table="maoyan_hot_movie_list_task",  # mysql中的任务表
        batch_record_table="maoyan_hot_movie_list_batch_record",  # mysql中的批次记录表
        batch_name="猫眼热门电影",  # 批次名字
        batch_interval=1,  # 批次时间 天为单位 若为小时 可写 1 / 24
        task_keys=["id", "city_id"],  # 需要获取任务表里的字段名，可添加多个
        redis_key="maoyan:hot_films",  # redis中存放request等信息的根key
        task_state="state",  # mysql中任务状态字段
    )

    if args == 1:
        spider.start_monitor_task()
    elif args == 2:
        spider.start()
    elif args == 3:
        spider.init_task()


def crawl_film_detail(args):
    """
    抓取电影详情
    @param args: 1 / 2 / 3
    """
    spider = film_detail_spider.FilmDetailSpider(
        task_table="maoyan_film_detail_task",  # mysql中的任务表
        batch_record_table="maoyan_film_detail_batch_record",  # mysql中的批次记录表
        batch_name="猫眼电影详情",  # 批次名字
        batch_interval=1,  # 批次时间 天为单位 若为小时 可写 1 / 24
        task_keys=[
            "id",
            "movie_id",
            "city_id",
            "brand_id",
            "show_date",
        ],  # 需要获取任务表里的字段名，可添加多个
        redis_key="maoyan:films_details",  # redis中存放request等信息的根key
        task_state="state",  # mysql中任务状态字段
    )

    if args == 1:
        spider.start_monitor_task()
    elif args == 2:
        spider.start()
    elif args == 3:
        spider.init_task()


def crawl_film_detail_snapshot(args):
    """
    采集开播前最后五分钟的客座率
    @param args: 1 / 2 / 3
    """
    spider = film_detail_snapshot_spider.FilmDetailSnapshotSpider(
        keep_alive=True,
        task_table="maoyan_film_detail_snapshot_task",  # mysql中的任务表
        batch_record_table="maoyan_film_detail_snapshot_batch_record",  # mysql中的批次记录表
        batch_name="猫眼电影详情最后五分钟的客座率",  # 批次名字
        batch_interval=6666666,  # 批次时间 天为单位 若为小时 可写 1 / 24
        task_keys=["id", "movie_id", "city_id", "url"],  # 需要获取任务表里的字段名，可添加多个
        redis_key="maoyan:films_details_snapshot",  # redis中存放request等信息的根key
        task_state="state",  # mysql中任务状态字段
        task_condition="show_time > NOW() and show_time <= DATE_ADD(NOW(),INTERVAL 5 MINUTE)",  # 只采集开播前5分钟内的任务
    )

    if args == 1:
        spider.start_monitor_task()
    elif args == 2:
        spider.start()
    elif args == 3:
        spider.init_task()


if __name__ == "__main__":
    parser = ArgumentParser(description="猫眼爬虫")

    parser.add_argument(
        "--fuck_captcha", action="store_true", help="解封ip", function=fuck_captcha
    )
    parser.add_argument(
        "--crawl_city", action="store_true", help="抓取城市id", function=crawl_city
    )
    parser.add_argument(
        "--crawl_hot_films",
        type=int,
        nargs=1,
        help="猫眼热门电影",
        choices=[1, 2, 3],
        function=crawl_hot_films,
    )
    parser.add_argument(
        "--crawl_film_detail",
        type=int,
        nargs=1,
        help="猫眼电影详情",
        choices=[1, 2, 3],
        function=crawl_film_detail,
    )
    parser.add_argument(
        "--crawl_film_detail_snapshot",
        type=int,
        nargs=1,
        help="猫眼电影详情最后五分钟的客座率",
        choices=[1, 2, 3],
        function=crawl_film_detail_snapshot,
    )

    parser.start()
