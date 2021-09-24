# -*- coding: utf-8 -*-
"""
Created on 2021-08-29 22:37:43
---------
@summary:
---------
@author: Boris
"""

from feapder import Item


class MaoyanFilmDetailTaskItem(Item):
    """
    This class was generated by feapder.
    command: feapder create -i maoyan_film_detail_task.
    """

    def __init__(self, *args, **kwargs):
        # self.id = None
        self.movie_id = None  # 电影id
        self.city_id = None  # 城市id
        self.brand_id = None  # 品牌 -1表示全部
        self.show_date = None  # 日期
        # self.state = 0  # 采集状态 -1失败 0 待抓取 1抓取成功 2 正在抓取