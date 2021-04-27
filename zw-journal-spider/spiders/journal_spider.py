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

from items import *


class JournalSpider(feapder.BatchSpider):
    def start_requests(self, task):
        yield feapder.Request(task.url, task_id=task.id)

    def validate(self, request, response):
        if "Validate" in response.url:
            raise Exception("验证码")
        if "暂无目录信息" in response.text:
            print("暂无目录信息")
            return

        if "<script>window.location.href='//www.cnki.net'</script>" in response.text:
            raise Exception("跳转到首页")

    def parse(self, request, response):
        pykm = tools.get_param(request.url, "pykm")
        pcode = tools.get_param(request.url, "pcode")
        years = response.xpath(
            '//dt[@onclick="JournalDetail.BindYearClick(this);"]/em/text()'
        ).extract()

        for year in years:
            url = f"https://navi.cnki.net/knavi/JournalDetail/GetArticleList?year={year}&issue=S1&pykm={pykm}&&pageIdx=0&pcode={pcode}"
            yield feapder.Request(
                url, priority=1, callback=self.parse_detail, task_id=request.task_id
            )

        yield self.update_task_batch(request.task_id, 1)

    def parse_detail(self, request, response):
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
