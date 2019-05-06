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

class [[eosio::contract]] TeserTarget: public contract{
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
        void sendtochild(name client, uint64_t idx, asset t)
        {
            print("[*] Parent Called\n");
            transaction out1{};
            //name targetContract = name("client1");
            //ame method         = name("addfilebytes");

            name targetContract = name("eosio.token");
            name method         = name("transfer");

            print("[#] CALL EOSIO.TOKEN (IN)");
            //cleos push action client1  addfilebytes '[2,"aa22222222a",5]' -p client   // danakilblock contract
            //out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(idx,"AAAAAAAAAAAAAAAAAAAAAAAAAAAA",uint64_t(20)));
            
            //cleos push action eosio.token transfer '["client1","client2","1.0000 EOS","memo"]' -p client1
            //
            //cleos push action eosio.token transfer '["client2","client4","1.0000 EOS","memo"]' -p client2
            out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(name("client2"),name("client4"),t,std::string("memo")));
            out1.send( idx+1, _self, false);
            print("[#] CALL EOSIO.TOKEN (END)");
        }

    [[eosio::action]]
    void main(name client, uint64_t idx, asset t){
        sendtochild(client, idx, t);
    }
};
EOSIO_DISPATCH(TeserTarget, (main))
