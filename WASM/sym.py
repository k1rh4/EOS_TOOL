import re 
from binarytree import Node
class node():
    def __init__(self, code=[]):
        self.parents     = None
        self.current     = None # Dummpy
        self.left        = None
        self.right       = None
        self.variable    = {}
        self.exp         = {}
        self.code        = code

        pass
    def insertLeft(self, node):
        if self.left == None : self.left = node;
    def insertRight(self, node):
        if self.right == None: self.right = node;
    def insertparents(self, node):
        if self.parents == None : self.parents = node;

class sym():
    #ArrayTree = [[0 for x in range(MAX_NODE)] for y in range(CNT_FUNC)]
    TreeList = [ None for x in range(100)]
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

    def __MakeTree(self, TreeNode, BB, _blockNum):
        print TreeNode.code
        lastLine = TreeNode.code[-1]
        if "if" in lastLine :
            label = re.findall("\$label\$[0-9]{1,}",lastLine)[0]
            for N in BB.keys():
                if ".LABEL" in BB[N][0]:
                    if label == re.findall("\$label\$[0-9]{1,}",BB[N][0])[0]:
                        print N
                        print _blockNum+1
                        raw_input("break>")
                        TreeNode.right = node(BB[N])
                        TreeNode.right.insertparents(TreeNode)
                        self.__MakeTree(TreeNode.right,BB, N)
                        
                        TreeNode.left = node(BB[_blockNum+1])
                        TreeNode.left.insertparents(TreeNode)
                        self.__MakeTree(TreeNode.left, BB, _blockNum+1)
                        break
        else:
            raw_input( "ELSE >%d"%_blockNum)
            if _blockNum+1 in BB.keys():
                TreeNode.right = node(BB[_blockNum+1])
                TreeNode.right.insertparents(TreeNode)
                self.__MakeTree(TreeNode.right, BB, _blockNum+1)
            return 

    def InsertNode(self, fName, BB, lastNode):
        fName = int(fName.strip("$"))
        self.TreeList[fName] = node(BB[0])
        self.__MakeTree(self.TreeList[fName], BB, 0)

        print self.TreeList[fName]

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

