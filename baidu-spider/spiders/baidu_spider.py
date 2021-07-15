# -*- coding: utf-8 -*-
"""
Created on 2021-07-15 20:48:21
---------
@summary:
---------
@author: Boris
"""

import feapder
from items import *


class BaiduSpider(feapder.AirSpider):
    """
    轻量爬虫
    """
    def start_requests(self):
        # 采集10页
        for i in range(0, 100, 10):
            yield feapder.Request(f"https://www.baidu.com/s?wd=feapder&pn={i}")

    def download_midware(self, request):
        """
        下载中间件 可修改请求的一些参数
        """
        # request.header = {}
        return request

    def validate(self, request, response):
        """
        @summary: 校验函数, 可用于校验response是否正确
        若函数内抛出异常，则重试请求
        若返回True 或 None，则进入解析函数
        若返回False，则抛弃当前请求
        可通过request.callback_name 区分不同的回调函数，编写不同的校验逻辑
        ---------
        @param request:
        @param response:
        ---------
        @result: True / None / False
        """
        if response.status_code == 404:
            return False  # 则抛弃当前请求, 不会进入解析函数

        if response.status_code != 200:
            raise Exception("状态码错误")  # 抛出异常，框架自动重试

    def parse(self, request, response):
        """
        解析列表
        """
        results = response.xpath("//h3[@class='t']/a")
        for result in results:
            title = result.xpath("string(.)").extract_first()
            url = result.xpath("./@href").extract_first()

            # 数据自动入库
            item = baidu_list_item.BaiduListItem()
            item.title = title
            item.url = url
            yield item

            # 采集详情页 并传值title
            yield feapder.Request(url, callback=self.parse_detail, title=title)

    def parse_detail(self, request, response):
        """
        解析详情
        """
        # 取值
        title = request.title
        html = response.text

        # 数据自动入库
        item = baidu_detail_item.BaiduDetailItem()
        item.title = title
        item.html = html
        yield item


if __name__ == "__main__":
    BaiduSpider(thread_count=100).start()
