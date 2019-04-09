#include <eosiolib/action.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/contract.hpp>
#include <eosiolib/datastream.hpp>
#include <eosiolib/dispatcher.hpp>
#include <eosiolib/eosio.hpp>
// #include <eosiolib/fixed_key.hpp>
// #include <eosiolib/fixedpoint.hpp>
// #include <eosiolib/memory.hpp>
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
// #include <eosiolib/compiler_builtins.h>
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

class [[eosio::contract]] child : public contract {
public:
    using contract::contract;

    [[eosio::action]]
    void childreflect(uint64_t currentContract, uint64_t idx, uint64_t randNum){
	int N = 0;
	name curerntChildContract = "client"_n;
        switch(currentContract){
            case 1:
                curerntChildContract = "reset1"_n;
                N = 11;
                break;
            case 2:
                curerntChildContract = "reset2"_n;
                N = 13;
                break;
            case 3:
                curerntChildContract = "reset3"_n;
                N = 17;
                break;
        }
        transaction out{};
        out.actions.emplace_back(permission_level{"client"_n, "active"_n}, "parent"_n, "main"_n, std::make_tuple("client"_n, uint64_t(idx + N), uint64_t(randNum)));
        out.delay_sec = 0;
	out.send((idx + N), "client"_n, false);
	//  out.send((idx + N), "client"_n, false);
        print("[#] childreflect : ", curerntChildContract, " - ", idx);
    }
};

EOSIO_DISPATCH( child, (childreflect))
