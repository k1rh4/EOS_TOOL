

class wastCook():
    __DIC = {"moudle":[],"type":[],"import":[],"table":[], "elem":[], "export":[], "memory":[], "data":[],"func":{}}
    def __readUntilEnd(self, _type, _wastFile, _line ):
        l     = []
        right = 0
        left  = 0
        flag  = 0 

        w =_wastFile[_line].strip()
        if ("(func" in w.strip()[0:5]):
            _type = [s for s in w.split(" ") if "$" in s][0]
            flag = 1 

        while True:
            w = _wastFile[_line].strip()
            right += w.count("(")
            left  += w.count(")")
            if right == left:
                l.append(w)
                break;
            else :
                l.append(w)
                _line +=  1

        if flag :
            if _type not in self.__DIC["func"].keys() :
                if 1==1 : # function mangling replace ... not sure genernal case_
                    import re 
                    origin_func = _type 
                    _type = _type.replace("$_ZdlPv","$delete")
                    _type = _type.replace("$_Znwj","$new")
                    _type = _type.replace("$_ZN5","$")
                    _type = _type.replace("$_ZneRK11","$ne_")
                    _type = _type.replace("$_ZeqRK11","$eq_")
                    _type = _type.replace("$_ZNKSt3","$")
                    _type = re.sub(r"(eosio)[0-9]{2,}","",_type)
                    _type = _type.replace("__","")
                    if _type[-1] == "E" : _type = _type[:-1]
                    if _type[-2] == "E" : _type = _type[:-2]
                    _type = _type.replace("$","")
                self.__DIC["func"].update({_type:[]})
            l[0] = l[0].replace(origin_func, _type)
            self.__DIC["func"][_type].extend(l)
        else :
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
    print dic["func"]["$new"]
if __name__ == "__main__":
        main()
'''
