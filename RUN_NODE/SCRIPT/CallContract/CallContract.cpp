#include <eosiolib/action.hpp>
#include <eosiolib/asset.hpp>
#include <eosiolib/contract.hpp>
#include <eosiolib/datastream.hpp>
#include <eosiolib/dispatcher.hpp>
#include <eosiolib/eosio.hpp>
// #include <eosiolib/fixed_key.hpp>
// #include <eosiolib/fixedpoint.hpp>
// #include <eosiolib/memory.hpp>
#include <eosiolib/multi_index.hpp>
#include <eosiolib/permission.hpp>
#include <eosiolib/print.hpp>
#include <eosiolib/privileged.hpp>
#include <eosiolib/producer_schedule.hpp>
#include <eosiolib/public_key.hpp>
#include <eosiolib/serialize.hpp>
#include <eosiolib/singleton.hpp>
#include <eosiolib/stdlib.hpp>
#include <eosiolib/symbol.hpp>
#include <eosiolib/time.hpp>
#include <eosiolib/transaction.hpp>
#include <eosiolib/varint.hpp>
#include <eosiolib/action.h>
#include <eosiolib/chain.h>
// #include <eosiolib/compiler_builtins.h>
#include <eosiolib/crypto.h>
#include <eosiolib/db.h>
#include <eosiolib/permission.h>
#include <eosiolib/print.h>
#include <eosiolib/privileged.h>
#include <eosiolib/system.h>
#include <eosiolib/transaction.h>
#include <eosiolib/types.h>

using namespace eosio;
using namespace std;

class [[eosio::contract]] CallContract: public contract{
        using contract::contract;
	public :
		[[eosio::action]]
        void main(name client1, name client2, uint64_t idx, asset t)
        {
            print("START!\n");
            transaction out1{};
            //name targetContract = "phising"_n;
            //name method         = "main"_n;
		
            //name targetContract = name("eosio.token");
            name targetContract = name("danakilblock");
            //name method         = name("transfer");
            name method         = name("addfilebytes");
            
            //cleos push action client1  addfilebytes '[2,"aa22222222a",5]' -p client   // danakilblock contract 
			out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(idx,"AAAAAAAAAAAAAAAAAAAAAAAAAA",22));
			//out1.actions.emplace_back(permission_level{_self, "active"_n}, targetContract , method , std::make_tuple(name("client2"),idxa,t));
            //cleos push action eosio.token transfer '["client1","client2","1.0000 EOS","memo"]' -p client1
			
			//out1.actions.emplace_back(permission_level{client1, "active"_n}, targetContract , method, std::make_tuple(client1, client2 ,extended_asset(1000, extended_symbol(symbol(symbol_code("EOS"),4), name("eosio.token"))) , std::string("memo attack")));
			//transaction transfer;
			//transfer.actions.emplace_back(eosio::permission_level {_self, N(active) }, N(eosio.token), N(transfer), std::make_tuple(from_account, to_account_1, quantity_to_send, std::string("memo")));
            out1.send( idx+1, client1);
			/*
			transaction trx{};
			{
				trx.actions.emplace_back(
					permission_level{client1, name("active")}, 
					name(targetContract), 
					name(method), 
					std::make_tuple(
						client1
						)
					);
			}
			trx.delay_sec = 0;
			trx.send(idx, client1);
			*/
		//for ( int i=0; i< 2; i++){
		/*
		action(permission_level{client1, "active"_n},
			name("eosio.token"), 
			"transfer"_n,
			std::make_tuple(
				client1, 
				client2,
				extended_asset(1000, extended_symbol(symbol(symbol_code("EOS"),4), name("eosio.token"))),
				std::string("Action Test")
			)
		).send();
		}
		*/

		/*
		transaction trx{};
		{
			trx.actions.emplace_back(
				permission_level{client1, "active"_n}, 
				"eosio.token"_n, 
				method, 
				std::make_tuple(
					client1, 
					client2, 
					extended_asset(1.0000, extended_symbol(symbol(symbol_code("EOS"),4),"eosio.token"_n)),
					std::string("Test")
					)
				);
		}

		trx.delay_sec = 0;
		trx.send(idx, client1);

		*/
		print("[#] Send To Target Contract ");
		}

};
EOSIO_DISPATCH(CallContract,(main))
