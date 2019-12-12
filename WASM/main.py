from wastCook import *
from eosRay import *
from sym import *
import sys

def main():
    PRJ = "./sendcc.wasm"
    if len(sys.argv) > 1 :
        PRJ = sys.argv[1]

    w = wastCook()
    dic = w.getWast("%s"%(PRJ))
    e = eosRay(dic)

    ## DECOMPILE ALL OF THINGS AND SAVE
    source = e.save("%s.decompile"%(PRJ))
    #s = sym(source)
    #s.MakeBB()
    ## FOR STEP TEST ##
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
        restore = e.beautifulSrc(source)
        print e.showSource(restore)
        i+=1
    '''
if __name__ =="__main__":
    main()
