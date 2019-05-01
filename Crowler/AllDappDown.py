import os
import time 

with open("../INFO/user.txt","r") as f :
    UserList = f.readlines()


for USER_NAME in UserList :
    time.sleep(0.1)
    os.system("./down_abi_move.sh %s"%(USER_NAME.strip()))

