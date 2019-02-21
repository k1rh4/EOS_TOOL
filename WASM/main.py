from wastCook import *
from eosRay import *

PRJ = "eos3dio12345"
def main():
    w = wastCook()
    dic = w.getWast("./%s.wasm"%(PRJ))
    e = eosRay(dic)
    #e.Flair("./test.abi")

    ## DECOMPILE ALL OF THINGS AND SAVE
    e.save("./%s.decompile"%(PRJ))
    raw_input(">")

    while 1:
        print ", ".join(dic["func"])
        select = raw_input("CHOOSE FUNCTION>")
        stack = e.Postfix(dic["func"][select])
        #print stack
        source = e.ray(stack)
        ### beatiful source ###
        restore = e.replaceStr(source)
        #print e.showSource(restore)

if __name__ =="__main__":
    main()
