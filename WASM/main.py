from wastCook import *
from eosRay import *

def main():
    w = wastCook()
    dic = w.getWast("./test.wast")

    while 1:
        ### SHOW FUNCTIONS FROM wastCook ###
        print ", ".join(dic["func"])

        ### CHOOSE FUNCTION ###
        hello = raw_input(">").strip()

        e = eosRay(dic)
        stack = e.Postfix(dic["func"][hello])

        #print stack
        source = e.ray(stack)
        ### beatiful source ###
        restore = e.replaceStr(w, source)
        e.showSource(restore)

if __name__ =="__main__":
    main()
