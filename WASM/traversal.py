import glob
import os 
import subprocess

def main():
    DIRECTORY = "../CONTRACT/*"
    files = glob.glob(DIRECTORY)
    i = 0
    while files[i]:
        dapp = files[i]
        appName =  dapp.split("/")[-1]
        print "[+] Trying..(%d) DAPP [%s] " %(i,appName)
        #cmd = "python ./main.py %s/%s.%s" %(dapp,appName, "wasm")

        #"../CONTRACT/eosmagiecube/eosmagiecube.wasm.decompile" 
        cmd = "python ./wasmSymbolic.py %s/%s.wasm.decompile %s/%s.abi" %(dapp,appName, dapp,appName)
        print cmd 
        proc = subprocess.call(cmd, shell=True)
        i+=1
if __name__ =="__main__":
    main()
