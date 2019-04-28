#include <eosiolib/action.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/contract.hpp>
#include <eosiolib/datastream.hpp>
#include <eosiolib/dispatcher.hpp>
#include <eosiolib/eosio.hpp>
// #include <eosio/fixed_key.hpp>
// #include <eosio/fixedpoint.hpp>
// #include <eosio/memory.hpp>
#include <eosiolib/multi_index.hpp>
#include <eosiolib/permission.hpp>
#include <eosiolib/print.hpp>
#include <eosiolib/privileged.hpp>
#include <eosiolib/producer_schedule.hpp>
#include <eosiolib/public_key.hpp>
#include <eosiolib/serialize.hpp>
#include <eosiolib/singleton.hpp>
#include <eosiolib/stdlib.hpp>
#include <eosiolib/symbol.hpp>
#include <eosiolib/time.hpp>
#include <eosiolib/transaction.hpp>
#include <eosiolib/varint.hpp>
#include <eosiolib/action.h>
#include <eosiolib/chain.h>
// #include <eosio/compiler_builtins.h>
#include <eosiolib/crypto.h>
#include <eosiolib/db.h>
#include <eosiolib/permission.h>
#include <eosiolib/print.h>
#include <eosiolib/privileged.h>
#include <eosiolib/system.h>
#include <eosiolib/transaction.h>
#include <eosiolib/types.h>

using namespace eosio;
using namespace std;

class [[eosio::contract]] loop : public contract {
public:
    using contract::contract;

    [[eosio::action]]
    void main(uint64_t currentContract, uint64_t idx, uint64_t randNum){
	int N = 0;
	name curerntChildContract = "client"_n;
    transaction out{};
    N = 11;
    out.actions.emplace_back(permission_level{"client"_n, "active"_n}, "loop"_n, "main"_n, std::make_tuple("client"_n, uint64_t(idx + N), uint64_t(randNum)));
    out.delay_sec = 0;
    out.send((idx+N), "client"_n, false);
    
    N = 13;
    transaction out2{};
    out2.actions.emplace_back(permission_level{"client"_n, "active"_n}, "loop"_n, "main"_n, std::make_tuple("client"_n, uint64_t(idx + N), uint64_t(randNum)));
    out2.delay_sec = 0;
    out2.send((idx + N), "client"_n, false);
    
    N = 17;
    transaction out3{};
    out3.actions.emplace_back(permission_level{"client"_n, "active"_n}, "loop"_n, "main"_n, std::make_tuple("client"_n, uint64_t(idx + N), uint64_t(randNum)));
    out3.delay_sec = 0;
    out3.send((idx +N), "client"_n, false);
    
    N =23;        
    transaction out4{};
    out4.actions.emplace_back(permission_level{"client"_n, "active"_n}, "loop"_n, "main"_n, std::make_tuple("client"_n, uint64_t(idx + N), uint64_t(randNum)));
    out4.delay_sec = 0;
    out4.send((idx + N), "client"_n, false);

//  out.send((idx + N), "client"_n, false);
    print("[#] loop : ", curerntChildContract, " - ", idx);
    }
};

EOSIO_DISPATCH( loop, (main))
