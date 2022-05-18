import scrapy
from scrapy_redis.spiders import RedisSpider


class BingSpider(RedisSpider):
    name = "baidu"
    allowed_domains = ["baidu.com"]
    start_urls = ["http://baidu.com/"]

    def make_request_from_data(self, data):
        data = data.decode()
        yield scrapy.Request(data, dont_filter=True)

    def parse(self, response):
        print(response)
