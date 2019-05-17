#!/bin/python

import subprocess

def parse(data):
    if data.find("net bandwidth") > 0 :
        data = data[data.find("net bandwidth")::]
        band = data[0:data.find("limit")]
        band = band[band.find("used:")::]
        band = band[5:band.find("\n")-1]
        band = band.strip()
    if data.find("cpu bandwidth") > 0 :
        data = data[data.find("cpu bandwidth")::]
        cpu  = data[0:data.find("limit")]
        cpu  = cpu[cpu.find("used:")::]
        cpu  = cpu[5:cpu.find("\n")-1]
        cpu  = cpu.strip() 
    return band, cpu

def check(account):
    CMD = "cleos get account %s" % account  
    data = subprocess.check_output(CMD, shell=True)
    band, cpu = parse(data)
    print account + " -> " + band + " "+ cpu

def trans(CMD):
    try :
        data = subprocess.check_output(CMD, shell=True,stderr=None) 
        if "client1" in data :
            print "warning"
            return 1
        else:
            return 0
    except:
        return 0

CNT = 0
for i in range(0,1000):
    import time
    time.sleep(2)

    CMD = "cleos push action client1 canceldtrx '[]' -p client2"
    if trans(CMD) == 1 :
        CNT = CNT + 1 
        print CNT
        check("client1")
        check("client2")
'''
    time.sleep(2)
    CMD = "cleos push action client1 createdtrx '[]' -p client2"
    if trans(CMD) == 1 : 
        check("client1")
        check("client2")
'''
