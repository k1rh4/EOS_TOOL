#include <eosiolib/permission.hpp>

using namespace eosio;

class hello : public eosio::contract {
  public:
      using contract::contract;

        /// @abi action 
        void main(uint64_t idx){
            uint128_t initnum = 1;
            transaction out{};
            transaction out2{};
            out.actions.emplace_back(permission_level{N(reset), N(active)}, N(reset), N(func), uint64_t(1));
            out2.actions.emplace_back(permission_level{N(reset), N(active)}, N(reset), N(func), uint64_t(2));
            for(int i =0; i<=2; i++){ // 1,2,3 / 2
                out.actions.pop_back();
                out.actions.emplace_back(permission_level{N(reset), N(active)}, N(reset), N(func), uint64_t(initnum+(idx)+i));
                out.delay_sec = 0;
                out.send((initnum+idx+i), N(reset), false);
                print("[+] CALL 1st: ", ((idx)+i), "\n");
            }
            for (int i = 0; i<=2; i++){ // 5,6,7 /
                out2.actions.pop_back();
                out2.actions.emplace_back(permission_level{N(reset), N(active)}, N(reset), N(func), uint64_t(initnum+(idx*5)+i));
                out2.delay_sec = 0;
                out2.send((initnum+(idx*5)+i), N(reset), false);
                print("[+] CALL 2nd: ", ((idx*5)+i), "\n");
            }
            print("[#] MAIN: ", idx);

        }

        /// @abi action 
        void func(uint64_t idx){ // 123 567
            transaction out{};
            out.actions.emplace_back(permission_level{N(reset), N(active)}, N(reset), N(main), uint64_t(idx*100));
            out.delay_sec = 0;
            out.send((idx*100), N(reset), false);
            print("\t[#] FUNC: ", idx);
        }

};

EOSIO_ABI( hello, (main)(func) )

