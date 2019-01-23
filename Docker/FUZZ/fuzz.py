from nodeos import *
from monitor import *
from mutator  import *
import os
import time
import string
import sys
import json
import random

from threading import Thread, Event
stop_it = Event()

class Fuzzer:
    def __init__ (self) :
        pass

    def run_node(self,mod):
        self.classNode = Nodeos(mod)
        self.classNode.runNodeos()
        self._pid = self.classNode.getChildPid()
        print "[!] Nodeos pid : %d " % self._pid

    def setup(self,mod):
        mutator = Mutator("hello")
        sName = mutator.getSeedName()
        dir_ = "/SEED/%s/%s.abi" %(sName,sName)
        if os.path.exists(dir_) is False:
            return
        classMonitor = Monitor(sName,"/CORE/")
        i=0
        while True:
            print "[!] Trying.... contract : %s " % sName 
            #mutator.dumFuzz()
            #result=self.runTestcase(mutator,mod,sName,classMonitor)
            #mutator.dataMutator()
            #result=self.runTestcase(mutator,mod,sName,classMonitor)
            #mutator.radamsaMutator()
            mutator.apiFuzz()
            result=self.runTestcase(mutator,mod,sName,classMonitor)
            if result == "error": 
                return

            i = i +1
            if result == True or i % 1000 == 0 :
                self.classNode.pskill()
                break
        return
    def runTestcase(self,mutator,mod,sName,classMonitor):
            randomName = ''.join(random.choice(string.ascii_lowercase) for _ in range(6))
            classCleos = Cleos(mod, sName,wallet_name=randomName)
            pub_key = classCleos.createWallet()
            account = classCleos.createAccount(pub_key)
            self.account = account
            classCleos.setContract(account)
            abiPath = mutator.getAbiPath()
            method,argu = self.setAbiArgu(abiPath)
            print method, argu
            if method ==0 and argu ==0: 
                del classCleos
                return "error"
            classCleos.pushTransaction(account, method,argu)
            result = classMonitor.crashMonitor(self._pid)
            return result

    def debug(self,mod , testContract="./hello"):
        randomName = ''.join(random.choice(string.ascii_lowercase) for _ in range(6))
        classCleos = Cleos(mod,testContract, wallet_name=randomName)
        ## debugging mode refer to TEST_SEED
        classMonitor = Monitor(testContract,"/CORE/")
        pub_key = classCleos.createWallet()
        account = classCleos.createAccount(pub_key)
        classCleos.setContract(account)
        self.account = account
        method, argu = self.setAbiArgu("/SEED/%s/%s.abi" %(testContract, testContract))

        print "[+] method: %s , argu: %s " %(method, "".join(argu))
        #classCleos.pushTransaction(account, "hi","[\"test\"]")
        import time
        time.sleep(1)
        classCleos.pushTransaction(account, method,argu)
        result = classMonitor.crashMonitor(self._pid)
        time.sleep(5)
        import sys
        sys.exit()

    def setAbiArgu(self,seedAbi):
        method  =""
        arguNum =""
        if os.path.exists(seedAbi):
            with open(seedAbi,"r") as f:
                try:
                    data = json.load(f)
                    actionNumber = random.randrange(0,len(data["actions"]))
                    method = data["actions"][actionNumber]["name"]
                    for structsCnt in range(0,len(data["structs"])):
                        structsCtx = data["structs"][structsCnt]
                        if method == structsCtx["name"] :
                            arguNum = len(structsCtx["fields"])
                            argu = []
                            for i in range(0,arguNum):
                                if "int" in structsCtx["fields"][i]["type"]:
                                    argu.append("%d"%(random.randrange(-1,2)))
                                elif "account" in structsCtx["fields"][i]["type"]:
                                    argu.append(self.account)
                                elif "asset" in structsCtx["fields"][i]["type"]:
                                     argu.append("\"10000.0000 HEX\"")
                                elif "name" in structsCtx["fields"][i]["type"]:
                                    argu.append((self.account))
                                    # argu.append("%d"%(random.randrange(0,9999)))
                                    #argu.append("\"%s\"" % (self.account) )
                                else:
                                    argu.append(self.account )
                            retData = ",".join(argu).join("[]")
                            break;
                        else: continue;

                    return method,retData
                except:
                    print "[E] "+ seedAbi
                    return 0,0
        else:
            print "[E] ABI file is not exist" 
            return 0,0

def main():
    mod ="0"
    fuzzer = Fuzzer()
    if len(sys.argv)>=2 and sys.argv[1] == "debug":
        mod = "1"
        print "[!] Debug mod\n"
        fuzzer.run_node(mod)
        if ( len(sys.argv)>2 ) :
            print "[!]run contract : %s " % sys.argv[2]
            fuzzer.debug(mod, sys.argv[2]);
        else:
            fuzzer.debug(mod)
        sys.exit()

    while 1:
        fuzzer.run_node(mod)
        fuzzer.setup(mod)

if __name__ =="__main__":
    while 1:
        print "[!] START FUZZER THREAD."
        time.sleep(1)
        stuff_doing_thread = Thread(target=main)
        stuff_doing_thread.start()
        stuff_doing_thread.join(timeout=20)
        stop_it.set()
        import os 
        os.system("pkill -9 nodeos")
        os.system("pkill -9 keosd")
        os.wait()

