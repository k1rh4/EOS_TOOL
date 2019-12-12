(module
 (type $0 (func (result i64)))
 (type $1 (func (param i64 i64)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (result i32)))
 (type $5 (func (param i32 i64 i64)))
 (type $6 (func (param i64 i64 i64)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (import "env" "current_time" (func $fimport$0 (result i64)))
 (import "env" "eosio_exit" (func $fimport$1 (param i32)))
 (import "env" "require_auth2" (func $fimport$2 (param i64 i64)))
 (memory $0 1)
 (data (i32.const 4) "\10@\00\00")
 (table $0 0 anyfunc)
 (export "memory" (memory $0))
 (export "_ZeqRK11checksum256S1_" (func $0))
 (export "_ZeqRK11checksum160S1_" (func $1))
 (export "_ZneRK11checksum160S1_" (func $2))
 (export "now" (func $3))
 (export "_ZN5eosio12require_authERKNS_16permission_levelE" (func $4))
 (export "_ZN12ResourceBank5applyEyy" (func $5))
 (export "apply" (func $6))
 (export "memcmp" (func $7))
 (func $0 (; 3 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $7
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $1 (; 4 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $7
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $2 (; 5 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $7
    (get_local $0)
    (get_local $1)
    (i32.const 32)
   )
   (i32.const 0)
  )
 )
 (func $3 (; 6 ;) (type $4) (result i32)
  (i32.wrap/i64
   (i64.div_u
    (call $fimport$0)
    (i64.const 1000000)
   )
  )
 )
 (func $4 (; 7 ;) (type $2) (param $0 i32)
  (call $fimport$2
   (i64.load
    (get_local $0)
   )
   (i64.load offset=8
    (get_local $0)
   )
  )
 )
 (func $5 (; 8 ;) (type $5) (param $0 i32) (param $1 i64) (param $2 i64)
 )
 (func $6 (; 9 ;) (type $6) (param $0 i64) (param $1 i64) (param $2 i64)
  (call $fimport$1
   (i32.const 0)
  )
  (unreachable)
 )
 (func $7 (; 10 ;) (type $7) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $5
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $2)
    )
   )
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i32.ne
       (tee_local $3
        (i32.load8_u
         (get_local $0)
        )
       )
       (tee_local $4
        (i32.load8_u
         (get_local $1)
        )
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$3
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
     (br $label$1)
    )
   )
   (set_local $5
    (i32.sub
     (get_local $3)
     (get_local $4)
    )
   )
  )
  (get_local $5)
 )
)

