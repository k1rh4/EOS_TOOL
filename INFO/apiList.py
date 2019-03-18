import sys
import re
apiList = []

def main(FILE_NAME):
    global apiList
    with open("./apiList.txt","r") as f :
        for api in f.readlines():
            if len(api)<2: pass
            else : api = api.strip()

            apiList.append(api)

        
    with open(FILE_NAME,"r") as f :
        for data in f.readlines() :
            if "(import " in data:
                api = re.findall("(?<=\").+?(?=\")",data)
                apiList.extend(api)
                apiList = list(set(apiList))
    
    for api in apiList :
        if len(api)<2 : apiList.remove(api)

    apiList = sorted(apiList)


if __name__ =="__main__":
    FILE_NAME = ""
    if len(sys.argv)< 1:
        sys.exit(0);
    else:
        FILE_NAME=sys.argv[1]

    main(FILE_NAME)
    
    with open("apiList.txt","w+") as f1: 
        writeData = "\n".join(apiList);
        print writeData
        f1.write(writeData);

