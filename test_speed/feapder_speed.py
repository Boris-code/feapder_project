# -*- coding: utf-8 -*-
"""
Created on 2022-05-17 16:33:28
---------
@summary:
---------
@author: Boris
"""

import feapder


class TestSpeed(feapder.Spider):
    __custom_setting__ = dict(
        COLLECTOR_TASK_COUNT=32,  # 每次获取任务数量
        SPIDER_THREAD_COUNT=32,  # 爬虫并发数
        LOG_LEVEL="INFO",
        SPIDER_MAX_RETRY_TIMES=1,
    )

    def start_requests(self):
        for i in range(10000):
            yield feapder.Request(f"https://baidu.com?i={i}")

    def parse(self, request, response):
        print(response)


if __name__ == "__main__":
    TestSpeed(redis_key="test:speed").start()
