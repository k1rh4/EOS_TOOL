#include <eosiolib/eosio.hpp>
#include <eosiolib/symbol.hpp>
//#include <symbol.hpp>
//#include <eosiolib/symbol2.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/core_symbol.hpp>

using namespace eosio;
using namespace std;

//#define N(X) eosio::string_to_name(#X)
#define N(X) name(X)
#define V(X) N(X).value

class [[eosio::contract]] addressbook : public contract {
public:
    addressbook(name receiver, name code, datastream<const char*> ds):contract(receiver, code, ds){}

    [[eosio::action]]
    void upsert(name user, asset money) 
    {
        print ("MONEY : " ,asset{money});
        int i =money.amount;
        print ("I : %d ", i );

    }
};
EOSIO_DISPATCH( addressbook, (upsert))

