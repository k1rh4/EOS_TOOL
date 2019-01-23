from nodeos import *
import sys

if len(sys.argv) > 1 :
    mod = 1
    n = Nodeos(mod)
    n.runNodeos()


#print "---------------------------------------------------"
#print "[I] RUN NODEOS" 
#cmdline = ["/EOS/nodeos" , "-e", "-p" , "eosio","--plugin" ,"eosio::chain_api_plugin" , "--plugin" ,"eosio::history_api_plugin","--verbose-http-errors" ,"--contracts-console","--delete-all-blocks","--hard-replay-blockchain" ]

#nodeos_process = subprocess.Popen(cmdline,stderr=subprocess.PIPE , stdout=subprocess.PIPE)



for i in range(0,3):
    print "---------------------------------------------------"

    randomName = ''.join(random.choice(string.ascii_lowercase) for _ in range(6))
    print "[+] random Name : %s " % randomName
    if i == 0: randomName = "eosio.token"
    print "[I] Create wallet "
    cmdLine = [ "/EOS/cleos", "wallet", "create", "-n", randomName ]

    wallet_process = subprocess.Popen(cmdLine, stdout=subprocess.PIPE)
    for line in iter(wallet_process.stdout.readline,''): print line,


    cmdline = ["/EOS/cleos" ,"create","key"]
    key_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
    key_process.wait()
    priv_key    = str(key_process.stdout.readline()[13:-1])
    pub_key     = str(key_process.stdout.readline()[12:-1])

    print "[+] pub_key : %s " % pub_key
    print "[+] priv_key: %s " % priv_key


    cmdline = ["/EOS/cleos", "wallet", "import", "-n", randomName, "--private-key", priv_key]
    wallet_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
    for line in iter(wallet_process.stdout.readline,''): print line,


    eosio_key = "5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3"
    cmdline = ["/EOS/cleos", "wallet", "import", "-n", randomName, "--private-key", eosio_key]
    wallet_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
    wallet_process.wait()
    for line in iter(wallet_process.stdout.readline,''): print line,


    cmdline = ["/EOS/cleos", "create", "account", "eosio", randomName, pub_key]
    account_process = subprocess.Popen(cmdline, stdout=subprocess.PIPE)
    account_process.wait()
    for line in iter(account_process.stdout.readline,''): print line,


    cmdline = ["/EOS/cleos" ,"set","contract", randomName ,"[Contract Path]" ]
    print "------------------------------------------"
    print "[I] SET CONTRACT COMMAND LINE"
    print " ".join(cmdline)
if len(sys.argv)>1:
    import time
    time.sleep(1000)
    raw_input("STOP?>")

