from wastCook import *
from eosRay import *
import sys

def main():
    PRJ = "../CONTRACT/zoltanfrnczf/zoltanfrnczf.wasm"
    if len(sys.argv) > 1 :
        PRJ = sys.argv[1]

    w = wastCook()
    dic = w.getWast("./%s"%(PRJ))
    e = eosRay(dic)

    ## DECOMPILE ALL OF THINGS AND SAVE
    e.save("./%s.decompile"%(PRJ))
    '''
    i = 0
    while 1:
        ### $73
        #print ", ".join(dic["func"])
        f = dic["func"].keys()[i]
        #f="$49"
        select = raw_input("CHOOSE FUNCTION> %s " %(f))
        select = f
        #select = raw_input("CHOOSE FUNCTION>")
        stack = e.Postfix(dic["func"][select])
        source = e.ray(stack)
        ### beatiful source ###
        restore = e.replaceStr(source)
        print e.showSource(restore)
        i+=1
    '''
if __name__ =="__main__":
    main()
