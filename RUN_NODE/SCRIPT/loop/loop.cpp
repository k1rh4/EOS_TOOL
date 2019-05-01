//#include <eosiolib/action.hpp>
//#include <eosiolib/asset.hpp>
//#include <eosiolib/contract.hpp>
//#include <eosiolib/datastream.hpp>
//#include <eosiolib/dispatcher.hpp>
//#include <eosiolib/eosio.hpp>
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
    void main(name currentContract, uint64_t idx){
	int N = 1;
    transaction out{};
    out.actions.emplace_back(permission_level{currentContract, "active"_n}, "loop"_n, "main"_n, std::make_tuple(currentContract, uint64_t(idx + N)));
    out.delay_sec = 0;
    out.send((idx+N), currentContract, false);
    print("[#] loop : ", name{currentContract}, " - ", idx);
    }
};

EOSIO_DISPATCH( loop, (main))
