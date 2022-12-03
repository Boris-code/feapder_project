# -*- coding: utf-8 -*-
"""
Created on 2021-08-29 14:42:44
---------
@summary:
---------
@author: Boris
"""

import feapder
from items.maoyan_city_item import MaoyanCityItem
from items.maoyan_hot_movie_list_task_item import MaoyanHotMovieListTaskItem


class CitySpider(feapder.AirSpider):
    def start_requests(self):
        yield feapder.Request("https://maoyan.com/", render=True)

    def parse(self, request, response):
        citys = response.xpath('//a[@class="js-city-name"]')
        for city in citys:
            city_name = city.xpath("./text()").extract_first()
            city_id = city.xpath("./@data-ci").extract_first()

            item = MaoyanCityItem()
            item.city_id = city_id
            item.city_name = city_name
            yield item

            # 生成热映电影列表任务
            list_task_item = MaoyanHotMovieListTaskItem()
            list_task_item.city_id = city_id
            yield list_task_item


if __name__ == "__main__":
    CitySpider().start()
