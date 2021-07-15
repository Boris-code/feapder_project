# -*- coding: utf-8 -*-
"""
Created on 2021-03-19 20:49:40
---------
@summary:
---------
@author: Boris
"""

import feapder
from items import *


class ListSpider(feapder.Spider):
    def start_requests(self):
        yield feapder.Request(
            "https://www.lagou.com/jobs/list_%E7%88%AC%E8%99%AB?labelWords=&fromSearch=true&suginput=",
            render=True,
        )

    def parse(self, request, response):
        job_list = response.xpath("//li[contains(@class, 'con_list_item')]")
        for job in job_list:
            job_name = job.xpath("./@data-positionname").extract_first()
            company = job.xpath("./@data-company").extract_first()
            salary = job.xpath("./@data-salary").extract_first()
            job_url = job.xpath(".//a[@class='position_link']/@href").extract_first()

            # 列表数据
            list_item = lagou_job_list_item.LagouJobListItem()
            list_item.job_name = job_name
            list_item.company = company
            list_item.salary = salary
            list_item.job_url = job_url
            yield list_item  # 直接返回，框架实现批量入库

            # 详情任务
            detail_task_item = lagou_job_detail_task_item.LagouJobDetailTaskItem()
            detail_task_item.url = job_url
            yield detail_task_item  # 直接返回，框架实现批量入库

#
# if __name__ == "__main__":
#     spider = ListSpider(redis_key="feapder:lagou_list")
#     spider.start()
