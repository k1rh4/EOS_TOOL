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
    void create(uint64_t idx){
        transaction out{};
        out.actions.emplace_back(permission_level{_self, "active"_n}, _self, "hi"_n, std::make_tuple(idx));
        out.delay_sec = 5;
   out.send((idx), _self, false);
   //  out.send((idx + N), "client"_n, false);
        // print("[#] childreflect : ", curerntChildContract, " - ", idx);
    }
    [[eosio::action]]
    void cancel(uint64_t idx){
        cancel_deferred(idx);
    }
    [[eosio::action]]
    void hi(uint64_t idx){
        print(idx);
    }
};

EOSIO_DISPATCH( child, (create)(cancel)(hi))
