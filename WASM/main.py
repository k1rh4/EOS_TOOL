from wastCook import *


def main():
    w = wastCook()
    dic = w.wast("./hello.wast")

    hello = dic["func"]["hello2hi"]
    for i in hello :
        print i

if __name__ =="__main__":
    main()
