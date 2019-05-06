/home/reset/eos/build/programs/cleos/cleos wallet unlock --password PW5JpwgTg68Q5bae5RzinbDdWuchFwErxyqDLcMk2x8S9bT7TCiyc
/home/reset/eos/build/programs/cleos/cleos wallet unlock -n reset --password PW5Hr86T8YRRYxNfGqMb1n3ty5ZSvhHrq1fAuHPPzvcEBqDRcqKb6
/home/reset/eos/build/tools/eosiocpp -o loop/loop.wast loop.cpp
/home/reset/eos/build/tools/eosiocpp -g loop/loop.abi loop.cpp
/home/reset/eos/build/programs/cleos/cleos set contract reset loop

