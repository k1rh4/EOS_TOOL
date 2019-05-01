#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>


#include <eosiolib/action.hpp>
#include <eosiolib/contract.hpp>
#include <eosiolib/print.hpp>
//#include <eosiolib/vector.hpp>
#include <string>
#include <eosiolib/asset.hpp>
#include <eosiolib/eosio.hpp>
#include <eosiolib/transaction.hpp>
#include <math.h>

using namespace eosio;
using namespace std;
 
class filewriter : public eosio::contract {
public:
    using contract::contract;
    
     filewriter(account_name self)
     :
      contract(self),
      files_tab(_self, _self)
    
      {}

    /// @abi action
   void addfilebytes(uint64_t id , string filename, string bytes)  {
        
        auto itr = files_tab.find(id);

        if (itr == files_tab.end()) {
          
            files_tab.emplace(_self, [&](auto& record){
                record.id = id;
                record.fileraw = bytes;
                record.filename = filename; 
            });
        } else {
            //if a id was found
            if (itr->id == id) {
              
              files_tab.modify(itr, _self, [&](auto& record){
                  
                  record.fileraw = bytes;
                  record.filename = filename;
                  
              });
                
            }
        }
     
    }
    
    // @abi action
    void cleartable() {
            auto it = files_tab.begin();
            while (it != files_tab.end()) {
                it = files_tab.erase(it);
            }
    }


    //@abi table files i64
    struct files {

        
        uint64_t id;
        std::string fileraw;
        std::string filename;

        uint128_t primary_key() const { return id; }


        EOSLIB_SERIALIZE(files, (id)(fileraw)(filename))

    };

    typedef eosio::multi_index<N(files), files> storage_table;
    
    storage_table files_tab;
    


};


EOSIO_ABI(filewriter, (cleartable)(addfilebytes));
