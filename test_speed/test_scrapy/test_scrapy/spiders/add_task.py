# -*- coding: utf-8 -*-
"""
Created on 2022/5/17 2:32 下午
---------
@summary:
---------
@author: Boris
@email: boris_liu@foxmail.com
"""

import redis

db = redis.Redis()

for i in range(10000):
    url = f"https://www.baidu.com?i={i}"
    print("put url " + url)
    db.lpush("baidu:start_urls", url)
