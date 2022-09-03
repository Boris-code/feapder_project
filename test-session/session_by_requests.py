import requests

session = requests.session()
url = "http://www.chaojiying.com/user/login/"
session.get(url)


url = "http://www.chaojiying.com/include/code/code.php?u=1"
resp = session.get(url)
with open("code.jpg", "wb") as f:
    f.write(resp.content)

code = input("请输入验证码：")


url = "http://www.chaojiying.com/user/login/"
data = {
    "user": "123",
    "pass": "123",
    "imgtxt": code,
    "act": "1"
}
response = session.post(url,  data=data)

print(response.text)
print(response)