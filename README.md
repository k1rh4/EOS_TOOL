# EOS_TOOL

```
TOOLS
├── cleos           // client of eos
├── eosio-cpp       // smart contract compiler 
├── eosiocpp        // smart contract compiler (old)
└── wasm-dis        // convert wasm <-> wast
```



```
Crowler
├── AllDappDown.py      // Smart contract download through user list
├── abiCook.py          // Convert ABI.bin to ABI.json
├── down_abi_move.sh    
├── download_source.py  // Smart Contract source download from explorer (if only exist)
├── getDapp.py          // Smart Contract wasmfile donwload from users
├── getUser.py          // Get All user from explorer
└── moveToDocker.sh     // move smart contract to Docker directory
```


```
WASM
├── eosRay.py           // Decompiler from WASM to C
├── main.py             // Wrapper for eosRay
├── now.py              // Current project
├── traversal.py        // Traversal Contract (apply eosray whole contract)
├── wasmSymbolic.py     // Not implement yet
└── wastCook.py         // WAST parsor for eosRay.py

```


```
Docker
├── Dockerfile
├── EOS
│   ├── Disassemble
│   ├── cleos
│   ├── cleos_without_wast
│   ├── eosio-wast2wasm
│   ├── keosd
│   └── nodeos
├── FUZZ # YOU DONT HAVE TO USE THIS..
│   ├── apiCook.py
│   ├── apiList.txt
│   ├── config.ini
│   ├── configParsor.py
│   ├── fuzz.py 
│   ├── hello
│   ├── monitor.py
│   ├── mutator.py
│   ├── nodeos.py
│   ├── radamsa
│   ├── replay
│   ├── runNode.py
│   └── wastCook.py
├── SHARE # ONLY USE THIS 
│   ├── CONTRACT
│   ├── eosio.token     ## EOS TOKEN CONTRACT
│   ├── getAccount.js
│   ├── getRaminfo.sh   ## GET RAM INFOMATION FROM USERS
│   ├── makeMoney.sh    ## MAKE TOKEN
│   ├── makeUser.sh     ## MAKE 3 USERS (Only if Nodeos is running)
│   ├── node_modules
│   ├── push_transaction.sh
│   ├── runNode.sh      ## RUN TEST NODEOS
│   ├── setContract.sh  ## SET CONTRACT INTO NODEOS
│   ├── setPush.js
│   └── userInfo.db
├── TEST    
│   ├── abort.c
│   └── segfault.c
├── entry.sh    
├── run_docker.sh   ## usage [ ./run_docker.sh efuzz ]
└── stop.sh

```
