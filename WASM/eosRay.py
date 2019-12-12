#from wastCook import *
import re
class eosRay():
    __wastCook=[]
    __func = {
            # funcName [ Count of arguments , returnFlag ]
            "$_ZdlPv"   :[1,0],
            "$_Znwj"    :[1,1],
            "$malloc"   :[1,1],
            "$free"     :[1,0],
            "$memcmp"   :[3,1],
            "$strlen"   :[1,1],
            }
    def __init__(self,wastCook):
        self.__wastCook = wastCook
    

    def save(self, fileName):
        sRes = ""
        f = open(fileName,"w")
        f.write('\n'.join(self.__wastCook['data'])+"\n")
        f.write('\n'.join(self.__wastCook['import'])+"\n")
        f.write('\n'.join(self.__wastCook['export'])+"\n")
        f.write('\n'.join(self.__wastCook['table'])+"\n")
        f.write('\n'.join(self.__wastCook['elem'])+"\n")
        f.write('\n'.join(self.__wastCook['global'])+"\n")

        if not self.__wastCook : return -1
        for func in self.__wastCook['func'].keys():
            stack = self.Postfix(self.__wastCook['func'][func])
            source = self.ray(stack)
            
            #restore = self.beautifulSrc(source)
            #restore = source
            restore = self.IR(source)
            restore = self.Flair(restore)
            f.write(self.showSource(restore))
            sRes += self.showSource(restore)
        f.close()
        print "[+] Save eosray data to %s (and return this)"%fileName 
        return sRes

    def __getData(self, variable):
        v = "(i32.const %s)" % variable
        for _data in self.__wastCook['data']:
            if v in _data :
                _data = _data[_data.find(v)::]
                _data = _data[_data.find("\"")+1:_data.find("\")")].strip()
                return _data
        return ""

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
                # Marking block and loop LABEL 
                if "block $" in tmp :
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
                        stack.append("\n.LABEL $"+i)
                        del label_dic[i]
                tmp =""
                if left and right and (left == right): break
            else: tmp += function[loc]
        return stack

    def __getFuncName( self, string ):
        for importList in self.__wastCook['import']:
            s = filter(None,re.split('[(, )"]',importList))
            if string in s :
                string = s[2]
                break

        for exportList in self.__wastCook['export']:
            s = filter(None,re.split('[(, )"]',exportList))
            if string in s :
                string = s[1]
                break
        return string

    def __getType( self, string ):
        retData = ""
        for data in self.__wastCook['type']:
            if (string+" ") in data : #The space is being for checking between $11 and $1
                if "(result " in data:
                    if "i32" in data.split("(result ")[1]: retData ="i"
                    if "i64" in data.split("(result ")[1]: retData ="j"
                    if "f64" in data.split("(result ")[1]: retData ="j"
                    if "f32" in data.split("(result ")[1]: retData ="i"
                else : retData = "v"

                if "(param " in data :
                    param = data.split("(param ")[1]
                    param = param[0:param.find(")")]
                    for iterator in param.split(" "):
                        if  iterator == "i32"    : retData +="i"
                        elif iterator =="i64"   : retData +="j"
                        elif iterator =="f64"   : retData +="j"
                        elif iterator =="i64"   : retData +="i"
                        else                    : pass
        return retData

    def __getGlobal( self , value ):
        retData = ""
        for data in self.__wastCook['global']:
            if value in data :
                ptr = data.split(value)[1].strip()
                if ptr[0] == "("    : _type = ptr[0:ptr.find(")")-1]
                else                :_type = ptr[0:ptr.find(" ")-1]
                ptr = ptr[0:ptr.find(_type)+len(_type)]
                if "mut i32" in _type   : retData = ptr.split("i32.const ")[1]
                elif "i32" in _type     : retData = ptr.split("i32.const ")[1]
                elif "i64" in _type     : retData = ptr.split("i64.const ")[1]
                else                    : raw_input("ERROR:__getGlobal >")
        return retData 
    def __getCallConv(self, fName):
        nRes = -1
        for func in self.__wastCook["func"].keys():
            if func  == fName:
                funcData == self.__wastCook["func"][func]

    def __getCallingConv( self, fName ):

        #fName = self.__getFuncName(fName)
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
                #NOTE case 
                # (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
                #(import "env" "memcpy" (func $fimport$12 (param i32 i32 i32) (result i32)))
                s = filter(None,re.split('[(, )"]',data))
                if fName in s:
                    param =""
                    #(import "env" "eosio_assert" (func $fimport$11 (param i32 i32)))
                    if "(result" in data    : retFlag = 1
                    if "(param" in data     :  
                        param   = data[data.find("(param")+len("(param")::]
                        param   = param[0:param.find(")")]
                        self.__func.update({fName:[nRes,retFlag]})
                        nRes    = param.count(" ")
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
            print self.__wastCook['import']
            raw_input ("[E] No data in [__getArguFromFunc : %s ]" % fName)

        return nRes, retFlag

    def ray( self , stack ):
        sourceList  = []
        operand     = []
        aLineList   = []
        paramList   = []
        localList   = []
        typeList    = ""
        funcNum     = 1

        while (stack):
            data = stack.pop()
            # DEBUGGING #
            '''
            print "[D] Source->",
            print sourceList 
            print "[D]   Operand-> ",
            print operand 
            print 
            print "[D]inst -> " +  data
            if "call" in data :
                raw_input("ray break >")
            '''
            ### [error code ] ### 
            if "module" in data         : print "[E] ray function is suppose to set only function"
            ### [ Control constructs and instructions ] ###
            elif "block" in data        : pass # ALREADY process in postfix function 
            elif "nop" in data          : sourceList.append(";")
            elif "loop" in data         : sourceList.append("\n.LOOP %s:" %(data.split(" ")[1]))
            elif "return" in data       : sourceList.append("return %s" % operand.pop()) if operand else sourceList.append("return ")
            elif "br_if" in data        : sourceList.append("if ( %s ){ goto %s }" % (operand.pop(), data.split(" ")[1]))
            elif "if" in data           : 
                #raw_input("[!] 'if' instruction is not implemented yet");
                #sourceList.append("if ( %s ) " % (operand.pop()))
                print "[D] if instruction";
                break;

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
            elif "f32.const" in data    : operand.append("(float_32)%s" %(data.split(" ")[1])) 
            elif "f64.const" in data    : operand.append("(float_64)%s" %(data.split(" ")[1])) 
            ### [ Type-parametric operators] ###
            elif "drop" in data         : sourceList.append(operand.pop()) # drop value of function
            elif "select" in data       : operand.append("( %s ? %s : %s )" %(operand.pop(),operand.pop(),operand.pop()))
            ### [ 32-bit Integer operators] ###
            elif "i32.reinterpret/f32" in data  : operand.append("(CASTING int_32)(float_32 %s)" %(operand.pop()))
            elif "i32.trunc_s/f32" in data : operand.append("(CASTING int_32)(float_32 %s)" %(operand.pop()))
            elif "i32.trunc_u/f32" in data : operand.append("(CASTING uint_32)(float_32 %s)" %(operand.pop()))
            elif "i32.trunc_s/f64" in data : operand.append("(CASTING int_32)(float_64 %s)" %(operand.pop()))
            elif "i32.trunc_u/f64" in data : operand.append("(CASTING uint_32)(float_64 %s)" %(operand.pop()))
            elif "i32.wrap/i64" in data : operand.append("(CASTING uint_32)(uint_64 %s)" %(operand.pop()))
            elif "i32.div_u" in data    : operand.append("((uint_32)%s / (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.div_s" in data    : operand.append("((int_32)%s / (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.shr_u" in data    : operand.append("uint_32(%s >> %s)" %(operand.pop(), operand.pop()))
            elif "i32.shr_s" in data    : operand.append("int_32(%s >> %s)" %(operand.pop(), operand.pop()))
            elif "i32.rotl" in data     : operand.append("(rotl((int_32) %s))" %(operand.pop()))
            elif "i32.rotr" in data     : operand.append("(rotr((int_32) %s))" %(operand.pop()))
            elif "i32.ge_u" in data     : operand.append("((uint_32)%s >= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.ge_s" in data     : operand.append("((int_32)%s >= (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.lt_u" in data     : operand.append("(%s <= %s)" %(operand.pop(), operand.pop()))
            elif "i32.lt_s" in data     : operand.append("((int_32)%s < (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.gt_u" in data     : operand.append("((uint_32)%s > (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.gt_s" in data     : operand.append("((int_32)%s > (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.le_u" in data     : operand.append("((uint_32)%s <= (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.le_s" in data     : operand.append("((int_32)%s <= (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.rem_u" in data    : operand.append("((uint_32)%s %% (uint_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.rem_s" in data    : operand.append("((int_32)%s %% (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.neg" in data      : operand.append("!(int_32)%s" %(operand.pop()))
            elif "i32.abs" in data      : operand.append("(int_32)|%s|" %(operand.pop()))
            elif "i32.add" in data      : operand.append("(%s + %s)" %(operand.pop(), operand.pop()))
            elif "i32.eqz" in data      : operand.append("(%s == 0)" %(operand.pop()))
            elif "i32.shl" in data      : operand.append("(%s << %s)" %(operand.pop(), operand.pop()))
            elif "i32.and" in data      : operand.append("(%s & %s)" %(operand.pop(), operand.pop()))
            elif "i32.mul" in data      : operand.append("((int_32)%s * (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.sub" in data      : operand.append("(%s - %s)" %(operand.pop(), operand.pop()))
            elif "i32.xor" in data      : operand.append("((int_32)%s ^ (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.or" in data       : operand.append("(%s | %s)" %(operand.pop(), operand.pop()))
            elif "i32.eq" in data       : operand.append("((int_32)%s == (int_32)%s)" %(operand.pop(), operand.pop()))
            elif "i32.ne" in data       : operand.append("((int_32)%s != (int_32)%s)" %(operand.pop(), operand.pop()))
            ### [ 64-bit Integer operators] ###
            #i64.trunc_u/f64
            elif "i64.trunc" in data    : operand.append("(Rounds 0)(%s)" %(operand.pop()))
            elif "i64.reinterpret/f64" in data: operand.append("(CASTING int_64)(float_64 %s)" %(operand.pop()))
            elif "i64.extend_u/i32" in data : operand.append("(CASTING uint_64)(uint_32 %s)" %(operand.pop()))
            elif "i64.extend_s/i32" in data : operand.append("(CASTING int_64)(int_32 %s)" %(operand.pop()))
            elif "i64.shr_s" in data    : operand.append("(int_64)%s >> (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.rotl" in data     : operand.append("(rotl((int_64) %s))" %(operand.pop()))
            elif "i64.shr_u" in data    : operand.append("(uint_64)%s >> (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.div_s" in data    : operand.append("((int_64)%s / (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.div_u" in data    : operand.append("((uint_64)%s / (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.lt_u" in data     : operand.append("(uint_64)(%s <= %s)" %(operand.pop(), operand.pop()))
            elif "i64.lt_s" in data     : operand.append("((int_64)%s < (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.gt_u" in data     : operand.append("((uint_64)%s > (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.gt_s" in data     : operand.append("((int_64)%s > (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ge_u" in data     : operand.append("((uint_64)%s >= (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ge_s" in data     : operand.append("((int_64)%s >= (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.le_u" in data     : operand.append("((uint_64)%s <= (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.le_s" in data     : operand.append("((int_64)%s <= (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.rem_u" in data    : operand.append("((uint_64)%s %% (uint_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.rem_s" in data    : operand.append("((int_64)%s %% (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.neg" in data      : operand.append("!(int_64)%s" %(operand.pop()))
            elif "i64.abs" in data      : operand.append("(int_64)|%s|" %(operand.pop()))
            elif "i64.add" in data      : operand.append("((int_64)%s + (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.eqz" in data      : operand.append("(int_64)(%s == 0)" %(operand.pop()))
            elif "i64.shl" in data      : operand.append("((int_64)%s << (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.and" in data      : operand.append("((int_64)%s & (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.mul" in data      : operand.append("((int_64)%s * (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.sub" in data      : operand.append("(int_64))(%s - %s)" %(operand.pop(), operand.pop()))
            elif "i64.xor" in data      : operand.append("((int_64)%s ^ (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.eq" in data       : operand.append("((int_64)%s == (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.or" in data       : operand.append("((int_64)%s | (int_64)%s)" %(operand.pop(), operand.pop()))
            elif "i64.ne" in data       : operand.append("((int_64)%s != (int_64)%s)" %(operand.pop(), operand.pop()))
            ### [32-bit float operators ] ###
            elif "f32.reinterpret/i32" in data  : operand.append("(CASTING float_32)(int_32 %s)" %(operand.pop()))
            elif "f32.convert_u/i64" in data: operand.append("(CASTING float_32)(uint_64 %s)" %(operand.pop()))
            elif "f32.convert_s/i64" in data: operand.append("(CASTING float_32)(int_64 %s)" %(operand.pop()))
            elif "f32.convert_u/i32" in data: operand.append("(CASTING float_32)(uint_32 %s)" %(operand.pop()))
            elif "f32.convert_s/i32" in data: operand.append("(CASTING float_32)(int_32 %s)" %(operand.pop()))
                #f32.demote/f64 # it could be security issue...
            elif "f32.demote/f64" in data   : operand.append("(DEMOTE float_32)(float_64 %s)" %(operand.pop()))
            elif "f32.trunc" in data    : operand.append("(Rounds 0)(%s)" %(operand.pop()))
            elif "f32.neg" in data      : operand.append("!(float_32)%s" %(operand.pop()))
            elif "f32.mul" in data      : operand.append("((float_32)%s * (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.abs" in data      : operand.append("(float_32)|%s|" %(operand.pop()))
            elif "f32.add" in data      : operand.append("((float_32)%s + (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.eqz" in data      : operand.append("(float_32)(%s == 0)" %(operand.pop()))
            elif "f32.shl" in data      : operand.append("((float_32)%s << (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.and" in data      : operand.append("((float_32)%s & (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.mul" in data      : operand.append("((float_32)%s * (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.sub" in data      : operand.append("(float_32))(%s - %s)" %(operand.pop(), operand.pop()))
            elif "f32.div" in data      : operand.append("((float_32)%s / (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.eq" in data       : operand.append("((float_32)%s == (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.gt" in data       : operand.append("((float_32)%s > (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.ne" in data       : operand.append("((float_32)%s != (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.le" in data       : operand.append("((float_32)%s <= (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.lt" in data       : operand.append("((float_32)%s < (float_32)%s)" %(operand.pop(), operand.pop()))
            elif "f32.ge" in data       : operand.append("((float_32)%s >= (float_32)%s)" %(operand.pop(), operand.pop()))
            ### [64-bit float operators ] ###
            #reinterpret the bits of a 32-bit float as a 32-bit Integer
            #f64.promote/f32
            elif "f64.promote/f32" in data      : operand.append("(PROMOTE float_64)(float_32 %s)" %(operand.pop()))
            elif "f64.reinterpret/i64" in data  : operand.append("(CASTING float_64)(int_64 %s)" %(operand.pop()))
            elif "f64.convert_s/i64" in data    : operand.append("(CASTING float_64)(int_64 %s)" %(operand.pop()))
            elif "f64.convert_u/i64" in data    : operand.append("(CASTING float_64)(uint_64 %s)" %(operand.pop()))
            elif "f64.convert_s/i32" in data    : operand.append("(CASTING float_64)(int_32 %s)" %(operand.pop()))
            elif "f64.convert_u/i32" in data    : operand.append("(CASTING float_64)(uint_32 %s)" %(operand.pop()))
            elif "f64.trunc" in data    : operand.append("(Rounds 0)(%s)" %(operand.pop()))
            elif "f64.min" in data      : operand.append("min ( (float_64)%s , (float_64)%s )" %(operand.pop(),operand.pop()))
            elif "f64.max" in data      : operand.append("max ( (float_64)%s , (float_64)%s )" %(operand.pop(),operand.pop()))
            elif "f64.neg" in data      : operand.append("!(float_64)%s" %(operand.pop()))
            elif "f64.abs" in data      : operand.append("(float_64)|%s|" %(operand.pop()))
            elif "f64.add" in data      : operand.append("((float_64)%s + (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.eqz" in data      : operand.append("(float_64)(%s == 0)" %(operand.pop()))
            elif "f64.shl" in data      : operand.append("((float_64)%s << (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.and" in data      : operand.append("((float_64)%s & (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.mul" in data      : operand.append("((float_64)%s * (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.sub" in data      : operand.append("(float_64))(%s - %s)" %(operand.pop(), operand.pop()))
            elif "f64.div" in data      : operand.append("((float_64)%s / (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.eq" in data       : operand.append("((float_64)%s == (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.gt" in data       : operand.append("((float_64)%s > (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.ne" in data       : operand.append("((float_64)%s != (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.le" in data       : operand.append("((float_64)%s <= (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.lt" in data       : operand.append("((float_64)%s < (float_64)%s)" %(operand.pop(), operand.pop()))
            elif "f64.ge" in data       : operand.append("((float_64)%s >= (float_64)%s)" %(operand.pop(), operand.pop()))
            ## [ Resizing ] ###
            elif "current_memory" in data   : operand.append("(current_memory)")
            #elif "i32.load8_u" in data     : operand.append( "*(int_8)(%s)" %(operand.pop()) )
            #elif "i32.load16_s" in data    : pass
            #elif "i32.load16_u" in data    : pass
            #elif "i64.load8_s" in data     : pass
            #elif "i64.load8_u" in data     : pass
            #elif "i64.load16_s" in data    : pass
            #elif "i64.load16_u" in data    : pass
            #elif "i64.load32_s" in data    : pass
            #elif "i64.load32_u" in data    : pass
            #elif "i64.load" in data        : pass
            #elif "f64.load" in data        : pass
            #elif "i32.store8" in data      : pass
            #elif "i32.store16" in data     : pass
            #elif "i32.store" in data       : pass
            #elif "i64.store8" in data      : pass
            #elif "i64.store16" in data     : pass
            #elif "i64.store32" in data     : pass
            #elif "i64.store" in data       : pass
            #elif "f32.store" in data       : pass
            #elif "f65.store" in data       : pass
            ####################################################################################
            elif ".load" in data     : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var = ""
                if var  : operand.append("*(%s + [%s])" %(operand.pop(),var) )
                else    : operand.append("*(%s)" %(operand.pop()))
            elif ".store" in data    : 
                if len(data.split("offset=")) > 1   : var  = data.split("offset=")[1]
                else                                : var  = ""
                if var  : sourceList.append("*(%s + [%s]) = %s" %(operand.pop(), var, operand.pop()))
                else    : sourceList.append("*(%s) = %s" %(operand.pop(), operand.pop()))

            ### [ Calls ] ###
            ### NOT COMPLETE YET (no type call_indirect) ###
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
                    function = "CALL %s(%s)" %( function, ', '.join(l))
                    if typeList[0] == "v"   : sourceList.append(function)
                    else                    : operand.append(function)
                    typeList = ""
                    funcNum += 1 
                else: raw_input("[E] Call_indirect:There is no type >")
            elif "call" in data:
                fName = data.split(" ")[1].strip()
                countArgument, retFlag = self.__getCallingConv(fName)
                #countArgument, retFlag = self.__getCallConv(fName)
                l = []
                for i in range(countArgument): l.append(operand.pop())
                if retFlag  : operand.append("CALL %s(%s)" % (fName, (", ".join(l))))
                else        : sourceList.append("CALL %s(%s)" % (fName, (", ".join(l))))
                funcNum += 1
            ### [ Functaion Calling Convention ###
            elif "param" == data[0:5]   : paramList.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))
            elif "local" == data[0:5]   : localList.append("%s %s" % (data.split(" ")[2], data.split(" ")[1]))
            elif "result " in data      : typeList ="i" #operand.append("return %s" % (data.split(" ")[1]))
            ### INDIRECT CALL .....###
            elif "type $" in data       : typeList = self.__getType(data)
            ### [ End of entire logic ] ###
            elif "func $" in data :
                fName = data.split(" ")[1]
                #fName = self.__getFuncName(fName)
                remainStack = []
                # PARAMETER 
                while localList : remainStack.append(localList.pop())
                while operand   : 
                    remainOperand = operand.pop()
                    if "CALL" in remainOperand : remainStack.append(remainOperand)
                    else                        : sourceList.insert(0,remainOperand)
                while remainStack : sourceList.append(remainStack.pop())
                while paramList : remainStack.append(paramList.pop())
                function = "%s (%s)\n{" %(fName, ', '.join(remainStack))
                if typeList :
                    if typeList[0] =="v" : function ="void .FUNC %s" % (function)
                    if typeList[0] =="i" : function ="int_32 .FUNC %s" % (function)
                    if typeList[0] =="j" : function ="int_64 .FUNC %s" % (function)
                # STACK CONSUME # -> NEED SOMETHING CHANGE.... I DON'T UNDERSTAND WHY STACK REMAIN ( It used to return value )
                # MAKE SOURCE
                while sourceList:
                    remainStack = sourceList.pop()
                    if (("return " in remainStack) and (not typeList)) : 
                        function = "%s %s" % (remainStack.split(" ")[1], function)
                    else : aLineList.append(remainStack)
                aLineList.insert(0,function)
            elif "label" in data        : sourceList.append(data)
            elif data.count(";")>1      : pass
            elif "grow_memory" in data  : pass
            else                    : raw_input ("[D] Instruction is not define yet : %s " %(data))
        # MAKE RETURN VALUE #
        if typeList :
            if typeList[0] != "v" and len(aLineList)>0 : aLineList.append("return %s" % aLineList.pop().strip())
        aLineList.append("}")
        return aLineList
    
    # 2019.04.15 ...  Not finished yet. I,m sick of this logic.... 
    # import Export symbol restore, && Abi file symbol resture 
    def Flair(self, source ):
        retList     = []
        # import Export Symobl resture 
        for line in source:
            lineType=""
            if ".FUNC"  in line : lineType = ".FUNC"
            if "CALL"   in line : lineType = "CALL"
            if lineType :
                name = line[line.find(lineType)+len(lineType)::]
                name = name[0:name.find("(")].strip()
                fName = self.__getFuncName(name)
                line = line.replace(" "+name, " "+fName)
            retList.append(line)
        return retList

    def IR( self, _list ):
        arguList    = [] 
        retList     = []
        FUNC_FLAG   = ""
        i           = 0
        for line in _list :
            if ".LOOP" in line or ".LABEL" in line : pass
            elif ".FUNC" in line: FUNC_FLAG = "@F%s_" % line.split(".FUNC $")[1].split(" (")[0]
            
            # Give unique name to every variable 
            line = re.sub(r"(\$var)(\$[0-9]{1,})",r'%s\2'% FUNC_FLAG,line)
            
            # Remove duplicated types expression
            line = line.replace("(int_64)(int_64)","(int_64)").replace("(int_32)(int_32)","(int_64)")
            line = line.replace("  "," ").replace("i32","int_32").replace("i64","int_64")
            line = line.replace("f32","float_32").replace("f64","float_64")

            while 1:
                value, semantic = self.__takeOutArgu(line)
                if value and semantic :
                    strip_semantic = semantic.strip()
                    tmp = semantic
                    if(strip_semantic[0]=="(" and strip_semantic[-1]==")"):
                        semantic = strip_semantic[1:-1]
                    
                    retList.append(semantic)
                    line = line.replace(tmp,value)
                else: break
            retList.append(line)
            i+=1
        return retList

    ### Change .data to strings 
    def beautifulSrc( self, _list ):
        arguList = [] 
        retList = []
        i = 0
        for line in _list :
            if ".LOOP" in line or ".LABEL" in line :
                pass
            elif ".FUNC" in line:
                arguList = re.findall("\$[0-9]",line[line.find("("):line.find(")")]) # parsing $num

                if arguList :
                    paramNum = len(arguList)-1
                    b = line[0:line.find("(")]
                    f = line[line.find("(")::]
                    line = b + re.sub(r"(\$var)(\$[0-%d]{1}[^0-9])"%paramNum,r'Arg\2',f)
                    if 1!=1 : # For Mack version wasm-dis 
                        line = b + re.sub(r"([^a-z])(\$[0-%d]{1}[^0-9])"%(paramNum),r'\1Arg\2',f)
            elif arguList :
                paramNum = len(arguList)-1
                # Do not change Arg\1 -> Arg[\1]
                #line = re.sub(r"([^a-z])(\$[0-%d]{1}[^0-9])"%(paramNum),r'\1Arg\2',line)
                line = re.sub(r"(\$var)(\$[0-%d]{1}[^0-9])"%(paramNum),r'Arg\2',line)
                if 1!=1 : #For MAC version wasm-dis
                    line = re.sub(r"([^a-z]|^)(\$[0-%d]{1}([^0-9]|$))"%(paramNum),r'\1Arg\2',line)
            else:
                pass
            # present .data string 
            for variable in re.findall("(?<=\[).+?(?=\])",line): # parsing [ ] 
                strData  = self.__getData(variable)
                if len(strData) > 0 : 
                    if not ".data %s -> [\"%s\"]"%(variable, strData) in retList:
                        retList.insert(0,".data %s -> [\"%s\"]"%(variable, strData) )
                    line += " # .data %s -> [\"%s\"]".rjust(30) % (variable, strData.split("\\00")[0])
                else : line = line.replace(("*%s*" % variable), "(int)%s"%variable)

            # Remove duplicated types expression
            line = line.replace("(int_64)(int_64)","(int_64)").replace("(int_32)(int_32)","(int_64)")
            line = line.replace("  "," ").replace("i32","int_32").replace("i64","int_64")
            line = line.replace("f32","float_32").replace("f64","float_64")
            
            while 1:
                value, semantic = self.__takeOutArgu(line)
                if value and semantic :
                    strip_semantic = semantic.strip()
                    tmp = semantic
                    if(strip_semantic[0]=="(" and strip_semantic[-1]==")"):
                        semantic = strip_semantic[1:-1]
                    
                    semantic = semantic.replace(" = ","\t = ")
                    retList.append(semantic)
                    line = line.replace(tmp,value)
                else: break
            
            retList.append(line)
            i+=1

        return retList

    def __takeOutArgu(self, line):
        if " = " in line :
            loc = line.rfind(" = ")
            c   = loc
            while loc > 0 :
                loc  -= 1
                if "(" == line[loc]: break
                if ")" == line[loc]:
                    loc = 0
                    break;
            if loc != 0 :
                value = line[loc+1:c]
                left    = 1
                right   = 0
                start = loc
                while 1:
                    loc +=1
                    if "(" == line[loc] : left  +=1
                    if ")" == line[loc] : right +=1
                    if left == right : break
                semantic = line[start:loc+1]
                return value, semantic
        return "",""

    def showSource( self, source ):
        indentFlag = 0
        source.insert(0,"\n");
        for i in range(len(source)) :
            if indentFlag > 0 : source[i] = "\t" + source[i] #indent
            indentFlag  += source[i].count("{")
            indentFlag  -= source[i].count("}")
            if indentFlag == 0 : source[i] = source[i].strip("\t");

        return "\n".join(source)
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
        e.showSource(e.beautifulSrc(w, stack))

if __name__ =="__main__":
    main()
'''
