# -*- coding: utf-8 -*-
"""
Created on 2021-04-12 14:56:40
---------
@summary:
---------
@author: Boris
"""

import feapder
from feapder.utils import tools

import setting
from items import *


class JournalSpider(feapder.BatchSpider):
    def start_requests(self, task):
        yield feapder.Request(task.url, task_id=task.id)

    def parse(self, request, response):
        pykm = tools.get_param(request.url, "pykm")
        pcode = tools.get_param(request.url, "pcode")
        years = response.xpath(
            '//dt[@onclick="JournalDetail.BindYearClick(this);"]/em/text()'
        ).extract()
        for year in years:
            if setting.SPIDER_YEARS and year not in setting.SPIDER_YEARS:
                continue

            url = f"https://navi.cnki.net/knavi/JournalDetail/GetArticleList?year={year}&issue=S1&pykm={pykm}&&pageIdx=0&pcode={pcode}"
            yield feapder.Request(
                url, priority=1, callback=self.parse_detail, task_id=request.task_id
            )

        yield self.update_task_batch(request.task_id, 1)

    def parse_detail(self, request, response):
        if "Validate" in response.url:
            raise Exception("验证码")

        rows = response.xpath('//dd[starts-with(@class,"row clearfix")]')
        for row in rows:
            title = (
                row.xpath('./span[@class="name"]/a/text()')
                .extract_first(default="")
                .strip()
            )
            url = row.xpath('./span[@class="name"]/a/@href').extract_first()
            db_code = tools.get_param(url, "dbCode")
            filename = tools.get_param(url, "filename")
            tablename = tools.get_param(url, "tableName")
            author = row.xpath('./span[@class="author"]/@title').extract_first()
            company = row.xpath('./span[@class="company"]/@title').extract_first()

            item = zx_journal_detail_item.ZxJournalDetailItem()
            item.title = title
            item.url = url
            item.db_code = db_code
            item.filename = filename
            item.tablename = tablename
            item.author = author
            item.company = company
            item.task_id = request.task_id

            yield item

    # def crack_verification_code(self, request, response):
    #     url = "https://navi.cnki.net/knavi/Home/GetImg?t=1618214235940"
    #     url = "https://navi.cnki.net/knavi/Home/ValidateCode"
    #     data = {
    #         "code": "xxxx"
    #     }
