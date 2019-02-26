from wastCook import *
from eosRay import *
import sys

def main():
    PRJ = "../CONTRACT/danakilblock/danakilblock.wasm"
    if len(sys.argv) > 1 :
        PRJ = sys.argv[1]

    w = wastCook()
    dic = w.getWast("./%s"%(PRJ))
    e = eosRay(dic)
    #e.Flair("./%s.abi"%(PRJ))

    ## DECOMPILE ALL OF THINGS AND SAVE
    e.save("./%s.decompile"%(PRJ))










    '''
    raw_input("DECOMPILE AND SAVE DONE>")

    while 1:
        print ", ".join(dic["func"])
        select = raw_input("CHOOSE FUNCTION>")
        stack = e.Postfix(dic["func"][select])
        source = e.ray(stack)
        ### beatiful source ###
        restore = e.replaceStr(source)
        #print e.showSource(restore)
    '''
if __name__ =="__main__":
    main()
