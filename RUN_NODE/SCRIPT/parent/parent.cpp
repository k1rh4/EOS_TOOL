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

class [[eosio::contract]] parent: public contract{
    private:
        struct [[eosio::table]] person {
            uint64_t key;
            string first_name;
            string last_name;
            string street;
            string city;
            uint64_t primary_key() const { return key; }
        };
        typedef eosio::multi_index<"people"_n, person> address_index;
    public:
        using contract::contract;
        void sendtochild( name client, uint64_t idx, uint64_t randNum)
        {
        print("[*] Parent Called\n");

        address_index addresses(_code, _code.value);
        auto iterator = addresses.find(idx);
        if( iterator == addresses.end() )
        {
            addresses.emplace(client, [&]( auto& row ) 
            {
                row.key = idx;
                row.first_name="AAAAAAAAAAAAAAAAAAAAAAAA";
                row.last_name="BBBBBBBBBBBBBBBBBBBBBBBBB";
                row.street="CCCCCCCCCCCCCCCCCCCCCCCC";
                row.city="DDDDDDDDDDDDDDDDDDDDDDDDDDDDD";
            });
            printf("SUCCESS SAVE\n");
        }
        transaction out1{};
        //transaction out2{};
        //transaction out3{};
        out1.actions.emplace_back(permission_level{client, "active"_n}, "child"_n, "childreflect"_n, std::make_tuple(uint64_t(1), uint64_t(idx+11), uint64_t(randNum)));
	// out1.send();
	    out1.send(idx+11, "client"_n, false);
        print("[#] Send To Child : ", client, " - ", idx);

    }

    [[eosio::action]]
    void main(name client, uint64_t idx, uint64_t randNum){

        sendtochild(client, idx, randNum);
    }
};
EOSIO_DISPATCH(parent, (main))