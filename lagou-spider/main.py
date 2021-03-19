# -*- coding: utf-8 -*-
"""
Created on 2021-03-19 20:42:55
---------
@summary: 爬虫入口
---------
@author: liubo
"""

from feapder import ArgumentParser

from spiders import *


def crawl_list():
    """
    列表爬虫
    """
    spider = list_spider.ListSpider(redis_key="feapder:lagou_list")
    spider.start()


def crawl_detail(args):
    """
    详情爬虫
    @param args: 1 / 2 / init
    """
    spider = detail_spider.DetailSpider(
        redis_key="feapder:lagou_detail",  # redis中存放任务等信息的根key
        task_table="lagou_job_detail_task",  # mysql中的任务表
        task_keys=["id", "url"],  # 需要获取任务表里的字段名，可添加多个
        task_state="state",  # mysql中任务状态字段
        batch_record_table="lagou_detail_batch_record",  # mysql中的批次记录表
        batch_name="详情爬虫(周全)",  # 批次名字
        batch_interval=7,  # 批次周期 天为单位 若为小时 可写 1 / 24
    )

    if args == 1:
        spider.start_monitor_task()
    elif args == 2:
        spider.start()


if __name__ == "__main__":
    parser = ArgumentParser(description="xxx爬虫")

    parser.add_argument(
        "--crawl_list", action="store_true", help="列表爬虫", function=crawl_list
    )
    parser.add_argument(
        "--crawl_detail", type=int, nargs=1, help="详情爬虫(1|2）", function=crawl_detail
    )

    parser.start()
