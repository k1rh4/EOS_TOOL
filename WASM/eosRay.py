#from wastCook import *

class eosRay():
    __func = {
            # funcName [ Count of Number , returnFlag ]
            "$_ZdlPv"   :[1,0],
            "$_Znwj"    :[1,1],
            }
    def __init__(self,wastCook):
        self.__wastCook = wastCook

    def Postfix(self, function = "" ):
        left        = 0
        right       = 0 
        tmp         = ""
        label_dic   ={}
        stack       = []
        key         = ""
        if type(function) == list       : function = "".join(function)
        elif type(function) == str      : pass
        else                            : return -1

        for loc in range(len(function)):
            if function[loc] == "(" :
                left += 1
                tmp = tmp.strip()
                # Marking block and loop
                if "block $" in tmp:
                    key = tmp.split(" $")[1]
                    if key in label_dic.keys(): raw_input("[E]Postfix label error>")
                    else : label_dic.update({key:1})
                for i in label_dic.keys(): label_dic[i] += 1
                if tmp : stack.append(tmp); tmp=""

            elif function[loc] == ")" :
                right +=1
                tmp = tmp.strip()
                if tmp : stack.append(tmp)
                for i in label_dic.keys(): label_dic[i] -= 1
                for i in label_dic.keys() :
                    if label_dic[i] == 0:
                        stack.append("\n.LABEL_$"+i)
                        del label_dic[i]

                tmp =""
                if left and right and (left == right):
                    break
            else: tmp += function[loc]
        return stack

    def __getFuncName( self, string ):
        if "global" in string or "fimport" in string :
            for data in self.__wastCook['import']:
                if (" "+string) in data: return "$"+data.split("(import \"env\" \"")[1].split(" (func")[0].strip("\"")
            for data in self.__wastCook['export']:
                if (" "+string) in data: return "$"+data.split("(export \"")[1].split(" (func")[0].strip("\"")
        return string

    def __getType( self, string ):
        retData = ""
    
        for data in self.__wastCook['type']:
            if (string+" ") in data : #The space is being for checking between $11 and $1
                if "(result " in data:
                    if "i32" in data.split("(result ")[1]: retData ="i"
                    if "i64" in data.split("(result ")[1]: retData ="j"
                else : retData = "v"

                if "(param " in data :
                    param = data.split("(param ")[1]
                    param = param[0:param.find(")")]
                    for iterator in param.split(" "):
                        if iterator == "i32"    : retData +="i"
                        elif iterator =="i64"   : retData +="j"
                        else                    : pass
        return retData

    def __getGlobal(self , value ):
        retData = ""
        for data in self.__wastCook['global']:
            if value in data :
                ptr = data.split(value)[1].strip()
                if ptr[0] == "(":
                    _type = ptr[0:ptr.find(")")-1]
                else :
                    _type = ptr[0:ptr.find(" ")-1]
                ptr = ptr[0:ptr.find(_type)+len(_type)]

                if "mut i32" in _type :
                    retData = ptr.split("i32.const ")[1]
                elif "i32" in _type:
                    retData = ptr.split("i32.const ")[1]
                elif "i64" in _type:
                    retData = ptr.split("i64.const ")[1]
                else :
                    raw_input("ERROR:__getGlobal >")
        print "getGlobal : "+retData
        return retData 

    def __getCallingConv(self, fName):
        fName = self.__getFuncName(fName)
        retFlag = 0 
        nRes    = -1
        # DEFAULT FUNCTION TABLE CHECK
        for i in self.__func.keys():
            if fName == i : 
                nRes    = self.__func[i][0]
                retFlag = self.__func[i][1]

        #IMPORT TABLE CHECK
        if nRes == -1 :
            for data in self.__wastCook["import"]:
                #print fName
                #print"$"+data.split("import \"env\"")[1].split("\"")[1]
                if fName in "$"+data.split("import \"env\"")[1].split("\"")[1] :
                    param =""
                    if "(result" in data    : retFlag = 1
                    if "(param" in data     : param = data[data.find("(param")::]
                    if len(param)>0 :
                        param   = param[0:param.find(")")]
                        nRes    = param.count(" ")
                        self.__func.update({fName:[nRes,retFlag]})
                    else : nRes = 0 
                    break
        # CUSTOM FUNCTION TABLE CHECK 
        if nRes == -1 :
            for i in self.__wastCook["func"].keys():
                if fName == i :
                    nRes = 0
                    funcData = self.__wastCook["func"][i]
                    for data in funcData : 
                        nRes += data.count("(param")
                        if "(result" in data : retFlag = 1 
                    self.__func.update({fName:[nRes,retFlag]})
                    break
        if nRes == -1 : 
            print "[E] there is no data for function [__getArguFormFunc : %s ]" % fName
            raw_input("stop>")

        return nRes, retFlag

    def ray( self , stack ):
        sourceList  = []
        operand     = []
        aLineList   = []
        paramList   = []
        typeList    = ""
        funcNum     = 1

        while (stack):
            data = stack.pop()
            print "[D] Source->",
            print sourceList 
            print "[D]   Operand-> ",
            print operand 
            print 
            print "[D]      inst -> " +  data 

            ### [error code ] ### 
            if "module" in data         : print "[E] ray function is suppose to set only function"

            ### [ Control constructs and instructions ] ###
            elif "block" in data        : pass
            elif "nop" in data          : sourceList.append(";")
            elif "loop" in data         : sourceList.append("\n.LOOP %s:" %(data.split(" ")[1]))

            elif "return" in data       : sourceList.append("return %s" % operand.pop()) if operand else sourceList.append("return ")
            elif "br_if" in data        : sourceList.append("if ( %s ){ goto %s }" % (operand.pop(), data.split(" ")[1]))
            elif "br" in data           : sourceList.append("goto %s " %(data.split(" ")[1]))

            ### [Local variables ] ###
            elif "get_local" in data    : operand.append(data.split(" ")[1])
            elif "get_global" in data   : operand.append(data.split(" ")[1])
            elif "set_global" in data   : sourceList.append( "%s = %s" % (data.split(" ")[1],operand.pop()))
            elif "set_local" in data    : sourceList.append( "%s = %s" % (data.split(" ")[1],operand.pop()))
            elif "tee_local" in data    : operand.append("(%s = %s)" %(data.split(" ")[1], operand.pop()))
            elif "unreachable" in data  : operand.append("(unreachable)")

            ### [Constants] ###
            elif "i32.const" in data    : operand.append("[%s]" %(data.split(" ")[1]))
            elif "i64.const" in data    : operand.append("(int_64)%s" %(data.split(" ")[1]))
            elif "f64.const" in data    : operand.append("(float_64)%s" %(data.split(" ")[1])) 

            ### [ Type-parametric operators] ###
            elif "drop" in data         : operand.pop() # drop value of function
            elif "select" in data       : operand.append("( %s ? %s : %s )" %(operand.pop(),operand.pop(),operand.pop()))

            ### [ 32-bit Integer operators] ###
            elif "i32.trunc_s/f64" in data : operand.append("(CASTING int_32)(float_64 %s)" %(operand.pop()))
            elif "i32.trunc_u/f64" in data : operand.append("(CASTING uint_32)(float_64 %s)" %(operand.pop()))
            elif "i32.wrap/i64" in data : operand.append("(CASTING uint_32)(uint_64 %s)" %(operand.pop()))
            elif "i32.div_u" in data    : operand.append("((uint_32)%s / (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.div_s" in data    : operand.append("((int_32)%s / (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.shr_u" in data    : operand.append("uint_32(%s >> %s)" %(operand.pop(), operand.pop()))
            elif "i32.shr_s" in data    : operand.append("int_32(%s >> %s)" %(operand.pop(), operand.pop()))
            elif "i32.ge_u" in data     : operand.append("((uint_32)%s >= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.gt_s" in data     : operand.append("((int_32)%s > (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.lt_u" in data     : operand.append("(%s <= %s)" %(operand.pop(), operand.pop()))
            elif "i32.lt_s" in data     : operand.append("((int_32)%s < (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.gt_u" in data     : operand.append("((uint_32)%s > (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.ge_u" in data     : operand.append32("((uint_32)%s >= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.le_u" in data     : operand.append("((uint_32)%s <= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.rem_u" in data    : operand.append("((uint_32)%s %% (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.rem_s" in data    : operand.append("((int_32)%s %% (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.add" in data      : operand.append("(%s + %s)" %(operand.pop(), operand.pop()))
            elif "i32.sub" in data      : operand.append("(%s - %s)" %(operand.pop(), operand.pop()))
            elif "i32.or" in data       : operand.append("(%s | %s)" %(operand.pop(), operand.pop()))
            elif "i32.eqz" in data      : operand.append("(%s == 0)" %(operand.pop()))
            elif "i32.and" in data      : operand.append("(%s & %s)" %(operand.pop(), operand.pop()))
            elif "i32.shl" in data      : operand.append("(%s << %s)" %(operand.pop(), operand.pop()))
            elif "i32.mul" in data      : operand.append("((int_32)%s * (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.eq" in data       : operand.append("((int_32)%s == (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.ne" in data       : operand.append("((int_32)%s != (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.xor" in data      : operand.append("((int_32)%s ^ (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.rotl" in data     : operand.append("(rotl((int_32) %s))" %(operand.pop()))
            ### [ 64-bit Integer operators] ###
            elif "i64.extend_u/i32" in data : operand.append("(CASTING uint_64)(uint_32 %s)" %(operand.pop()))
            elif "i64.shr_s" in data    : operand.append("(int_64)%s >> (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.shr_u" in data    : operand.append("(uint_64)%s >> (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.div_u" in data    : operand.append("((uint_64)%s / (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.le_u" in data     : operand.append("((uint_64)%s <= (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.gt_u" in data     : operand.append("((uint_64)%s > (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ge_u" in data     : operand.append("((uint_64)%s >= (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.rem_u" in data    : operand.append("((uint_64)%s %% (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.rem_s" in data    : operand.append("((int_64)%s %% (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ne" in data       : operand.append("((int_64)%s != (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.add" in data      : operand.append("((int_64)%s + (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.or" in data       : operand.append("((int_64)%s | (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.and" in data      : operand.append("((int_64)%s & (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.mul" in data      : operand.append("((int_64)%s * (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.shl" in data      : operand.append("((int_64)%s << (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.sub" in data      : operand.append("(int_64))(%s - %s)" %(operand.pop(), operand.pop()))
            elif "i64.eq" in data       : operand.append("((int_64)%s == (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.xor" in data      : operand.append("((int_64)%s ^ (int_64)%s)" %(operand.pop(), operand.pop()))
            ### [64-bit float operators ] ###
            elif "f64.convert_s/i32" in data: operand.append("(CASTING float_64)(int_32 %s)" %(operand.pop()))
            elif "f64.convert_u/i32" in data: operand.append("(CASTING float_64)(uint_32 %s)" %(operand.pop()))
            elif "f64.trunc" in data    : operand.append("(Rounds 0)(%s)" %(operand.pop()))
            elif "f64.abs" in data      : operand.append("(float_64)|%s|" %(operand.pop()))
            elif "f64.sub" in data      : operand.append("(float_64))(%s - %s)" %(operand.pop(), operand.pop()))
            elif "f64.eq" in data       : operand.append("((float_64)%s == (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.gt" in data       : operand.append("((float_64)%s > (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.ne" in data       : operand.append("((float_64)%s != (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.le" in data       : operand.append("((float_64)%s <= (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.lt" in data       : operand.append("((float_64)%s < (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.ge" in data       : operand.append("((float_64)%s >= (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.mul" in data      : operand.append("((float_64)%s * (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.add" in data      : operand.append("((float_64)%s + (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.div" in data      : operand.append("((float_64)%s / (float_64)%s)" %(operand.pop(), operand.pop()))



            ## [ Resizing ] ###
            elif "current_memory" in data   : operand.append("(current_memory)")

            ### [ Linear Memory Accesses ] ###
                ## LOAD SOTRE NEED MODIFICATION
            elif "i32.load8_u" in data  : operand.append( "*(int_8)(%s)" %(operand.pop()) )

            elif ".load" in data     : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var = ""
                if var  : operand.append("*(%s+[%s])" %(operand.pop(),var) )
                else    : operand.append("*(%s)" %(operand.pop()))
            elif ".store" in data    : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var  = ""
                if var  : sourceList.append("(%s+[%s]) = %s" %(operand.pop(), var, operand.pop()))
                else    : sourceList.append("*(%s) = %s" %(operand.pop(), operand.pop()))

            ### [ Calls ] ###
            ### NOT IMPLEMENT YET (CALL_INDIRECT) ###
            elif "call_indirect" in data:
                function =""
                if typeList :
                    fName = operand.pop()
                    if typeList[0] =="v" : function ="void %s" % (fName)
                    if typeList[0] =="i" : function ="int_32 %s" % (fName)
                    if typeList[0] =="j" : function ="int_64 %s" % (fName)
                    l = []
                    for i in range(1,len(typeList)):
                        if typeList[i] =="i" : l.append("(int_32 %s)" % (operand.pop()))
                        if typeList[i] =="j" : l.append("(int_64 %s)" % (operand.pop()))

                    function = "$func_%d = %s(%s)" %(funcNum, function, ', '.join(l))
                    sourceList.append(function)
                    typeList = ""

                else: raw_input("[E] Call_indirect:There is no type >")
            elif "call" in data:
                fName = data.split(" ")[1]
                fName = self.__getFuncName(fName)
                countArgument, retFlag = self.__getCallingConv(fName)
                l = []
                for i in range(countArgument): l.append(operand.pop())
                sourceList.append("$func_%d = %s(%s)" % (funcNum ,fName, (", ".join(l))))
                operand.append("$func_%d" %(funcNum))
            ### [ Functaion Calling Convention ###
            elif "param" == data[0:5]   : paramList.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))
            elif "local" == data[0:5]   : sourceList.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))
            elif "result " in data      : typeList ="i" #operand.append("return %s" % (data.split(" ")[1]))

            ### INDIRECT CALL .....###
            elif "type $" in data       : typeList = self.__getType(data)

            ### [ End of entire logic ] ###
            elif "func $" in data :
                fName = data.split(" ")[1]
                fName = self.__getFuncName(fName)
                l = []
                while paramList : l.append(paramList.pop())
                function = "%s (%s)\n{" %(fName, ', '.join(l))
                if typeList :
                    if typeList[0] =="v" : function ="void %s" % (function)
                    if typeList[0] =="i" : function ="int_32 %s" % (function)
                    if typeList[0] =="j" : function ="int_64 %s" % (function)
                while sourceList:
                    l = sourceList.pop()
                    if (("return " in l) and (not typeList)) : 
                        function = "%s %s" % (l.split(" ")[1], function)
                    else : aLineList.append(l);
                aLineList.insert(0,function)

            elif "label" in data : sourceList.append(data)
            else: 
                print "[D] Instruction is not define yet : %s " %(data)
                raw_input("continue?>")

        # MAKE RETURN VALUE #
        if typeList : 
            if typeList[0] != "v" : aLineList.append("return %s" % aLineList.pop().strip())

        aLineList.append("}")
        return aLineList

    ### Change .data to strings 
    def replaceStr(self, _wastCook, _list ):
        retList = []
        i = 0
        for line in _list :
            if i > 0 and i < (len(_list)-1) : line = "\t" + line #indent
            if "[" in line  and "]" in line :
                variable = line.split("[")[1].split("]")[0]
                strData  = _wastCook.getData(variable)
                if len(strData) > 0 : 
                    retList.insert(0,".data %s -> [\"%s\"]"%(variable, strData) )
                    line += " // .data %s -> [\"%s\"]".rjust(30) % (variable, strData.split("\\00")[0])
                else : line = line.replace(("*%s*" % variable), "(int)%s"%variable)
            line = line.replace("(int_64)(int_64)","(int_64)")
            line = line.replace("(int_32)(int_32)","(int_64)")
            line = line.replace("  "," ")
            line = line.replace("i32","int_32")
            line = line.replace("i64","int_64")
            line = line.replace("f32","float_32")
            line = line.replace("f64","float_64")
            retList.append(line)
            i+=1
        return retList

    def showSource(self, source):
        print "\n".join(source);
'''
def main():
    w = wastCook()
    dic = w.wast("./hello.wast")
    print " ".join(dic["func"].keys())
    hello = dic["func"]
    while 1:
        print "\n".join(dic["func"])
        hello = raw_input(">").strip()
        e = eosRay(dic)
        stack = e.Postfix("".join(dic["func"][hello]))
        e.showSource(e.replaceStr(w, stack))

if __name__ =="__main__":
    main()
'''
