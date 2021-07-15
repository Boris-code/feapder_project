# -*- coding: utf-8 -*-
"""
Created on 2021-03-19 22:12:45
---------
@summary:
---------
@author: Boris
"""

import feapder
from items import *


class DetailSpider(feapder.BatchSpider):
    def start_requests(self, task):
        task_id, url = task
        yield feapder.Request(url, task_id=task_id, render=True)

    def parse(self, request, response):
        job_name = response.xpath('//div[@class="job-name"]/@title').extract_first().strip()
        detail = response.xpath('string(//div[@class="job-detail"])').extract_first().strip()

        item = lagou_job_detail_item.LagouJobDetailItem()
        item.title = job_name
        item.detail = detail
        item.batch_date = self.batch_date  # 获取批次信息，批次信息框架自己维护
        yield item  # 自动批量入库
        yield self.update_task_batch(request.task_id, 1)  # 更新任务状态


# if __name__ == "__main__":
#     spider = DetailSpider(
#         redis_key="feapder:lagou_detail",  # redis中存放任务等信息的根key
#         task_table="lagou_job_detail_task",  # mysql中的任务表
#         task_keys=["id", "url"],  # 需要获取任务表里的字段名，可添加多个
#         task_state="state",  # mysql中任务状态字段
#         batch_record_table="lagou_detail_batch_record",  # mysql中的批次记录表
#         batch_name="详情爬虫(周全)",  # 批次名字
#         batch_interval=7,  # 批次周期 天为单位 若为小时 可写 1 / 24
#     )
#
#     # 下面两个启动函数 相当于 master、worker。需要分开运行
#     # spider.start_monitor_task() # 下发及监控任务
#     spider.start()  # 采集
