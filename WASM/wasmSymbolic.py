import re
import os 
import sys
import json 

class wasmSymbolic:
    __callStack = []
    __dic = {}
    __elem = []
    def __init__( self, decompiledFile , abiFile=""):
        if not os.path.exists(decompiledFile) and not os.path.exists(abiFile) : sys.exit()
        actionFunctions = []
        ### GET ACTION FUNCTIONS ###
        with open(abiFile,"r") as f :
            abiData =  json.loads(f.read())
            cnt = 0 
            while len(abiData["actions"]) > cnt :
                actions = abiData["actions"][cnt]
                actionFunctions.append(actions["name"])
                cnt += 1

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
            if ".FUNC $" in data:
                fName = data.split(".FUNC ")[1].split(" (")[0]
                l = []
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
        #print "\t\t[+] Btace: " + "-> ".join(self.__callStack)
        nRet    = 0 
        taint   = []
        taint.append(argv)
        if not fName in self.__dic.keys():
            self.__callStack.pop()
            return 0

        ### READ FUNCTION SOURCE ###
        for line in self.__dic[fName]:
            line = line.strip()
            
            if( "require_auth" in line and "Arg$0" in line ):
                print "[-] require_auth(self) detected" 
                self.__callStack.pop()
                return 0 # require filter
            
            ## recursive 
            if ( "CALL" in line ):
                if targetFunc in line :
                    caline = line[line.find("("):line.rfind(")")]
                    callArguList = re.findall("\$[0-9]+",caline)
                    for callArgu in callArguList:
                        if callArgu in taint:
                            print "[I] "+line
                            return 1
                        else: return 0
                else :
                    callFunc = line.split("CALL")[1]
                    callName = re.findall("\$[a-z0-9_]+",callFunc)[0]
                    caline = callFunc[callFunc.find("("):callFunc.rfind(")")]
                    callArguList = self.__getArgu(caline)
                    cnt = 0 
                    while len(callArguList) > cnt :
                        if callArguList[cnt] in taint :
                            if self.forwardSymbolic(callName, "$%d"%(cnt), targetFunc, arguNum):
                                print "[I] "+line
                                return 1
                            pass
                        cnt += 1
            if (" = " in line) :
                paramList =  self.__getArgu(line);
                if len(paramList) > 1 :
                    if argv in paramList[1::]:
                        taint.append(paramList[0])
                else: pass
        self.__callStack.pop()
        return 0

    def traversal(self):
        #fName = "$52"
        #print "[+] Try.. function [%s] " % fName
        #self.tryAllArgu(fName, "strcpy", 1)

        
        for fName in self.__elem:
            if fName in self.__dic.keys() and len(self.__dic[fName]) > 10 :
                print "\t[+] Try.. function [%s] " % fName
                self.tryAllArgu(fName, "strcpy", 0)
                self.tryAllArgu(fName, "strcpy", 1)
                self.tryAllArgu(fName, "db_update", 1)
                #self.tryAllArgu(fName, "memcpy",2)
                #self.tryAllArgu(fName, "memcpy",1)
                

    
    def tryAllArgu(self, startFunc, targetFunc, targetArguNum):
        for i in range(0,4):
            print "\t[+] TRY : %s (NUM: %s) " % (startFunc , str(i))
            if self.forwardSymbolic(startFunc,"$%d"%(i),targetFunc,targetArguNum):
                print "[!] REACHABLE!"
                print "\t[+] Start : %s, argu : [$%d], targetFunc :[%s], targetArguNum :[%d] "\
                        %(startFunc, i,targetFunc,targetArguNum)
                print "\t[+] %s" % "->".join(self.__callStack)
                raw_input("CONTINUE?>")
            while self.__callStack : self.__callStack.pop()


def main():
    import sys
    PATH    = "../CONTRACT/eosmagiecube/eosmagiecube.wasm.decompile"
    ABIFILE = "../CONTRACT/eosmagiecube/eosmagiecube.abi"
    if len(sys.argv)>1:
        PATH    = sys.argv[1]
        ABIFILE = sys.argv[2]

    w = wasmSymbolic(PATH, ABIFILE)
    w.traversal()

if __name__ =="__main__":
    main()
