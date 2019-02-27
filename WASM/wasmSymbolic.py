class wasmSymbolic:
    callStack = []
    __dic = {"init":[]}
    def __init__( self, decompiledFile ):
        with open(decompiledFile ,"r") as f:
            fileData = f.readlines()
        print "[+] OPEN FILE-> %s" % decompiledFile
        i = 0 
        while i < len(fileData):
            data = fileData[i]
            if ".FUNC $" in data:
                fName = data.split(".FUNC ")[1].split(" (")[0]
                l = []
                while 1:
                    i+=1
                    data = fileData[i]
                    if "{" in data :
                        l.append(data)
                    elif "}" in data :
                        l.append(data)
                        break
                    else:
                        l.append(data)
                fName = fName.strip("\"").strip()
                self.__dic.update({fName:l})
            i=i+1

    def getArgu(self, _line):
        l = []
        argu = _line[_line.find("("):_line.rfind(")")]
        l = argu.split(",")

        return l

    def forwardSymbolic(self, fName, argv, targetFunc, arguNum=0):
        self.callStack.append(fName)
        nRet = 0 
        l = []
        l.append(argv)
        if not fName in self.__dic.keys() : 
            self.callStack.pop()
            return 0
        else:
            pass
        for line in self.__dic[fName]:
            line = line.strip()
            if( "require_auth" in line and "$0" in line ):
                print "[-] require_auth(self) detected" 
                self.callStack.pop()
                return 0 # require filter 
            # if  ((int_32)($8 = *(($0 + [36]))) == (int_32)($4 = *(($0 + [32])))) ){ goto $label$1 }
            if ("=" in line) and (argv in line):
                for output in line.split("=="):
                    if "=" in output and not "<=" in output and not ">=" in output and not "!=" in output \
                            and not ("label%s"%(argv) in line) and (argv in line):
                        s = output.split("=")[0] # 0 = 1  (only 0 is selected)
                        import re
                        for val in re.findall('\${1}[0-9]+',s) :
                            if s[s.find(val)-1] == "("  or s[s.find(val)-2] =="(":
                                val2 = s[s.find(val)::]
                                val2 = val2[0:val2.find(")")]
                                val = val2.strip().strip("(").strip(")")
                            if val not in l: l.append(val)

            if ("CALL" in line ):

                ## std library function 
                if "memcpy" in line:
                    argulist = self.getArgu(line)
                    values = argulist[0].strip("(").strip(")")
                    if values not in l : l.append(values)
                    values = argulist[1]
                    if values not in l : l.append(values)

                ## custom function 
                else :
                    for values in l :
                        if values in line:
                            func = line.split("CALL ")[1].split("(")[0]
                            c = line.split(",")
                            for i in range(0, len(c)):
                                if values in c[i]:
                                    values = "$%d"%(i)
                                    if self.forwardSymbolic(func, values, targetFunc, arguNum) : 
                                        return 1


            if targetFunc in line :
                values =""
                for values in l :
                    argulist =  self.getArgu(line)
                    if arguNum == 0 :
                        for argu in argulist :
                            if values in argu:
                                print values
                                return 1
                    else:
                        if values in argulist[arguNum-1]:
                            print values
                            return 1

            else:
                pass
        self.callStack.pop()


    def iterator(self):
        for fName in self.__dic.keys():
            if len(self.__dic[fName]) > 10 :
                print "[+] Try.. function [%s] " % fName
                self.tryAllArgu(fName, "db_update", 2)
            

    def tryAllArgu(self, startFunc, targetFunc, targetArguNum):
        for i in range(1,4):
            if self.forwardSymbolic(startFunc,"$%d"%(i),targetFunc,targetArguNum):
                print "[!] REACHABLE!"
                print "[+] Start : %s, argu : [%d], targetFunc :[%s] . targetArguNum :[%d] " %(startFunc, i,targetFunc,targetArguNum)
                print "->".join(self.callStack)
                raw_input(">")
            else:
                print "[-] UNREACHABLE! "
                print "[+] Start : %s, argu : [%d], targetFunc :[%s] . targetArguNum :[%d] " %(startFunc, i,targetFunc,targetArguNum)
            while self.callStack : self.callStack.pop()


def main():
    import sys
    w = wasmSymbolic(sys.argv[1])
    w.iterator()

if __name__ =="__main__":
    main()
