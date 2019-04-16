class sym():
    IRCode 
    
    CNT_FUNC    = 100
    MAX_NODE    = 10000
    ArrayTree=[CNT_FUNC][MAX_NODE] # ArrayTree
    def __init__(self, IRCode):
        self.IRCode = IRCode
 
    def left(self, objList, i ): self.dfs(objList, 2*i+1)
    def right(self, objList, i): self.dfs(objList, 2*i+2)

    def dfs(self, objStack, i): 
        if(not objStack[i]): 
            # Judge logic 
            return 1
        else :
            oList = objStack
            o.append(obj[i])
            self.right(oList, i)
            self.left(oList, i)

    def BB(self):
        print "[D] BB Start "
        # dictionary Tree is the best .. em.. code, variables, expressions, 
        dic = {"code":[],"var":[{},],"exp":""}
        
    def taint(self):
        print "[D] Taint "





