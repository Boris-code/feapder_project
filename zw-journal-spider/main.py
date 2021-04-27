# -*- coding: utf-8 -*-
"""
Created on 2021-04-12 14:55:05
---------
@summary: 爬虫入口
---------
@author: Boris
"""

from feapder import ArgumentParser

from spiders import *


def crawl_journal(args):
    """
    批次爬虫
    @param args: 1 / 2 / init
    """
    spider = journal_spider.JournalSpider(
        task_table="zw_journal_task",  # mysql中的任务表
        batch_record_table="zw_journal_batch_record",  # mysql中的批次记录表
        batch_name="知网期刊",  # 批次名字
        batch_interval=36500,  # 批次时间 天为单位 若为小时 可写 1 / 24
        task_keys=["id", "url"],  # 需要获取任务表里的字段名，可添加多个
        redis_key="zw:journal",  # redis中存放request等信息的根key
        task_state="state",  # mysql中任务状态字段
    )

    if args == 1:
        spider.start_monitor_task()
    elif args == 2:
        spider.start()
    elif args == 3:
        spider.init_task()


if __name__ == "__main__":
    parser = ArgumentParser(description="知网期刊爬虫")

    parser.add_argument(
        "--crawl_journal", type=int, nargs=1, help="知网期刊(1|2）", function=crawl_journal
    )

    parser.start()

    # 下发任务
    # python main.py --crawl_journal 1
    # 抓取
    # python main.py --crawl_journal 2