import glob
import os 

class abiCook:
    def __init__(self, abiPath="betdicegroup/"):
        self.filePath = abiPath
        self.base       = 0
        self.byteSize   = 2
        fileName = abiPath +"/"+ os.path.basename(abiPath) + ".abi.down"
        with open(fileName,"rb") as f :
            dataByte = f.read()
            self.abiByte=dataByte.encode("hex")
        if self.abiByte[2:4]=="65":
            print "[!] Convert abi.bin -> abi.json "
        else:
            "[-] This is not bin format "


    def carving(self):
        strBase     = self.base + self.byteSize
        offset      = int( self.abiByte[ self.base : strBase ], 16 )
        self.base   = strBase + (offset * self.byteSize )
        name        = self.abiByte[ strBase : self.base ].decode("hex")
        return name

    def getCount(self,dumyStr="HeaderName"):
        cnt         = int(self.abiByte[self.base:self.base+self.byteSize],16)
        self.base   = self.base + self.byteSize
        return cnt

    def getDic(self, v1=[]):
        tmpDic  = {}
        for key in v1: tmpDic[key] = self.carving()
        return tmpDic

    def cook(self):
        fileFormat = {"version":"","structs":[],"types":[],"actions":[],"tables":[],"error_messages":[],"abi_extensions":[],"variants":[]}
        fileFormat["version"] = self.carving()

        ## set types elements
        tmpList = []
        for i in range(self.getCount("types")):
            tmpList.append(self.getDic(["new_type_name","type"]))
        fileFormat["types"] = tmpList

        #set structure elements
        tmpList = []
        for i in range(self.getCount("structure")):
            tmpDic = self.getDic(["name","base"])
            tmpList2    = []
            for j in range(self.getCount("fields")):
                tmpList2.append(self.getDic(["name","type"]))
            tmpDic["fields"] = tmpList2
            tmpList.append(tmpDic)
        fileFormat["structs"] = tmpList
        #print fileFormat

        #set action elements
        tmpList = []
        for i in range(self.getCount("action")):
            print "[A] " + self.abiByte[self.base:self.base+16] + "->" ,
            self.base = self.base + 16
            cnt = self.getCount("Action Value")
            cnt = (cnt+1) * self.byteSize
            actionName = self.abiByte[self.base : self.base+cnt].decode("hex").strip("\x00")
            actionName = actionName.replace("_","")
            tmpDic={'name':actionName,'type':actionName,'ricardian_contract':''}
            tmpList.append(tmpDic)
            print actionName + " : " + self.abiByte[self.base : self.base+cnt]

            self.base = self.base+cnt
        fileFormat["actions"]=tmpList


        #set Table elements 
        iteratorNum = self.getCount("Table")
        tmpList = []
        for i in range(0,iteratorNum):
            tmpDic = {}
            print "[TABLE_H?] "+ self.abiByte[self.base:self.base+16]
            self.base = self.base + 16
            tableName = self.carving()
            #print "[T]"+tableName
            tmpDic["index_type"] = tableName

            listCnt = self.getCount("list")
            for i2 in range(listCnt):
                t2Value = self.carving()
                #print "[T2]" + t2Value
                tmpDic["key_names"] = [t2Value]
 
            listCnt = self.getCount("list")
            for i2 in range(listCnt):
                t2Value = self.carving()
                #print "[T2]" + t2Value
                tmpDic["key_types"]=[t2Value]

            t3Value = self.carving()
            #print "[T3]" + t3Value
            t3Value = t3Value.replace("_","")
            tmpDic["type"] = t3Value
            tmpDic["name"] = t3Value
            tmpList.append(tmpDic)
        fileFormat["tables"]=tmpList
        #print self.abiByte[self.base::]
        return fileFormat

    def data2json(self, data):
        import json
        return json.dumps(data, indent=2)

    def save(self, SAVE_PATH, data):
        if not SAVE_PATH :
            print "[!] SAVE PATH DOSEN'T EXIST"
            return 0

        with open(SAVE_PATH,"w") as f:
            f.write(data)
            print "[!] SAVE SUCCESS"
        return 1

import sys
if len(sys.argv) > 1 :
    CONTRACT_PATH = "./CONTRACT/" + sys.argv[1] 
    cook = abiCook(CONTRACT_PATH)
    dic = cook.cook()
    jsonData =  cook.data2json(dic)
    cook.save(CONTRACT_PATH+"/%s.abi" %(sys.argv[1]), jsonData)

else:
    print "[!] USAGE : python abiCook.py [contract path]"
