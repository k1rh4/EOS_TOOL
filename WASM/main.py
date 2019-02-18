from wastCook import *

class eoray():
    __func = {
            # funcName [ Count of Number , returnFlag ]
            "$_ZdlPv"   :[1,0],
            "$_Znwj"    :[1,1],
            }
    def __init__(self,wastCook):
        self.__wastCook = wastCook
        #print "[D]"+self.__source_code

    def Postfix(self, function = "" ):
        retList = []
        left    = 0
        right   = 0 
        tmp     = ""
        stack   = []
        for loc in range(len(function)):
            if function[loc] == "(" :
                left += 1
                if tmp.strip(): 
                    stack.append(tmp.strip())
                    tmp=""
            elif function[loc] == ")" :
                right +=1
                if tmp : 
                    stack.append(tmp.strip())
                    tmp =""
                if left and right and (left == right): 
                    retList.extend(self.__ray(stack))
            else: tmp += function[loc]
            loc = loc +1 
        return retList

    def __getCallingConv(self, fName):
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
                if fName == "$"+data.split("import \"env\"")[1].split("\"")[1] :
                    param = data[data.find("(param")::]
                    if data.find("(result")>0 : retFlag = 1
                    if len(param)>0 :
                        param   = param[0:param.find(")")]
                        nRes    = param.count(" ")
                        self.__func.update({fName:[nRes,retFlag]})
                    else : nRes = 0 
                    break
        # CUSTOM FUNCTION TABLE CHECK 
        if fName == "$__errno_location": print self.__wastCook["func"].keys()
        if nRes == -1 :
            for i in self.__wastCook["func"].keys():
                if "$__errno_location" in i : print "[D] getCallingConv " + i
                if fName == i :
                    nRes = 0
                    funcData = self.__wastCook["func"][i]
                    for data in funcData : 
                        nRes += data.count("(param")
                        if data.find("(result")>0 : retFlag = 1 
                    self.__func.update({fName:[nRes,retFlag]})
                    break
        if nRes == -1 : 
            print "[E] there is no data for function [__getArguFormFunc : %s ]" % fName
            raw_input("stop>")

        return nRes, retFlag

    def __ray( self , stack ):
        operand     = []
        aLineList   = []
        ray_code    = ""
        funcType    = ""
        funcRet     = ""

        while (stack):
            data = stack.pop()
            print "[D] Operand Stack-> ",
            print operand 
            print "[D] Current inst -> " +  data 

            ### [error code ] ### 
            if "module" in data         : print "[E] ray function is suppose to set only function"

            ### [ Control constructs and instructions ] ###
            elif "block" in data        :
                raw_input("block>")
                label = (data.split(" ")[1])
                label =".LABEL %s:" 
                for i in range(operand):
                    operand(i) = "\t%s"%(operand(i))
                '''
                while operand : 
                    ray_code = ray_code + "\n %s -- %s" %(data.split(" ")[1],operand.pop())
                '''
            elif "nop" in data          : ray_code ="\n;\n"
            elif "loop" in data         : ray_code  = "loop %s" %(data.split(" ")[1])
            elif "return" in data       : ray_code = "return->"
            elif "br_if" in data        : 
                operand.append("if ( %s ) { goto %s }" %(operand.pop(),data.split(" ")[1]))
            elif "br" in data           : 
                operand.append("{goto %s}" %(data.split(" ")[1]))

            ### [Local variables ] ###
            elif "get_local" in data    : operand.append(data.split(" ")[1])
            elif "set_local" in data    : ray_code = "%s = %s" % (data.split(" ")[1],operand.pop())
            elif "set_local" in data    : ray_code = "%s = %s" %(data.split(" ")[1], operand.pop())
            elif "tee_local" in data    : operand.append("(%s = %s)" %(data.split(" ")[1], operand.pop()))
            elif "unreachable" in data  : ray_code ="(unreachable)";

            ### [Constants] ###
            elif "i32.const" in data    : operand.append("[%s]" %(data.split(" ")[1]))
            elif "i64.const" in data    : operand.append("(int_64)%s" %(data.split(" ")[1]))

            ### [ Type-parametric operators] ###
            elif "drop" in data         : ray_code = operand.pop()
            elif "select" in data       : operand.append("( %s ? %s : %s )" %(operand.pop(),operand.pop(),operand.pop()))

            ### [ 32-bit Integer operators] ###
            elif "i32.add" in data      : operand.append("(%s + %s)" %(operand.pop(), operand.pop()))
            elif "i32.sub" in data      : operand.append("(%s - %s)" %(operand.pop(), operand.pop()))
            elif "i32.or" in data       : operand.append("(%s | %s)" %(operand.pop(), operand.pop()))
            elif "i32.eqz" in data      : operand.append("(%s == 0)" %(operand.pop()))
            elif "i32.lt_u" in data     : operand.append("(%s <= %s)" %(operand.pop(), operand.pop()))
            elif "i32.and" in data      : operand.append("(%s & %s)" %(operand.pop(), operand.pop()))
            elif "i32.shr_u" in data    : operand.append("(%s >> %s)" %(operand.pop(), operand.pop()))
            elif "i32.shl" in data      : operand.append("(%s << %s)" %(operand.pop(), operand.pop()))
            elif "i32.ge_u" in data     : operand.append("((uint_32)%s >= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.gt_u" in data     : operand.append("((uint_32)%s > (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.mul" in data      : operand.append("((int_32)%s * (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.lt_s" in data     : operand.append("((int_32)%s < (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.eq" in data       : operand.append("((int_32)%s == (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.ne" in data       : operand.append("((int_32)%s != (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.xor" in data      : operand.append("((int_32)%s ^ (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.le_u" in data     : operand.append("((uint_32)%s <= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.wrap/i64" in data : operand.append("(CASTING uint_32)(uint_64 %s)" %(operand.pop()))
            elif "i32.div_u" in data    : operand.append("((uint_32)%s / (uint_32)%s)" %(operand.pop(), operand.pop()))
            ### [ 64-bit Integer operators] ###
            elif "i64.div_u" in data    : operand.append("((uint_64)%s / (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ne" in data       : operand.append("((int_64)%s != (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.add" in data      : operand.append("((int_64)%s + (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.or" in data       : operand.append("((int_64)%s | (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.add" in data      : operand.append("((int_64)%s + (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.and" in data      : operand.append("((int_64)%s & (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.shl" in data      : operand.append("((int_64)%s << (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.extend_u/i32" in data : operand.append("(CASTING uint_64)(uint_32 %s)" %(operand.pop()))
            elif "i64.shr_s" in data    : operand.append("(int_64)%s >> (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.le_u" in data     : operand.append("((uint_64)%s <= (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.gt_u" in data     : operand.append("((uint_64)%s > (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.eq" in data       : operand.append("((int_64)%s == (int_64)%s)" %(operand.pop(), operand.pop()))

            ## [ Resizing ] ###
            elif "current_memory" in data   : operand.append("(current_memory)")

            ### [ Linear Memory Accesses ] ###
                ## LOAD SOTRE NEED MODIFICATION
            elif "i32.load8_u" in data  : operand.append( "*(int_8)(%s)" %(operand.pop()) )
            elif "i32.load" in data     : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var = ""
                if var  : operand.append("*(%s+[%s])" %(operand.pop(),var) )
                else    : operand.append("*(%s)" %(operand.pop()))

            elif "i32.store" in data    : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var  = ""
                if var  : ray_code = "(%s+[%s]) = %s" %(operand.pop(), var, operand.pop())
                else    : ray_code = "(%s) = %s" %(operand.pop(), operand.pop()) 
            elif "i64.store" in data:
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var  = ""
                if var  : ray_code = "(%s+[%s]) = %s" %(operand.pop(), var, operand.pop())
                else    : ray_code = "(%s) = %s" %(operand.pop(), operand.pop()) 
                pass
            elif "i64.load" in data:
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var = ""
                if var  : operand.append("*(%s+[%s])" %(operand.pop(),var) )
                else    : operand.append("*(%s)" %(operand.pop()))

            ### [ Calls ] ###
            elif "call" in data:
                fName = data.split(" ")[1]
                countArgument, retFlag = self.__getCallingConv(fName)
                l = []
                for i in range(countArgument): l.append(operand.pop())
                ray_code = "%s(%s)" % (fName, (", ".join(l)))
                #fName = fName.strip("$")
                if retFlag == 1 : 
                    operand.append(ray_code)
                    ray_code=""
                else : pass ## no return, print directly

            ### [ FUNCTION Calling convention ###
            elif "param" == data[0:5] :
                if not funcRet :
                    while operand: aLineList.insert(0,operand.pop())
                    funcRet = "void " 
                operand.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))

            elif "local" == data[0:5] :
                if funcRet =="":
                    while operand: aLineList.insert(0,operand.pop())
                    funcRet = "void "
                ray_code  = "%s %s" % (data.split(" ")[2], data.split(" ")[1])

            elif "result " in data : 
                if not funcRet :
                    while operand: aLineList.insert(0,operand.pop())
                    funcRet = "void "
                funcRet = data.split(" ")[1]
               #while operand: ray_code = "return %s" %(operand.pop())

            elif "type $" in data: pass

            elif "func $" in data :
                if not funcRet :
                    while operand: aLineList.insert(0,operand.pop())
                    funcRet ="void "
                ray_code = "%s %s (" % (funcRet,data.split(" ")[1])
                l = [] 
                while operand : l.append("%s" % operand.pop())
                ray_code = "%s%s)\n{" %(ray_code, ", ".join(l) )
                #aLineList.insert(0,ray_code)
                #ray_code=""
            ### [ Datatype conversions, truncations, reinterpretations, promotions, and demotions ] ###
            else: 
                print "[D] Instruction is not define yet : %s " %(data)
                raw_input("continue?>")

            if ( ray_code ):
                print "[D]rayCode " + ray_code
                aLineList.insert(0,ray_code)
                ray_code =""

        stack = []
        aLineList.append("}")
        return aLineList

    def replaceStr(self, _wastCook, _list ):
        retList = []
        i = 0
        for line in _list :
            if i >0 and i < (len(_list)-1) : line = "\t" + line
            if line.find("[") >0 and line.find("]") >0  :
                variable = line.split("[")[1].split("]")[0]
                strData  = _wastCook.getData(variable)
                if len(strData) > 0 : 
                    retList.insert(0,".data %s -> [\"%s\"]"%(variable, strData) )
                    line += " // .data %s -> [\"%s\"]".rjust(30) % (variable,strData)
                else : line = line.replace(("*%s*" % variable), "(int)%s"%variable)
            retList.append(line)
            i+=1
        return retList

    def showSource(self, source):
        print "\n".join(source);

def main():
    w = wastCook()
    dic = w.wast("./hello.wast")
    print " ".join(dic["func"].keys())
    hello = dic["func"]
    while 1:
        print "\n".join(dic["func"])
        hello = raw_input(">").strip()
        e = eoray(dic)
        stack = e.Postfix("".join(dic["func"][hello]))
        e.showSource(e.replaceStr(w, stack))

if __name__ =="__main__":
    main()
