(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32 i32 i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func))
 (type $4 (func (param i64 i64 i64)))
 (type $5 (func (param i32)))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$0 (param i32 i32)))
 (import "env" "eosio_assert" (func $fimport$1 (param i32 i32)))
 (import "env" "memcpy" (func $fimport$2 (param i32 i32 i32) (result i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$3 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8192))
 (global $global$2 i32 (i32.const 8192))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (func $0 (; 5 ;) (type $3)
 )
 (func $1 (; 6 ;) (type $4) (param $0 i64) (param $1 i64) (param $2 i64)
  (call $0)
  (call $2
   (i32.const 0)
  )
 )
 (func $2 (; 7 ;) (type $5) (param $0 i32)
 )
)

