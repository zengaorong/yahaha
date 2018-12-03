#coding=utf-8
import requests

'''
GET https://172.22.182.169/cas/login HTTP/1.1
Host: 172.22.182.169
Connection: keep-alive
Cache-Control: max-age=0
Upgrade-Insecure-Requests: 1
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36
Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8
Accept-Encoding: gzip, deflate, br
Accept-Language: zh-CN,zh;q=0.9
Cookie: remember=admin; JSESSIONID=A25721A6DB26E78189061FCDDD720776; alarmDialog_admin=ON; alarmVoice_admin=ON
'''

head={
    'Content-Type': 'application/x-www-form-urlencoded',
    'User-Agent' : 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36',
    'Connection': 'keep-alive',
    'Upgrade-Insecure-Requests': '1',
    'Accept': 'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8',
    'Cookie' : 'remember=admin; JSESSIONID=A25721A6DB26E78189061FCDDD720776; _safe_license=true; alarmDialog_admin=ON; alarmVoice_admin=ON',
    'Host' : '172.22.182.169'
}

proxies = {
    "https":"https://172.0.0.1:8088",
    "http":"http://172.0.0.1:8088",
}

url = "http://172.22.182.169:443/cas/login"
respons = requests.get(url,headers=head)
print respons.text

