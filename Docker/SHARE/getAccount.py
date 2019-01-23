import requests
import json

URL="https://api-kylin.eosasia.one"
"https://api-kylin.eoslaomao.com"
URL="https://jungle.eoscanada.com"
URL="http://127.0.0.1:8888"
URL = URL + "/v1/chain/get_account"
payload={
        'chain_id':'cf057bbfb72640471fd910bcb67639c22df9f92470936cddc1ade0e2f2e7dc4f',
        'account_name':'hrzsrr'
        }
print payload

res = requests.post(URL,data=json.dumps(payload))
print res.json
if res.status_code != 200 :
    print "CONNECTION ERROR [ %d ] " % res.status_code
    exit(0)


jsonData = json.loads(res.text)

result = jsonData

print json.dumps(result,indent=2)
