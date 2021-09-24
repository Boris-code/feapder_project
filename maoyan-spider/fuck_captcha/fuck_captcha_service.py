# -*- coding: utf-8 -*-
"""
Created on 2021-08-29 17:44:39
---------
@summary:
---------
@author: Boris
"""

import os
import random

from selenium.webdriver import ActionChains

import setting
from feapder.db.redisdb import RedisDB
from feapder.utils import tools
from feapder.utils.log import log
from feapder.utils.webdriver import WebDriver
from setting import CAPTCHA_PATH
from utils import track
from utils.slider import get_gap_center_point


def drag_and_drop(browser, slider, tracks):
    ActionChains(browser).click_and_hold(slider).perform()
    for x in tracks:
        ActionChains(browser).move_by_offset(x, random.random()).perform()

    ActionChains(browser).pause(0.5).release().perform()


def run():
    while True:
        redisdb = RedisDB()
        try:
            block_ip = redisdb.sget(setting.CAPTCHA_BLOCK_IP_REDIS_KEY)
            if not block_ip:
                log.debug("暂无被封ip")
            for ip in block_ip:
                task = redisdb.hget(setting.CAPTCHA_REDIS_KEY, ip, is_pop=True)
                task = eval(task)
                ua = task.get("ua")
                url = task.get("url")

                with WebDriver(proxy=ip, user_agent=ua) as browser:
                    log.info("解封ip {}, url {}".format(ip, url))
                    browser.get(url)
                    browser.implicitly_wait(5)
                    frame = browser.find_element_by_id("tcaptcha_iframe")
                    browser.switch_to.frame(frame)
                    for i in range(20):
                        for i in range(1000):
                            bg_url = browser.find_element_by_id(
                                "slideBg"
                            ).get_attribute("src")
                            slide_url = browser.find_element_by_id(
                                "slideBlock"
                            ).get_attribute("src")
                            if bg_url and slide_url:
                                break
                        else:
                            log.error("滑块加载失败")
                            return

                        bg_image = os.path.join(
                            CAPTCHA_PATH, "bg_" + tools.get_md5(bg_url) + ".png"
                        )
                        slide_image = os.path.join(
                            CAPTCHA_PATH, "slider_" + tools.get_md5(slide_url) + ".png"
                        )
                        if tools.download_file(
                            bg_url, bg_image
                        ) and tools.download_file(slide_url, slide_image):
                            # 识别缺口
                            x, y = get_gap_center_point(
                                bg_image, slide_image, show=False
                            )
                            # 缩放
                            x = x * 340 / 680
                            x = x - 27.5 - 30
                            # 滑动
                            slide_btn = browser.find_element_by_id(
                                "tcaptcha_drag_thumb"
                            )
                            tracks = track.get_tracks(x)
                            drag_and_drop(browser, slide_btn, tracks)
                            # 删除图片
                            os.remove(bg_image)
                            os.remove(slide_image)

                            tools.delay_time(2)
                            if "verify.maoyan.com" not in browser.current_url:
                                log.info("解封成功")
                                break
                            else:
                                try:
                                    browser.find_element_by_css_selector(
                                        ".tc-action-icon"
                                    ).click()
                                except:
                                    pass
            tools.delay_time(3)
        except Exception as e:
            log.error(e)


if __name__ == "__main__":
    run()
