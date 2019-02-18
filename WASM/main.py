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
                    if param.find("result")>0 : retFlag = 1
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
            print "[D] Current Stack-> ",
            print operand 
            print "[D] Current inst -> " +  data 

            if "module" in data         : print "[E] ray function is suppose to set only function"

            ### [ Control constructs and instructions ] ###
            elif "block" in data        : 
                ray_code =".LABEL %s:" %(data.split(" ")[1])
                while operand : ray_code += "\n\t\t" + operand.pop()

            elif "nop" in data          : ray_code ="\n;\n"
            elif "br_if" in data        : ray_code  = "if ( %s ) { goto %s }" %(operand.pop(),data.split(" ")[1])
            elif "loop" in data           : ray_code  = "loop %s" %(data.split(" ")[1])
            elif "br" in data           : ray_code  = "goto %s" %(data.split(" ")[1])
            elif "return" in data       :
                if operand  : ray_code = "  return (operand.pop())"
                else        : ray_code = "  return;"

            ### [Local variables ] ###
            elif "get_local" in data    : operand.append(data.split(" ")[1])
            elif "set_local" in data    : ray_code = "%s = %s" % (data.split(" ")[1],operand.pop())
            elif "set_local" in data    : ray_code = "%s = %s" %(data.split(" ")[1], operand.pop())
            elif "tee_local" in data    : operand.append("(%s = %s)" %(data.split(" ")[1], operand.pop()))
            elif "unreachable" in data  : ray_code ="(unreachable)";

            ### [Constants] ###
            elif "i32.const" in data    : operand.append("[%s]" %(data.split(" ")[1]))
            elif "i64.const" in data    : operand.append("%s" %(data.split(" ")[1]))

            ### [ Type-parametric operators] ###
            elif "drop" in data         : operand.pop()
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
            ### [ Floating point operators ] ###
            #???

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

            ### [ Calls ] ###
            elif "call" in data:
                fName = data.split(" ")[1]
                countArgument, retFlag = self.__getCallingConv(fName)
                l = []
                for i in range(countArgument): l.append(operand.pop())
                ray_code = "%s(%s)" % (fName, (", ".join(l)))
                fName = fName.strip("$")
                if retFlag == 1 : operand.append(ray_code)

            ### [ FUNCTION Calling convention ###
            elif "param" == data[0:5] : operand.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))
            elif "local" == data[0:5] :
                while operand:
                    ray_code = "%s" %(operand.pop())
                    aLineList.insert(0,ray_code)
                ray_code  = "%s %s" % (data.split(" ")[2], data.split(" ")[1])

            elif "result " in data : 
                funcRet = data.split(" ")[1]
                while operand:
                    ray_code = "%s" %(operand.pop())
                    aLineList.insert(0,ray_code)
            elif "type $" in data:
                '''
                callingConv = data.split("$")[-1]
                if callingConv[0] == "v"    : funcType = "void "
                elif callingConv[0] =="i"   : funcType = "int32 "
                elif callingConv[0] =="j"   : funcType = "int64 "
                else                        : print "[E] calling Conv type Error"
                '''
                pass
            elif "func $" in data : 
                print data
                if funcType == "" : funcType ="void"
                if funcType : ray_code = "%s %s (" % (funcType,data.split(" ")[1])
                if funcRet  : ray_code = "%s %s (" % (funcRet,data.split(" ")[1])
                while operand : ray_code += " %s," % operand.pop()
                ray_code = ray_code[0:-1]+" )\n{"

            ### [ Datatype conversions, truncations, reinterpretations, promotions, and demotions ] ###


            else: 
                print "[D] Instruction is not define yet : %s " %(data)
                raw_input("continue?>")

            if ( ray_code and not operand ):
                aLineList.insert(0,ray_code)
                ray_code =""

        stack = []
        '''
        print "#######################################"
        print aLineList
        print "#######################################"
        '''
        aLineList.append("}")
        return aLineList

    def replaceStr(self, _wastCook, _list ):
        retList = []
        i = 0
        for line in _list :
            if i >0 and i < (len(line)-1) : line = "\t" + line
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
        print "\n".join(e.replaceStr(w, stack))

if __name__ =="__main__":
    main()
