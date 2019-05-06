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

class [[eosio::contract]] arbitCall: public contract{
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
        void sendtochild(name client,uint64_t idx)
        {
            print("[*] Parent Called\n");
            transaction out1{};
            //name targetContract = "client1"_n;
            //name method         = "main"_n;

            name targetContract = "client2"_n;
            name method         = "main"_n;

            
            //cleos push action client1  addfilebytes '[2,"aa22222222a",5]' -p client   // danakilblock contract 
            out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(1,"AAAAAAAA",1));
            //cleos push action eosio.token transfer '["client1","client2","1.0000 EOS","memo"]' -p client1
            //out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple("client1",1));
            out1.send( idx+1, _self, false);
            print("[#] Send To Target Contract ");
        }

    [[eosio::action]]
    void main(name client, uint64_t idx){
        sendtochild(client, idx);
    }
};
EOSIO_DISPATCH(arbitCall, (main))
