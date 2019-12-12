import re
import os 
import sys
import json 

PATH=""
resFunc = []
class wasmSymbolic:
    __callStack = []
    __dic = {}
    __elem = []
    __WASM_FILE = "" 
    def __init__( self, decompiledFile , abiFile=""):
        if not os.path.exists(decompiledFile) and not os.path.exists(abiFile) : sys.exit()
        self.__WASM_FILE = decompiledFile 
        actionFunctions = []
        ### GET ACTION FUNCTIONS ###
        try :
            with open(abiFile,"r") as f :
                abiData =  json.loads(f.read())
                cnt = 0 
                while len(abiData["actions"]) > cnt :
                    actions = abiData["actions"][cnt]
                    actionFunctions.append(actions["name"])
                    cnt += 1
        except :
            print "[D] There is no Abi File check this out "
            #raw_input(">")
            return -1

        ### READ DECOMPILED FILES ###
        with open(decompiledFile ,"r") as f:
            fileData = f.readlines()
        print "[+] OPEN FILE-> %s" % decompiledFile
        i = 0 
        ending = []
        while i < len(fileData):
            if "(export " in fileData[i]:
                for actionFunc in actionFunctions : 
                    if actionFunc in fileData[i]:
                        self.__elem.extend(re.findall("\$[0-9]+",fileData[i]))
            if "(elem" in fileData[i] :
                self.__elem.extend(re.findall("\$[0-9]+",fileData[i]))

            data = fileData[i]
            if ".FUNC " in data:
                fName = data.split(".FUNC ")[1].split(" (")[0]
                l = []
                l.append(data)
                while 1:
                    i+=1
                    data = fileData[i]
                    if "{" in data : ending.append("1")
                    if "}" in data : ending.pop()
                    l.append(data)
                    if len(ending) == 0: break
                fName = fName.strip("\"").strip()
                self.__dic.update({fName:l})
            i=i+1
        self.__elem = set(self.__elem)
    def __getArgu(self, _line):
        return  re.findall("\$[0-9]+",_line)

    # return 1 means reachable.. 0 is not 
    def forwardSymbolic(self, fName="", argv="", targetFunc="", arguNum=0):
        if fName in self.__callStack : return 0
        else :  self.__callStack.append(fName)
        nRet    = 0 
        taint   = []
        taint.append(argv)
        if not fName in self.__dic.keys():
            self.__callStack.pop()
            return 0
        
        ### READ FUNCTION SOURCE ###
        for line in self.__dic[fName]:
            line = line.strip()
            
            if( "require_auth" in line and "$0" in line ):
                #print "[-] require_auth(self) detected" 
                self.__callStack.pop()
                return 0 # require filter
            
            if( "eosio_assert" in line ):
                calline = line[line.find("("):line.rfind(")")]
                callArguList = self.__getArgu(calline)
                for callArgu in callArguList:
                    if callArgu in taint:
                        print "[-] eosio_assert %s " % line
                        self.__callStack.pop()
                        return 0

                #print "[-] require_auth(self) detected" 
                self.__callStack.pop()
                return 0 # require filter
            
            
            if ( "CALL" in line ):
                if targetFunc in line :
                    caline = line[line.find("("):line.rfind(")")]
                    callArguList = self.__getArgu(caline)
                    for callArgu in callArguList:
                        if callArgu in taint:
                            print "[I] "+line
                            return 1
                        else: return 0
                else :
                    callFunc = line.split("CALL")[1]
                    callName = callFunc.split("(")[0].strip()
                    caline = callFunc[callFunc.find("("):callFunc.rfind(")")]
                    callArguList = self.__getArgu(caline)
                    cnt = 0 
                    while len(callArguList) > cnt :
                        if callArguList[cnt] in taint :
                            if self.forwardSymbolic(callName, "$%d"%(cnt), targetFunc, arguNum):
                                return 1
                            pass
                        cnt += 1
            '''
            if " / " in line and "eosio_assert" not in line:
                Operator = line.split(" / ")[1]
                arguList = self.__getArgu(Operator)
                for argu in arguList :
                    if argu in taint :
                        print "[!] %s " % line
                        print "[-] divided by Zero "
                        return 1
            '''
            ## recursive 
            if (" = " in line) :
                paramList =  self.__getArgu(line);
                if len(paramList) > 1 :
                    if argv in paramList[1::]   : taint.append(paramList[0])
                    elif paramList[0] in taint  : taint.remove(paramList[0])
                    else                        : pass
                else: pass
        self.__callStack.pop()
        return 0

    def traversal(self):
        #fName = "$52"
        #print "[+] Try.. function [%s] " % fName
        #self.tryAllArgu(fName, "strcpy", 1)

        #for fName in self.__elem:
        for fName in self.__dic.keys():
            if fName in self.__dic.keys() :
                self.tryAllArgu(fName, "send_deferred", 0)
                self.tryAllArgu(fName, "send_deferred", 1)
                self.tryAllArgu(fName, "send_deferred", 2)
                self.tryAllArgu(fName, "send_deferred", 3)
                #self.tryAllArgu(fName, "strcpy", 0)
                #self.tryAllArgu(fName, "strcpy", 1)
                #self.tryAllArgu(fName, "db_update_i64", 0)
                #self.tryAllArgu(fName, "db_update_i64", 1)
                #self.tryAllArgu(fName, "db_update_i64", 2)
                #self.tryAllArgu(fName, "db_update_i64", 3)
                #self.tryAllArgu(fName, "db_store_i64", 3)
                #self.tryAllArgu(fName, "db_store_i64", 4)
                #self.tryAllArgu(fName, "db_store_i64", 5)
                #self.tryAllArgu(fName, "memcpy",0)
                #self.tryAllArgu(fName, "memcpy",1)

    def tryAllArgu(self, startFunc, targetFunc, targetArguNum):
        arguNumber = 0 
        if startFunc in self.__dic.keys():
            fLine =  self.__dic[startFunc][0]
            fArgu = self.__getArgu(fLine[fLine.find("("):fLine.rfind(")")])
            arguNumber = len(fArgu)
            print "[D] Func = %s , argu size : %d " % (fLine.strip() ,arguNumber )

        for i in range(0,arguNumber):
            print "\t\t[+] TRY : %s (NUM: %s) " % (startFunc , str(i))
            if self.forwardSymbolic(startFunc,"$%d"%(i),targetFunc,targetArguNum):
                if startFunc in resFunc:
                    continue;
                resFunc.append(startFunc)
                tmpString = "[!] REACHABLE!!\n"
                tmpString = "\t[+] FILE : %s\n" % self.__WASM_FILE 
                tmpString +="\t[+] Start : %s, argu : [$%d], targetFunc :[%s], targetArguNum :[%d] \n" % (startFunc, i,targetFunc,targetArguNum)
                tmpString +="\t[+] %s" % "->".join(self.__callStack)
                tmpString +="\n"
                #print "[!] REACHABLE!"
                #print "\t[+] FILE : %s" % self.__WASM_FILE
                #print "\t[+] Start : %s, argu : [$%d], targetFunc :[%s], targetArguNum :[%d] "\
                #        %(startFunc, i,targetFunc,targetArguNum)
                #print "\t[+] %s" % "->".join(self.__callStack)
                #print tmpString
                #raw_input("CONTINUE?>")
                
                res_data = open("result.txt","a+")
                res_data.write(tmpString)
                res_data.write("----------------------------------")
                res_data.close()
            while self.__callStack : self.__callStack.pop()

def main():
    import sys
    PATH    = "../CONTRACT/135duyinguxn/135duyinguxn.wasm.decompile"
    ABIFILE = "../CONTRACT/135duyinguxn/135duyinguxn.abi"
    if len(sys.argv)>1:
        PATH    = sys.argv[1]
        ABIFILE = sys.argv[2]

    w = wasmSymbolic(PATH, ABIFILE)
    w.traversal()

if __name__ =="__main__":
    main()
