

class wastCook():
    __DIC = {"moudle":[],"type":[],"import":[],"table":[], "elem":[], "export":[], "memory":[], "data":[],"func":{}}

    def getData(self ,variable):
        v = "(i32.const %s)" % variable.strip()
        for _data in self.__DIC['data']:
            if _data.find(v)>0 :
                _data = _data[_data.find(v)::]
                _data = _data[_data.find("\"")+1:_data.find("\")")].strip()
                return _data
        return ""

    def __deMangling(self, _key):
        import re 
        #_key = _key.replace("$_ZdlPv","$delete")
        #_key = _key.replace("$_Znwj","$new")
        _key = _key.replace("$_ZN5","$")
        _key = _key.replace("$_ZneRK11","$Zne_")
        _key = _key.replace("$_ZeqRK11","$Zeq_")
        _key = _key.replace("$_ZNKSt3","$")
        _key = re.sub(r"(eosio)[0-9]{2,}","",_key)
        _key = _key.replace("__","")
        #if _key[-1] == "E" : _key = _key[:-1]
        #if _key[-2] == "E" : _key = _key[:-2]
        #_key = _key.replace("$","")
        return _key

    def __readUntilEnd(self, _type, _wastFile, _line ):
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
            # [!] Data section could include token...#
            if _type == "data" :
                right += w.count(") \"")
                left  += w.count("\")")
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
            #print _type
            if _type not in self.__DIC.keys() : self.__DIC.update({_type:[]})
            self.__DIC[_type].extend(l)

        return _line

    def wast(self, _fileName):
        with open(_fileName,"r") as f: wastFile = f.readlines()
        i = 0;
        while (i < len(wastFile)):
            line = wastFile[i][0:8]
            if(line.find("module") >0)  : pass
            elif(line.find("type") >0)  : i = self.__readUntilEnd("type", wastFile, i)
            elif(line.find("import") >0): i = self.__readUntilEnd("import", wastFile, i)
            elif(line.find("table") >0) : i = self.__readUntilEnd("table", wastFile, i)
            elif(line.find("elem") >0)  : i = self.__readUntilEnd("elem", wastFile, i)
            elif(line.find("memory") >0): i = self.__readUntilEnd("memory", wastFile, i)
            elif(line.find("data") >0)  : i = self.__readUntilEnd("data", wastFile, i)
            elif(line.find("export") >0): i = self.__readUntilEnd("export", wastFile, i)
            elif(line.find("func") >0)  : i = self.__readUntilEnd("func", wastFile, i)
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
