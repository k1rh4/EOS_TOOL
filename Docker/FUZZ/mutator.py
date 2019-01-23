import subprocess
import os
import shutil
import random
import struct
from configParsor import ConfigParsor
from wastCook import *

class Mutator :
    def __init__ (self,seedPath="") :
        with open("/FUZZ/config.ini","r") as f :
            datalist = f.readlines()
            seedDir = ConfigParsor("CONTRACT",datalist)
            seedList =os.listdir(seedDir)
            self.sName = seedList[random.randrange(0,len(seedList))]

            if seedPath == "":pass
            else : self.sName = seedPath

            self.seedWast = seedDir + self.sName + "/" + self.sName + ".wast"
            self.seedAbi = seedDir + self.sName + "/" + self.sName + ".abi"

            self.testcase_dir = ConfigParsor("TESTCASE", datalist) +self.sName +"/"
            self.testcase = self.testcase_dir + self.sName + ".wast"
            self.radamsa = ConfigParsor("RADAMSA", datalist)

        if os.path.isdir(self.testcase_dir) !=True:
            os.mkdir(self.testcase_dir)
        shutil.copyfile(self.seedAbi,self.testcase_dir+self.sName+".abi")

    def getAbiPath(self):
        return self.seedAbi

    def getWastPath(self):
        return self.seedWast

    def getSeedName(self):
        return self.sName

    def dataMutator(self):
        w= wastCook(self.seedWast)
        lineSelector = random.randrange(0,len(w.dict["data"].keys()))
        cnt = 0;
        for line in w.dict["data"].keys():
            if lineSelector == cnt :
                fromStr = list(w.dict["data"][line])
                for i in range(0,len(fromStr)-3):
                     fromStr[i] = chr(random.randrange(0x1,0xff))
                w.replaceData(line,''.join(fromStr))
            cnt = cnt + 1
        w.saveFile(self.testcase)

    def radamsaMutator(self):
        #cmd is must collected when base fuzzer is changed
        cmd = "cat %s | %s -o %s" % (self.seedWast,self.radamsa,self.testcase)
        testcase_proc = subprocess.Popen(cmd,shell=True)
        testcase_proc.wait()

    def testMutator(self): #insertfunction, replace get_local index,
        w = wastCook(self.seedWast)
        string = self.stringMutation
        w.insertData(string)
        a = w.dict["call"].keys()
        random.shuffle(a)
        for funcName in a:
            if random.randint(0,5)%5 == 0 :
                index = 0
                typeList =  w.getApiParam(funcName)   #typeList = [i32,i32,i32,...]
                if typeList == None:
                    w.insertFunc(funcName,590)
                    continue
                arguList =  w.getCallArgu(funcName)   #arguList[0] = (i32.load (get_local $1) (i32.const 123))
                for paramType in typeList:
                    if paramType != "i32":
                        continue
                    constValue = "%s.const" % (paramType)
                    replaceValue = arguList[index].replace("get_local",constValue)
                    replaceValue = w.setCallValue(funcName,paramType,replaceValue)
                    w.setCallArgu(funcName,arguList[index],replaceValue)
                    index +=1
                w.insertFunc(funcName,590)
            else : pass
        w.saveFile(self.testcase)

    def stringMutation(self):
        return  "a" * 10000

    def intMutation(self):
        x = [-2147483648,2147483647,-9223372036854775808,9223372036854775807]
        return x[random.randint(0,4)]

    def floatMutation(self):
        x = [340282346638528859811704183484516925440.000000, -340282346638528859811704183484516925439.000000]
        return x[random.randint(0,2)]


    def dumFuzz(self):
        testcaseFile = open(self.testcase,"w")
        with open(self.seedWast,"r") as f:
            seedData = f.read()
            seedSize = len(seedData)
            for i in range(0,1):
                randomNumber = random.randrange(0,(seedSize))
                x = random.randint(0,0xffffffff)
                seedData = seedData[0:randomNumber] + struct.pack("<L",x) + seedData[randomNumber+4::]
            testcaseFile.write(seedData)
        testcaseFile.close()

    def apiFuzz(self):
        w = wastCook(self.seedWast)
        import apiCook
        a = apiCook.apiCook()
        apiName = a.randomSelection()

        randStr = ""
        randValue = random.randint(0,2)
        if randValue % 2 == 0 :
            for i in range(40):
                randStr += chr(random.randrange(0x00,0xFF))
        else:
            randStr = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"

        print w.genAPI(apiName,randStr)

        randValue = random.randint(0,12)
        if randValue % 5 == 0 :
            print "[D] MUTATION.py 1>" 
            callStr =  w.genCall(apiName)
        else:
            randValue = random.randint(0,12)
            if randValue % 3 != 0 : 
                print "[D] MUTATION.py 2>" 
                randValue = random.randint(-2,3)
                callStr = w.genCall(apiName, randValue)
            else :
                print "[D] MUTATION.py 3>" 
                randValue = 0xefffffffd
                callStr = w.genCall(apiName,randValue)

        print callStr
        line = w.GetInsFuncLine("hello")
        print line 
        if type(line) == int:
            w.setAPI(line,callStr)
        w.saveFile(self.testcase)

def test():
    print "[D] + TEST"
    m = Mutator()
    m.apiFuzz()
   
#test()

