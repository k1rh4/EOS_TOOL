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

class [[eosio::contract]] printmain : public eosio::contract {
    public:
      using contract::contract;
        [[eosio::action]]
        void main(name client, uint64_t idx, asset t)
        {
			printi(1);
			print("BBB");
			eosio_assert(1!=1,"EOSIO");
        };
        [[eosio::action]]
        void func(name client, uint64_t idx, asset t)
        {
        };
};

EOSIO_DISPATCH( printmain, (main)(func) )

