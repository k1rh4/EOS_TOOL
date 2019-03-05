
WASM_DIS = "/Users/k1rh4/GIT/EOS_TOOL/TOOLS/wasm-dis"

class wastCook():
    __DIC = {"moudle":[],"type":[],"import":[],"table":[], "elem":[], "export":[], "memory":[], "data":[],"func":{},"global":[]}
        ### NOT implement yet ###


    def __deMangling( self, _key ):
        import re 
        _key = _key.replace("$_ZN5","$")
        _key = _key.replace("$_ZneRK11","$Zne_")
        _key = _key.replace("$_ZeqRK11","$Zeq_")
        _key = _key.replace("$_ZNKSt3","$")
        _key = re.sub(r"(eosio)[0-9]{2,}","",_key)
        _key = _key.replace("__","")
        return _key

    def __readUntilEnd( self, _type, _wastFile, _line ):
        l       = []
        right   = 0
        left    = 0
        isFunc  = 0 
        w = self.__deMangling(_wastFile[_line].strip())

        if ("(func" in w[0:5]):
            _key = [s for s in w.split(" ") if "$" in s][0].strip()
            isFunc = 1
        while True:
            w = self.__deMangling(_wastFile[_line].strip())
            # I GUESS DATA IS ALWAYS BEING ONE LINE. 
            if _type == "data" :
                pass
                #right += w.count(") \"")
                #left  += w.count("\")")
            else:
                right += w.count("(")
                left  += w.count(")")

            l.append(w)
            if right == left : break;
            _line +=  1

        if isFunc :
            if _key not in self.__DIC["func"].keys() :
                self.__DIC["func"].update({_key:[]})
            self.__DIC["func"][_key].extend(l)

        else :
            if _type not in self.__DIC.keys() :
                self.__DIC.update({_type:[]})
            self.__DIC[_type].extend(l)

        return _line

    def getWast( self, _fileName ):
        DAPP = _fileName
        with open(DAPP,"r") as f: 
            readData = f.read(7)
            if "asm" in readData : 
                CMD = "%s %s -o %s.wast" % (WASM_DIS, DAPP, DAPP)
                DAPP = "%s.wast" %(DAPP)
                import os
                os.popen(CMD)
            elif "(module" in readData : pass
            else : raw_input("[E]WASTCOOK -> %s is not DAPP(wast or wasm) FILE.>"); return -1

        with open(DAPP,"r") as f: wastFile = f.readlines()
        i = 0;
        while (i < len(wastFile)):
            line = wastFile[i][0:8]
            if(   "module" in line ): pass
            elif( "type" in line )      : i = self.__readUntilEnd("type", wastFile, i)
            elif( "import" in line )    : i = self.__readUntilEnd("import", wastFile, i)
            elif( "table" in line )     : i = self.__readUntilEnd("table", wastFile, i)
            elif( "elem" in line )      : i = self.__readUntilEnd("elem", wastFile, i)
            elif( "memory" in line )    : i = self.__readUntilEnd("memory", wastFile, i)
            elif( "data" in line )      : i = self.__readUntilEnd("data", wastFile, i)
            elif( "export" in line )    : i = self.__readUntilEnd("export", wastFile, i)
            elif( "func" in line)       : i = self.__readUntilEnd("func", wastFile, i)
            elif( "global" in line )    : i = self.__readUntilEnd("global", wastFile, i)
            else: pass
            i += 1

        return self.__DIC
'''
def main():
    w = wastCook()
    dic = w.wast("./hello.wast")
    print "\n".join(dic["func"].keys())
    print dic["func"]["$hello2hi"]
if __name__ == "__main__":
        main()
'''
