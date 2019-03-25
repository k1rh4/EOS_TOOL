#include <eosiolib/eosio.hpp>
#include <eosiolib/symbol.hpp>
//#include <symbol.hpp>
//#include <eosiolib/symbol2.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/core_symbol.hpp>
#include <stdio.h>
using namespace eosio;
using namespace std;

//#define N(X) eosio::string_to_name(#X)
#define N(X) name(X)
#define V(X) N(X).value

class [[eosio::contract]] addressbook : public contract {
public:
    addressbook(name receiver, name code, datastream<const char*> ds):contract(receiver, code, ds){}
    [[eosio::action]]
    void upsert(name user, string a1, int a2) 
    {
        require_auth(_self);
        require_auth(user);
    }
};
EOSIO_DISPATCH( addressbook, (upsert))

