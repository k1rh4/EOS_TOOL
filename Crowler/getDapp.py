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

DISAS = "/Users/k1rh4/GIT/EOS_TOOL/TOOLS/wasm-dis %s -o %s"
BPLIST  = "/Users/k1rh4/GIT/EOS_TOOL/INFO/bpList"
CLEOS   = "/Users/k1rh4/GIT/EOS_TOOL/TOOLS/cleos"
CONTRACT_DIR = "../CONTRACT/" 
def main(accountName, IP="127.0.0.1:8888"):
    URL = "%s/v1/chain/get_raw_code_and_abi"%(IP)
    data={"account_name":USER_NAME}
    print URL +"!!->"+ repr(data)
    
    try :
        res = requests.post(URL, data=json.dumps(data))
    except :
        raw_input("DOWN STOP>")
        res = 0

    if res.status_code == 200:
        resData = json.loads(res.text)
        #print resData
        if(len(resData["wasm"]) > 0 ):
            if not os.path.exists(CONTRACT_DIR+accountName):
                os.mkdir(CONTRACT_DIR+accountName)
                decodeWasm = base64.b64decode(resData["wasm"])

                PATH = CONTRACT_DIR+accountName + "/"
                PATH_FILE = PATH + "/" + accountName
                with open(PATH_FILE+".wasm","w+") as f : f.write(decodeWasm)
                print "[!] Save wasm file [%s.wasm] " % accountName
                os.system(DISAS %(PATH_FILE+".wasm", PATH_FILE+".wast"))
                print "[!] Save wast file [%s.wast] " % accountName

                decodeAbi = base64.b64decode(resData['abi'])
                #print decodeWast
                with open(PATH_FILE+".abi.down","w+") as f: f.write(decodeAbi)
                print "[!] Save wast file [%s.abi] " % accountName

                os.chdir(PATH)
                cmd = "%s -u %s get code %s -a %s.abi" %(CLEOS, IP, USER_NAME, USER_NAME)
                os.popen(cmd)


if __name__ =="__main__":
    bpURL  = ""
    with open(BPLIST,"r") as bplists :
        for bp in bplists.readlines():
            if len(bp) < 10 : 
                break;
            bpURL = bp.strip()
    
    main(USER_NAME,bpURL);

