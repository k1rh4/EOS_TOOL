class apiCook:
    apiDic = {}
    def __init__(self):
        import os
        if not os.path.exists("/FUZZ/apiList.txt") :
            return -1

        with open("/FUZZ/apiList.txt","r") as f :
            for line in f.readlines():
                pureData    = line.strip().strip("(").strip(")")
                apiName     = pureData[0:pureData.find(",")].strip()
                others      = pureData[pureData.find(",")+1::].strip()
                retType     = others.split("(")[0].strip()
                arguList    = others.split("(")[1].split(")")[0].strip().split(",")

                retType = self.typeChange(retType)
                typeArgu = []
                for argu in arguList : 
                    typeArgu.append(self.typeChange(argu.strip()))
                self.apiDic[apiName]={"retType":retType,"argu":typeArgu}
            #print len(self.apiDic.keys())

    def typeChange(self , typeStr):
        types = ["int","float","double","int64_t","int32_t"]
        if typeStr == types[0] : return "i32"
        elif typeStr == types[1] : return "f32"
        elif typeStr == types[2] : return "f64"
        elif typeStr == types[3] : return "i64"
        elif typeStr == types[4] : return "i32"
        else : return ""

    def genCall(self,apiName, extraValue="" ):
        if apiName and (apiName not in self.apiDic.keys()):
            print "[E] API KEY = [%s] IS NOT EXIST" % apiName 
            return 0

        #self.apiDic[apiName]
        #{'retType': 'i32', 'argu': ['i64', 'i64', 'i64', 'i64', 'i32', 'i32']}

        callStr     = ""
        arguStr     = ""

        for argu in self.apiDic[apiName]["argu"]:
            if argu == "i64":
                arguStr += "(i64.load (i32.const 10240))"

            elif argu == "i32":
                if extraValue :
                    arguStr += "(i32.const %s)" % extraValue
                else :
                    arguStr += "(i32.const 10240)"

            elif argu =="f32":
                arguStr += "(f32.load (i32.const 10240))"

            elif argu =="f64":
                arguStr += "(f64.load (i32.const 10240))"

            else:
                print "[E] OOPS? genCall Argument type has something wrong "
                return ""
        #(drop (call $db_previous_i64 (i32.const -1)(i32.const -1)))
        if self.apiDic[apiName]["retType"]:
            #retStr = "(result %s)" % (self.apiDic[apiName]["retType"])
            callStr = "(drop (call $%s %s))\n" % ( apiName, arguStr )
        else:
            callStr ="(call $%s %s)\n" % ( apiName, arguStr )

        return callStr


##################################################################
# Select random API 
##################################################################
    def randomSelection(self):
        import random
        return random.choice(list(self.apiDic.keys()))

##################################################################
# Generate Import table string 
#################################################################
    def genImportApi(self,key=""):
        importApi   = ""
        if key and (key not in self.apiDic.keys()):
            print "[E] API KEY = [%s] IS NOT EXIST" % key 
            return 0
        
        if self.apiDic[key]["retType"] : 
            retType="(result %s)" % self.apiDic[key]["retType"]
        else : retType=""
            
        if len(self.apiDic[key]["argu"])>2:
            template = "(import \"env\" \"%s\" (func $%s (param %s) %s))"
            importApi = template % (key,key, " ".join(self.apiDic[key]["argu"]),retType)

        else:
            template = "(import \"env\" \"%s\" (func $%s %s ))"
            importApi = template % (key,key,retType)
        return importApi
'''
import sys
context = apiCook()
keyData =context.randomSelection()
if len(sys.argv) > 1:
    keyData = sys.argv[1]
else:
    keyData = "db_store_i64"

print context.genCall(keyData,"8")
#print context.genImportApi(keyData)
#print context.genCallApi(keyData,"(i32.load)")
'''
