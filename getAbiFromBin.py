import requests
import json
URL = "http://peer1.eoshuobipool.com:8181 "
ACCOUNT="eos3dio12345"


PARAM={"code":ACCOUNT,"action":"","binargs":""}
res = requests.post(URL,json.dumps(PARAM))

if res.status_code==200:
    json = json.loads(res.text)




