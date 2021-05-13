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
    AirSpiderDemo().start()