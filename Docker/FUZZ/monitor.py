import os
import shutil
from configParsor import ConfigParsor
class Monitor:
    def __init__(self, seedName,core_dir , crash_dir = "/tmp/crash" ):
        self._core_dir   = core_dir
        self._crash_dir = crash_dir
        with open("/FUZZ/config.ini","r") as f:
            datalist = f.readlines()
            self._testcase = ConfigParsor("TESTCASE",datalist)
            self._seed = seedName

        if os.path.isdir(core_dir) != True:
            os.mkdir(core_dir)

        if os.path.isdir(crash_dir) != True:
            os.mkdir("/tmp/crash")

    def crashMonitor(self, pid):
        from shutil import move
        import psutil
        import time
        for filename in  os.listdir(self._core_dir):
            if 1==1:
            #if filename.find("core")>=0  and (filename.split(".")[-1].find("6") == -1) :
                timer = time.time()
                if os.path.isdir("%s/%s" % (self._crash_dir,timer))==True:
                    timer = tiemr + 0.5
                os.mkdir("%s/%s" % (self._crash_dir, timer))
                
                #coredumpy copy
                src = "%s/%s" %(self._core_dir,filename)
                dst = "%s/%s" %(self._crash_dir,timer)
                if os.path.exists(src):
                    move(src,dst) 

                #copy stdout 
                src = "%s" %("/var/log/cron.log")
                dst = "%s/%s" %(self._crash_dir, timer)
                if os.path.exists(src):
                    shutil.copy(src,dst)
                
                #testcase directory copy
                src = "%s" %(self._testcase + self._seed+"/")
                dst = "%s/%s/testcase" % (self._crash_dir,timer)
                
                if os.path.exists(src):
                    shutil.copytree(src,dst)

                return True
        return False
