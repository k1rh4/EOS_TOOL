import re 

CNT_FUNC    = 100
MAX_NODE    = 1000000
class sym():
    ArrayTree = [[0 for x in range(MAX_NODE)] for y in range(CNT_FUNC)]
    def __init__(self, IRCode): self.IRCode = IRCode
    def left (self, objList, i): self.dfs(objList, i+1)
    def right(self, objList, i): self.dfs(objList, 2*i+1)
    def dfs(self, objStack, i): 
        if(not objStack[i]): 
            # Judge logic 
            return 1
        else :
            oList = objStack
            oList.append(obj[i])
            self.right(oList, i)
            self.left(oList, i)

    def extractVar(self, line):
        fName       = re.findall("[^_]\$[0-9]{1,}", line)[0].strip()
        variable    = re.findall("F[0-9]{1,2}_\$[0-9]{1,}", line)
        fName = fName[1::] # $29 -> 29
        return fName,variable
    
    def displayBB(self, BB):
        i = 0
        while 1:
            if i not in BB.keys() : break;
            print i
            for data in BB[i]:
                print data
            i+=1
    
    def __SearchBranchNode(self, BB, blockNum):
        pass

    def __MakeTree(self, fName, _nodeNum, BB, _blockNum):
        blockNum    = _blockNum
        nodeNum     = _nodeNum
        if blockNum in BB.keys() and not self.ArrayTree[fName][nodeNum]: 
            print ":::::::::::::::::::"
            print "Basic Block : ",
            print BB[blockNum]
            print "FName : ",
            print fName
            print "Node Num : ",
            print nodeNum
            print "Block Num : ",
            print blockNum
            #NOTE : You can save other object to ArrayTree
            self.ArrayTree[fName][nodeNum] = BB[blockNum]
            raw_input("Insert Tree>")
        else : return 
        tBB = BB[blockNum]
        if "if" in tBB[-1] : 
            label = re.findall("\$label\$[0-9]{1,}",tBB[-1])
            if len(label)>0 : 
                label = label[0]
                # Find next node and insert right node 
                for key in BB.keys():
                    cmpStr = ""
                    if ".LABEL" in BB[key][0] :
                        cmpStr = BB[key][0].split(" ")[1]
                        if label == cmpStr:
                            self.__MakeTree(fName, 2*nodeNum+2, BB, key)
                            self.__MakeTree(fName, 2*nodeNum+1, BB, blockNum+1)
                            return 
                        else : pass
        else: self.__MakeTree(fName, 2*nodeNum+2, BB, blockNum+1)

    def InsertNode(self, fName, BB, lastNode):
        fName = int(fName.strip("$"))
        self.__MakeTree(fName, 0, BB, 0)
        print self.ArrayTree[fName]

    def MakeBB(self):
        print "[D] BB Start "
        # dictionary Tree is the best .. em.. code, variables, expressions, 
        dicObj = {"code":[],"var":[{},],"exp":""}
        IRCode = self.IRCode.split("\n")
        BB      = {}
        tmpList = []
        for line in IRCode:
            if len(line.strip())>0:
                if ".FUNC" in line :
                    tmpList.append(line)
                    fName, variable = self.extractVar(line)
                    tag = 0
                elif("{" == line[0]): pass
                elif("if" in line):
                    tmpList.append(line)
                    BB.update({tag:tmpList})
                    tmpList = []
                    tag+=1
                elif(".LABEL" in line):
                    if len(tmpList)>0 :
                        BB.update({tag:tmpList})
                        tag+=1
                    tmpList = []
                    tmpList.append(line)

                elif(".LOOP" in line):
                    if len(tmpList)>0 :
                        BB.update({tag:tmpList})
                        tag+=1
                    tmpList = []
                    tmpList.append(line)

                elif("}" == line[0]):
                    BB.update({tag:tmpList})
                    self.InsertNode(fName, BB, tag);
                    tmpList = []
                    tag+=1
                    #self.displayBB(BB)
                    BB={}
                    raw_input(">")
                else: tmpList.append(line)

    def taint(self):
        print "[D] Taint "

