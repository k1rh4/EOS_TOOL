from wastCook import *


class eoray():
    __func = {"$malloc":1,"$memset":3,"$memcpy":3,"$action_data_size":0 }
    __source_code =""
    rayList = []
    ray_code = []
    def __init__(self,fileName="./sample.wast"):
        with open (fileName) as f : w = f.readlines()
        for line in w :
            self.__source_code += line.strip()
            if self.__source_code.count("(")  == self.__source_code.count(")"):
                break
        #[D]
        print self.__source_code

    def Postfix(self, function = "" ):
        function = self.__source_code
        left    = 0
        right   = 0 
        loc     = 0
        tmp     = ""
        stack   = []
        breakFlag = 0
        while (loc < len(function)):
            if function[loc] == "(" :
                left += 1
                if tmp.strip(): stack.append(tmp.strip())
                ####################################################
                if breakFlag == 1 : # dealing with function Name 
                    self.ray(stack) # pass only function Name 
                    loc     -= 1 # revert '('
                    left    -= 1
                    right   += 1 #Make trick for function end
                    breakFlag = 0
                ####################################################
                if loc == 0 : breakFlag = 1 # dealing with function Name 
                tmp =""
            elif function[loc] == ")" :
                right +=1
                if tmp : stack.append(tmp.strip())
                if left and right and (left == right):
                    self.ray(stack)
                    raw_input("<<<")
                tmp =""
            else: tmp += function[loc]
            loc = loc +1 
            #END WHILE#

    def __getArguFromFunc(self, fName):
        try : nRes = self.__func[fName]
        except :
            print "[E] there is no data for function [__getArguFormFunc : %s ]" % fName
            raw_input("stop>")
        return nRes

    def ray( self , stack ):
        print "[D] ray stack -> " ,
        print stack
        v = 0 ## variable count  
        s = 0 ## stack variable count
        lineFlag = 0 # print line 

        operand = []
        while 1:
            if not stack : break;
            data = stack.pop()
            if "module" in data : print "[E] ray function is suppose to set only function"

            elif "get_local" in data :
                var = data.split(" ")[1]
                operand.append(var)

            ####################### FUNCTION #########################
            elif "local $" in data:
                _argu = data.split(" ")[1]
                _type = data.split(" ")[2] 
                self.ray_code  = "%s %s" %(_type, _argu)
                lineFlag = 1

            elif "param $" in data:
                if(self.paramCnt):
                    _argu = data.split(" ")[1]
                    _type = data.split(" ")[2]
                    self.paramCnt -= 1
                    self.ray_code = self.ray_code + " ( %s %s )" % (_type, _argu) 
                    if not self.paramCnt : lineFlag = 1 
                else : print "[E] Error in Param "


            elif "type $" in data:
                callingConv = data.split("$")[-1]
                if callingConv[0] == "v"    : self.ray_code = self.ray_code
                elif callingConv[0] =="i"   : self.ray_code = "int32 " + self.ray_code
                elif callingConv[0] =="j"   : self.ray_code = "int64 " + self.ray_code 
                else                        : print "[E] calling Conv type Error"
                self.paramCnt = len(callingConv)-1
                if self.paramCnt<1: lineFlag = 1 

            elif "func $" in data:
                fName = data.split(" ")[1]
                self.ray_code = "%s" % fName

            ###################### FUNCTION END #####################

            elif "i32.const" in data :
                var = data.split(" ")[1]
                operand.append(var)

            elif "$var_" in data:
                operand.append(data)
    
            elif "set_local" in data:
                var = data.split(" ")[1]
                self.ray_code = "%s = %s" %(var, operand.pop())
                lineFlag = 1

            elif "call" in data:
                var = data.split(" ")[1]
                l = []
                for i in range(self.__getArguFromFunc(var)): l.append(operand.pop())
                self.ray_code = "%s(%s)" % (var, (",".join(l)))
                drop = stack.pop()

                v+=1
                if(drop != "drop"): 
                    self.ray_code = "$var_%d=%s" %((v),self.ray_code)
                    stack.append(drop)
                    stack.append("$var_%d"%(v))

                lineFlag = 1

            elif "br" in data:
                var = data.split(" ")[1]
                self.ray_code = "goto %s" % (var)
                lineFlag = 1
            elif "tee_local" in data:
                var == data.split(" ")[1]
            
            else:
                print "[D] Instruction is not define yet : %s " %(data)

            #print "[D] LINE CODE :%s , LINE_FLAG" + self.ray_code
            if ( self.ray_code and lineFlag ):
                self.rayList.append(self.ray_code)
                self.ray_code =""
                lineFlag = 0

        stack = []
        print "#######################################"
        print self.rayList
        print "#######################################"
def main():
    w = wastCook()
    dic = w.wast("./hello.wast")
    hello = dic["func"]["hello2hi"]

    # stack calc
    e = eoray()
    stack = e.Postfix()

if __name__ =="__main__":
    main()
