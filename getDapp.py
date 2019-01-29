import requests
import json
import base64
import os

import sys
if len(sys.argv)>1:
    USER_NAME=sys.argv[1]
else:
    print "[!] USAGE : python getDapp.py [accountName]"
    sys.exit(0);

DISAS = "./TOOLS/wasm-dis %s -o %s"
BPLIST  = "./INFO/bpList"
def main(accountName, IP="127.0.0.1:8888"):
    URL = "%s/v1/chain/get_raw_code_and_abi"%(IP)
    data={"account_name":USER_NAME}
    print URL +"!!->"+ repr(data)

    res = requests.post(URL, data=json.dumps(data))

    if res.status_code == 200:
        resData = json.loads(res.text)
        print resData
        if(len(resData["wasm"]) > 0 ):
            if not os.path.exists("./CONTRACT/"+accountName):
                os.mkdir("./CONTRACT/"+accountName)
                decodeWasm = base64.b64decode(resData["wasm"])

                PATH_FILE = "./CONTRACT/"+accountName + "/" + accountName
                with open(PATH_FILE+".wasm","w+") as f : f.write(decodeWasm)
                print "[!] Save wasm file [%s.wasm] " % accountName
                os.system(DISAS %(PATH_FILE+".wasm", PATH_FILE+".wast"))
                print "[!] Save wast file [%s.wast] " % accountName

                decodeAbi = base64.b64decode(resData['abi'])
                #print decodeWast
                with open(PATH_FILE+".abi.down","w+") as f: f.write(decodeAbi)
                print "[!] Save wast file [%s.abi] " % accountName

if __name__ =="__main__":
    with open(BPLIST,"r") as bplists :
        for bp in bplists.readlines():
            if len(bp) < 10 : 
                break;
            main(USER_NAME,bp.strip());

