import feapder


class TestSession(feapder.AirSpider):
    __custom_setting__ = dict(
        USE_SESSION=True,
    )

    def start_requests(self):
        url = "http://www.chaojiying.com/user/login/"
        yield feapder.Request(url)

    def parse(self, request, response):
        url = "http://www.chaojiying.com/include/code/code.php?u=1"
        yield feapder.Request(url, callback=self.parse_code)

    def parse_code(self, request, response):
        with open("code.jpg", "wb") as f:
            f.write(response.content)

        code = input("查看当前目录下的code.jpg, 输入验证码：")

        url = "http://www.chaojiying.com/user/login/"
        data = {"user": "123", "pass": "123", "imgtxt": code, "act": "1"}
        yield feapder.Request(url, data=data, callback=self.parse_login)

    def parse_login(self, request, response):
        print(response.xpath("//font[@color='red']/text()").extract_first())


if __name__ == "__main__":
    # session 生效为 对不起,无此用户名(123)
    # ssion 不生效为 验证失败
    TestSession(thread_count=1).start()
