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
  void test(name account, name target, asset quantity)
  {
    print ("\n",name{account});
    print ("AAAAAAAAAAAA");
    //asset quantity = asset(10000, string_to_symbol(4,"EOS"));

    //get_self()    
    action(
            // action permission
            permission_level{get_self(), "active"_n}, 
            // action contract 
            //name("eosio.token"), 
            "eosio.token"_n,
            // action method 
            "transfer"_n, 
            // action arguments
            // .from = sender,.to = receiver,.quantity = receiverasset,.memo = "transaction" }
            std::make_tuple(get_self() ,target, quantity, std::string("from k1rh4..."))
        ).send();
  }
};
EOSIO_DISPATCH( addressbook,(test))

