# feapder 与 scrapy 分布式爬虫速度对比

测试为请求1万次百度，均为32并发1进程的情况下，计算耗时

## 运行feapder爬虫

python3 feapder_speed.py

耗时为： 4分24秒

## 运行scrapy-redis

cd test_scrapy

scrapy runspider test_scrapy/spiders/baidu.py 

运行结果：

```shell
{'downloader/request_bytes': 2298890,
 'downloader/request_count': 10000,
 'downloader/request_method_count/GET': 10000,
 'downloader/response_bytes': 280000,
 'downloader/response_count': 10000,
 'downloader/response_status_count/400': 10000,
 'elapsed_time_seconds': 262.985341,
 'finish_reason': 'shutdown',
 'finish_time': datetime.datetime(2022, 5, 18, 6, 20, 23, 738211),
 'httperror/response_ignored_count': 10000,
 'httperror/response_ignored_status_count/400': 10000,
 'log_count/DEBUG': 10314,
 'log_count/INFO': 20016,
 'log_count/WARNING': 2,
 'memusage/max': 72896512,
 'memusage/startup': 63176704,
 'response_received_count': 10000,
 'scheduler/dequeued/redis': 10000,
 'scheduler/enqueued/redis': 10000,
 'start_time': datetime.datetime(2022, 5, 18, 6, 16, 0, 752870)}
```

耗时为：262秒 = 4分22秒

## 结论

feapder与scrapy速度不相上下，主要耗时在于网络波动