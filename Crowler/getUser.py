import requests
import json

FILE_NAME= "user.txt"

def main():
    URL = "https://eospark.com/api/contracts?type=all&order_by=invoker_num&order=DESC&page=%s&size=100&account="

    f = open(FILE_NAME,"w+")

    for i in range(1,100):
        print URL % str(i)
        res = requests.get(URL % str(i))

        jsonData= json.loads(res.text)
        for j in range(0,len(jsonData['data']['contracts'])):
            account =  jsonData['data']['contracts'][j]['account']
            f.write(account+"\n")

    f.close()
if __name__ == "__main__":
    main()
