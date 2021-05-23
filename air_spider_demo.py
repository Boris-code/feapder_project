# -*- coding: utf-8 -*-
"""
Created on 2021-05-13 22:05:11
---------
@summary:
---------
@author: Boris
"""

import feapder


class AirSpiderDemo(feapder.AirSpider):
    def start_requests(self):
        yield feapder.Request("https://www.baidu.com")

    def parse(self, request, response):
        print(response)


if __name__ == "__main__":
    # 循环运行，本次结束后马上开始下一次
    spider = AirSpiderDemo()
    while True:
        spider.start()
        spider.join() # 等待结束

    # 直接开启10个爬虫
    # for i in range(10):
    #     spider = AirSpiderDemo()
    #     spider.start()
