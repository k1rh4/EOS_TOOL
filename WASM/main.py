from wastCook import *
from eosRay import *

def main():
    w = wastCook()
    dic = w.wast("./test.wast")

    while 1:
        ### SHOW FUNCTIONS FROM wastCook ###
        print "\n".join(dic["func"])

        ### CHOOSE FUNCTION ###
        hello = raw_input(">").strip()

        e = eosRay(dic)
        stack = e.Postfix(dic["func"][hello])

        #print stack
        source = e.ray(stack)
        ### beatiful source ###
        e.showSource(e.replaceStr(w, source))

if __name__ =="__main__":
    main()
