import subprocess
import psutil
import time
import os
import random
import string
from configParsor import ConfigParsor
class Nodeos :
    def __init__ (self,mod):
        with open("/FUZZ/config.ini","r") as f :
            datalist = f.readlines()
            self._NODEOS = ConfigParsor("NODEOS",datalist)
            self._mod = mod


    def runNodeos(self):
        cmdline = [self._NODEOS , "-e", "-p" , "eosio","--plugin" ,"eosio::chain_api_plugin" , "--plugin" ,"eosio::history_api_plugin","--verbose-http-errors" ,"--contracts-console","--delete-all-blocks","--hard-replay-blockchain", "--access-control-allow-origin=*","--plugin","eosio::producer_plugin","--plugin","eosio::http_plugin"]
        print " ".join(cmdline)
        if self._mod == "1":
            self._proc = subprocess.Popen(cmdline)
        else :
            self._proc = subprocess.Popen(cmdline,stdout=subprocess.PIPE,stderr=subprocess.PIPE) #need stdout, stderr redirection
        time.sleep(6)

    def getChildPid(self):
        pid = self._proc.pid
        return pid

    def pskill(self):
        self._proc.terminate()
        self._proc.wait()

class Cleos():
    def __init__(self,mod,_sName, wallet_name = "".join([random.choice(string.ascii_lowercase) for _ in range(6)])):
        with open("/FUZZ/config.ini","r") as f :
            dataList = f.readlines()
            self._cleos = ConfigParsor("CLEOS",dataList)
            self._sName = _sName
            self._contract = ConfigParsor("CONTRACT", dataList) + self._sName
            self._testcase = ConfigParsor("TESTCASE",dataList) + self._sName
            self._walletName = wallet_name
            if mod=="1":
                self._testcase = ConfigParsor("REPLAY",dataList) + self._sName

    def createWallet(self):
#        cmdline = [self._cleos,"wallet","create","-n",self._walletName,"--to-console"]
        cmdline = [self._cleos,"wallet","create","-n",self._walletName]
        wallet_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
        for i in range(0,4):
            stdout = wallet_process.stdout.readline()

        wallet_pw   = (str(stdout[1:-2]))

        wallet_process.wait()
        #print "[!] CREATE WALLET"
        eosio_key = "5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
        #cmdline = [self._cleos,"create","key","--to-console"]
        cmdline = [self._cleos,"create","key"]
        key_process = subprocess.Popen(cmdline ,stdout=subprocess.PIPE)
        key_process.wait()
        priv_key = str(key_process.stdout.readline()[13:-1])
        pub_key = str(key_process.stdout.readline()[12:-1])
        key_process.wait()
        #print "[!] CREATE KEY"

        #self.lock_check(priv_key,wallet_pw)
        cmdline = [self._cleos,"wallet","import","-n",self._walletName,"--private-key",priv_key]
        import_process = subprocess.Popen(cmdline)
        import_process.wait()

        cmdline2 = [self._cleos,"wallet","import","-n",self._walletName,"--private-key",eosio_key]
        import_process2 = subprocess.Popen(cmdline2)
        import_process2.wait()
        #print "[!] IMPORT KEY"
        return pub_key

    def createAccount(self, pub_key):
        account_name = self._walletName
        cmdline = [self._cleos,"create","account","eosio",account_name,pub_key]
        account_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
        account_process.wait()
        #print "[!] CREATE ACCOUNT " + account_name
        return account_name

    def setContract(self, account_name):
#        wastFile = self._testcase+"/"+self._sName+".wast"
##        wasmFile = self._testcase+"/"+self._sName+".wasm"
#        cmd = "/EOS/eosio-wast2wasm %s %s -n" % (wastFile,wasmFile)
#        os.system(cmd)
        cmdline = [self._cleos ,"set","contract",account_name,self._testcase]
        #time.sleep(0.1)
        set_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE,stderr=subprocess.PIPE)
        set_process.wait()
        #print "[!] SET CONTRACT"

    def pushTransaction(self, account_name , method, argument):
        cmdline = [self._cleos,"push","action",account_name,method,argument,"-p",account_name]
        push_process = subprocess.Popen(cmdline)
        push_process.wait()
        #print "[!] PUSH CONTRACT"

    def lock_check(self,priv_key,passwd):
        cmdline = [self._cleos,"wallet","import","-n",self._walletName,"--private-key",priv_key]
        lock_process = subprocess.Popen(cmdline, stderr=subprocess.PIPE)
        lock_process.wait()
        stdout = str(lock_process.stderr.readline())

        if "Error 3120003: Locked wallet" in stdout :
            cmdline = [self._cleos,"wallet","unlock","-n",self._walletName,"--password",passwd]
            unlock_process = subprocess.Popen(cmdline, stdin=subprocess.PIPE)
            unlock_process.stdin.write(passwd)
            unlock_process.stdin.flush()
            unlock_process.wait()
