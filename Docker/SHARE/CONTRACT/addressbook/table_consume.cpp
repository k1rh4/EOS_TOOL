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
private:
  struct [[eosio::table]] person {
    name key;
    string first_name;
    string last_name;
    string street;
    string city;
    uint64_t primary_key() const { return key.value; }
  };
  typedef eosio::multi_index<"people"_n, person> address_index;
public:
  addressbook(name receiver, name code, datastream<const char*> ds):contract(receiver, code, ds){}

  [[eosio::action]]
  void upsert(name user, string first_name, string last_name, string street, string city, string state) {

    address_index addresses(_code, _code.value);
    auto iterator = addresses.find(user.value);
    if( iterator == addresses.end() )
    {
      addresses.emplace(user, [&]( auto& row ) {
       row.key = user;  // key is unique but it is comming from arguments
       row.first_name   = first_name;
       row.last_name    = last_name;
       row.street       = street;
       row.city         = city;
      });
      printf("[+] EMPLACE SUCCESS\n");
    }
    else {
      addresses.modify(iterator, user, [&]( auto& row ) {
        row.key         = user;
        row.first_name  = first_name;
        row.last_name   = last_name;
        row.street      = street;
        row.city        = city;
      });
      printf("[M] MODIFY SUCCESS\n");
    }
  }
};
EOSIO_DISPATCH( addressbook, (upsert))

