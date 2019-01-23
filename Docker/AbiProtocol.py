import glob

class abiCook:
    def __init__(self, abiPath="betdicegroup/betdicegroup.abi__"):
        self.filePath = "../Docker/SEED/" + abiPath
        self.base       = 0
        self.byteSize   = 2
        tmp = glob.glob(self.filePath)
        if len(tmp) :
            fileName = tmp[0]
            with open(fileName,"rb") as f :
                dataByte = f.read()
                self.abiByte=dataByte.encode("hex")
            print fileName

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
            tmpDic["type"] = t3Value
            tmpDic["name"] = t3Value
            tmpList.append(tmpDic)
        fileFormat["tables"]=tmpList
        #print self.abiByte[self.base::]
        return fileFormat

    def data2json(self, data):
        import json
        return json.dumps(data)


cook = abiCook("/eoscryptojps/eoscryptojps.abi__")
dic = cook.cook()
print cook.data2json(dic)

