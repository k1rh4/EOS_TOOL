(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32 i32 i32) (result i32)))
 (type $2 (func))
 (type $3 (func (param i32)))
 (type $4 (func (param i64 i64 i64)))
 (import "env" "eosio_assert" (func $fimport$0 (param i32 i32)))
 (import "env" "memset" (func $fimport$1 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8208) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 0) "P \00\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8272))
 (global $global$2 i32 (i32.const 8272))
 (export "apply" (func $3))
 (func $0 (; 2 ;) (type $2)
  (call $1)
 )
 (func $1 (; 3 ;) (type $2)
  (local $0 i32)
  (i32.store offset=12
   (tee_local $0
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=8196
   (i32.const 0)
   (tee_local $0
    (i32.and
     (i32.add
      (i32.load
       (i32.load offset=12
        (get_local $0)
       )
      )
      (i32.const 7)
     )
     (i32.const -8)
    )
   )
  )
  (i32.store offset=8192
   (i32.const 0)
   (get_local $0)
  )
  (i32.store offset=8204
   (i32.const 0)
   (current_memory)
  )
 )
 (func $2 (; 4 ;) (type $3) (param $0 i32)
 )
 (func $3 (; 5 ;) (type $4) (param $0 i64) (param $1 i64) (param $2 i64)
  (call $0)
  (block $label$1
   (br_if $label$1
    (i64.eq
     (get_local $1)
     (i64.const 6138663577826885632)
    )
   )
   (br_if $label$1
    (i64.ne
     (get_local $2)
     (i64.const -6569208335818555392)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8208)
   )
  )
  (call $2
   (i32.const 0)
  )
 )
)

