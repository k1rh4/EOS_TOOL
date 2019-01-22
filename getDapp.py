import requests
import json
import base64
import os
DISAS = "./wasm-dis %s -o %s"

def main(accountName, IP="127.0.0.1:8888"):
    URL = "%s/v1/chain/get_raw_code_and_abi"%(IP)
    data={"account_name":"eos3dio12345"}
    print URL +"!!->"+ repr(data)

    res = requests.post(URL, data=json.dumps(data))

    if res.status_code == 200:
        resData = json.loads(res.text)
        if(len(resData["wasm"]) > 0 ):
            if not os.path.exists(accountName):
                os.mkdir(accountName)
                decodeWasm = base64.b64decode(resData["wasm"])

                PATH_FILE = accountName + "/" + accountName
                with open(PATH_FILE+".wasm","w+") as f : f.write(decodeWasm)
                print "[!] Save wasm file [%s.wasm] " % accountName
                os.system(DISAS %(PATH_FILE+".wasm", PATH_FILE+".wast"))
                print "[!] Save wast file [%s.wast] " % accountName

                decodeAbi = base64.b64decode(resData['abi'])
                #print decodeWast
                with open(PATH_FILE+".abi","w+") as f: f.write(decodeAbi)
                print "[!] Save wast file [%s.abi] " % accountName

if __name__ =="__main__":
    USER_NAME ="eos3dio12345"
    with open("bpList","r") as bplists :
        for bp in bplists.readlines():
            if len(bp) < 10 : 
                break;
            main(USER_NAME,bp.strip());

