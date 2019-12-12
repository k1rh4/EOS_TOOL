(module
 (type $0 (func (param i32 i64 i64 i64 i64)))
 (type $1 (func))
 (type $2 (func (param i64)))
 (type $3 (func (result i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (param i64) (result i32)))
 (type $6 (func (param i32 i32)))
 (type $7 (func (result i64)))
 (type $8 (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $9 (func (param i64 i64 i64 i64) (result i32)))
 (type $10 (func (param i32 i32 i32) (result i32)))
 (type $11 (func (param i32 i64 i32 i32)))
 (type $12 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $13 (func (param i32 i64 i32)))
 (type $14 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $15 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $16 (func (param i64 i64 i64)))
 (type $17 (func (param i32 i32 i32)))
 (type $18 (func (param i32 i32 i64 i32)))
 (type $19 (func (param i32 i32 i32 i32)))
 (type $20 (func (param i32) (result i32)))
 (type $21 (func (param i32)))
 (import "env" "require_recipient" (func $fimport$0 (param i64)))
 (import "env" "action_data_size" (func $fimport$1 (result i32)))
 (import "env" "read_action_data" (func $fimport$2 (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $fimport$3 (param i64)))
 (import "env" "is_account" (func $fimport$4 (param i64) (result i32)))
 (import "env" "eosio_assert" (func $fimport$5 (param i32 i32)))
 (import "env" "current_receiver" (func $fimport$6 (result i64)))
 (import "env" "db_idx128_lowerbound" (func $fimport$7 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_find_i64" (func $fimport$8 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $fimport$9 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$10 (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $fimport$11 (param i32 i64 i32 i32)))
 (import "env" "db_idx128_find_primary" (func $fimport$12 (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx128_update" (func $fimport$13 (param i32 i64 i32)))
 (import "env" "db_store_i64" (func $fimport$14 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_idx128_store" (func $fimport$15 (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "abort" (func $fimport$16))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$17 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$18 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$19 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "Code is not an account.\00malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (data (i32.const 8302) "Library is not an account!\00")
 (data (i32.const 8329) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 8380) "error reading iterator\00")
 (data (i32.const 8403) "read\00")
 (data (i32.const 8408) "cannot pass end iterator to modify\00")
 (data (i32.const 8443) "object passed to modify is not in multi_index\00")
 (data (i32.const 8489) "cannot modify objects in table of another contract\00")
 (data (i32.const 8540) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 8599) "write\00")
 (data (i32.const 8605) "cannot create objects in table of another contract\00")
 (table $0 2 2 anyfunc)
 (elem (i32.const 1) $2)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 17064))
 (global $global$2 i32 (i32.const 17064))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (export "_ZdlPv" (func $13))
 (export "_Znwj" (func $11))
 (export "_Znaj" (func $12))
 (export "_ZdaPv" (func $14))
 (func $0 (; 20 ;) (type $1)
 )
 (func $1 (; 21 ;) (type $16) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 112)
    )
   )
  )
  (call $0)
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
   (get_local $0)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
   (i64.const -1)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 56)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
   (i32.const 0)
  )
  (i32.store8
   (i32.add
    (get_local $3)
    (i32.const 68)
   )
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $3)
   (get_local $0)
  )
  (i64.store offset=24
   (get_local $3)
   (get_local $0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i64.ne
        (get_local $1)
        (get_local $0)
       )
      )
      (set_local $0
       (i64.const 7)
      )
      (loop $label$5
       (br_if $label$5
        (i64.ne
         (tee_local $0
          (i64.add
           (get_local $0)
           (i64.const 1)
          )
         )
         (i64.const 13)
        )
       )
      )
      (br_if $label$4
       (i64.ne
        (i64.const -4417161185745436672)
        (get_local $2)
       )
      )
      (br_if $label$3
       (i64.ne
        (get_local $2)
        (i64.const -4417161185745436672)
       )
      )
      (i32.store offset=20
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=16
       (get_local $3)
       (i32.const 1)
      )
      (i64.store offset=8
       (get_local $3)
       (i64.load offset=16
        (get_local $3)
       )
      )
      (drop
       (call $3
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
      (br_if $label$2
       (tee_local $4
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 56)
         )
        )
       )
      )
      (br $label$1)
     )
     (i64.store offset=88
      (get_local $3)
      (get_local $1)
     )
     (i64.store offset=80
      (get_local $3)
      (get_local $2)
     )
     (i32.store offset=72
      (get_local $3)
      (i32.add
       (get_local $3)
       (i32.const 32)
      )
     )
     (call $4
      (i32.add
       (get_local $3)
       (i32.const 104)
      )
      (i32.add
       (get_local $3)
       (i32.const 72)
      )
      (i32.add
       (get_local $3)
       (i32.const 80)
      )
     )
     (br_if $label$3
      (i32.eqz
       (tee_local $5
        (i32.load offset=108
         (get_local $3)
        )
       )
      )
     )
     (br_if $label$3
      (i32.eqz
       (i64.eqz
        (i64.or
         (i64.xor
          (i64.load offset=80
           (get_local $3)
          )
          (i64.load offset=16
           (get_local $5)
          )
         )
         (i64.xor
          (i64.load offset=88
           (get_local $3)
          )
          (i64.load
           (i32.add
            (get_local $5)
            (i32.const 24)
           )
          )
         )
        )
       )
      )
     )
     (call $fimport$0
      (i64.load
       (get_local $5)
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $4
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 56)
        )
       )
      )
     )
    )
   )
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.eq
       (tee_local $5
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $3)
           (i32.const 60)
          )
         )
        )
       )
       (get_local $4)
      )
     )
     (loop $label$8
      (set_local $7
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (block $label$9
       (br_if $label$9
        (i32.eqz
         (get_local $7)
        )
       )
       (call $13
        (get_local $7)
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (set_local $5
      (i32.load
       (i32.add
        (get_local $3)
        (i32.const 56)
       )
      )
     )
     (br $label$6)
    )
    (set_local $5
     (get_local $4)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (call $13
    (get_local $5)
   )
  )
  (call $16
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 112)
   )
  )
 )
 (func $2 (; 22 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $5
    (i32.sub
     (get_global $global$0)
     (i32.const 96)
    )
   )
  )
  (i64.store offset=80
   (get_local $5)
   (get_local $2)
  )
  (call $fimport$3
   (get_local $1)
  )
  (call $fimport$5
   (call $fimport$4
    (get_local $3)
   )
   (i32.const 8192)
  )
  (call $fimport$5
   (call $fimport$4
    (get_local $2)
   )
   (i32.const 8302)
  )
  (i32.store
   (i32.add
    (get_local $5)
    (i32.const 72)
   )
   (i32.const 0)
  )
  (i64.store offset=56
   (get_local $5)
   (i64.const -1)
  )
  (i64.store offset=64
   (get_local $5)
   (i64.const 0)
  )
  (i32.store8 offset=76
   (get_local $5)
   (i32.const 0)
  )
  (i64.store offset=40
   (get_local $5)
   (tee_local $2
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=48
   (get_local $5)
   (get_local $2)
  )
  (i64.store offset=24
   (get_local $5)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $5)
   (get_local $4)
  )
  (i32.store offset=8
   (get_local $5)
   (i32.add
    (get_local $5)
    (i32.const 40)
   )
  )
  (call $4
   (i32.add
    (get_local $5)
    (i32.const 88)
   )
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (tee_local $0
        (i32.load offset=92
         (get_local $5)
        )
       )
      )
     )
     (br_if $label$3
      (i64.ne
       (i64.or
        (i64.xor
         (i64.load offset=16
          (get_local $5)
         )
         (i64.load offset=16
          (get_local $0)
         )
        )
        (i64.xor
         (i64.load offset=24
          (get_local $5)
         )
         (i64.load
          (i32.add
           (get_local $0)
           (i32.const 24)
          )
         )
        )
       )
       (i64.const 0)
      )
     )
     (i32.store offset=88
      (get_local $5)
      (i32.add
       (get_local $5)
       (i32.const 80)
      )
     )
     (call $fimport$5
      (i32.const 1)
      (i32.const 8408)
     )
     (call $6
      (i32.load offset=8
       (get_local $5)
      )
      (get_local $0)
      (get_local $1)
      (i32.add
       (get_local $5)
       (i32.const 88)
      )
     )
     (br_if $label$2
      (tee_local $6
       (i32.load offset=64
        (get_local $5)
       )
      )
     )
     (br $label$1)
    )
    (i32.store offset=92
     (get_local $5)
     (i32.add
      (get_local $5)
      (i32.const 80)
     )
    )
    (i32.store offset=88
     (get_local $5)
     (i32.add
      (get_local $5)
      (i32.const 16)
     )
    )
    (call $7
     (get_local $5)
     (i32.add
      (get_local $5)
      (i32.const 40)
     )
     (get_local $1)
     (i32.add
      (get_local $5)
      (i32.const 88)
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $6
       (i32.load offset=64
        (get_local $5)
       )
      )
     )
    )
   )
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $5)
           (i32.const 68)
          )
         )
        )
       )
       (get_local $6)
      )
     )
     (loop $label$6
      (set_local $8
       (i32.load
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $0)
       (i32.const 0)
      )
      (block $label$7
       (br_if $label$7
        (i32.eqz
         (get_local $8)
        )
       )
       (call $13
        (get_local $8)
       )
      )
      (br_if $label$6
       (i32.ne
        (get_local $6)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $5)
        (i32.const 64)
       )
      )
     )
     (br $label$4)
    )
    (set_local $0
     (get_local $6)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $6)
   )
   (call $13
    (get_local $0)
   )
   (set_global $global$0
    (i32.add
     (get_local $5)
     (i32.const 96)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $5)
    (i32.const 96)
   )
  )
 )
 (func $3 (; 23 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (set_global $global$0
   (get_local $2)
  )
  (set_local $4
   (i32.load offset=4
    (get_local $1)
   )
  )
  (set_local $5
   (i32.load
    (get_local $1)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $6
         (call $fimport$1)
        )
       )
      )
      (br_if $label$3
       (i32.lt_u
        (get_local $6)
        (i32.const 513)
       )
      )
      (set_local $1
       (call $18
        (get_local $6)
       )
      )
      (br $label$2)
     )
     (set_local $1
      (i32.const 0)
     )
     (br $label$1)
    )
    (set_global $global$0
     (tee_local $1
      (i32.sub
       (get_local $2)
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $fimport$2
     (get_local $1)
     (get_local $6)
    )
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.const 0)
  )
  (i64.store
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=36
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=32
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=40
   (get_local $3)
   (i32.add
    (get_local $1)
    (get_local $6)
   )
  )
  (i32.store offset=48
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
  (i32.store offset=56
   (get_local $3)
   (get_local $3)
  )
  (call $5
   (i32.add
    (get_local $3)
    (i32.const 56)
   )
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_u
     (get_local $6)
     (i32.const 513)
    )
   )
   (call $21
    (get_local $1)
   )
  )
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shr_s
     (get_local $4)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (set_local $8
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (set_local $9
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (set_local $10
   (i64.load
    (get_local $3)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.load
       (get_local $1)
      )
      (get_local $5)
     )
    )
   )
  )
  (call_indirect (type $0)
   (get_local $1)
   (get_local $10)
   (get_local $9)
   (get_local $8)
   (get_local $7)
   (get_local $5)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
  (i32.const 1)
 )
 (func $4 (; 24 ;) (type $17) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (get_local $3)
   (i64.load
    (get_local $2)
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $5
      (call $fimport$7
       (i64.load
        (tee_local $2
         (i32.load
          (get_local $1)
         )
        )
       )
       (i64.load offset=8
        (get_local $2)
       )
       (i64.const -8383732181326888960)
       (get_local $3)
       (i32.add
        (get_local $3)
        (i32.const 24)
       )
      )
     )
     (i32.const 0)
    )
   )
   (set_local $6
    (i64.load offset=24
     (get_local $3)
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eq
       (tee_local $8
        (i32.load offset=24
         (tee_local $7
          (i32.load
           (get_local $1)
          )
         )
        )
       )
       (tee_local $9
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const 28)
         )
        )
       )
      )
     )
     (block $label$4
      (loop $label$5
       (br_if $label$4
        (i64.eq
         (i64.load
          (tee_local $4
           (i32.load
            (tee_local $2
             (i32.add
              (get_local $9)
              (i32.const -24)
             )
            )
           )
          )
         )
         (get_local $6)
        )
       )
       (set_local $9
        (get_local $2)
       )
       (br_if $label$5
        (i32.ne
         (get_local $8)
         (get_local $2)
        )
       )
       (br $label$3)
      )
     )
     (br_if $label$3
      (i32.eq
       (get_local $8)
       (get_local $9)
      )
     )
     (call $fimport$5
      (i32.eq
       (i32.load offset=32
        (get_local $4)
       )
       (get_local $7)
      )
      (i32.const 8329)
     )
     (br $label$2)
    )
    (call $fimport$5
     (i32.eq
      (i32.load offset=32
       (tee_local $4
        (call $10
         (get_local $7)
         (call $fimport$8
          (i64.load
           (get_local $7)
          )
          (i64.load offset=8
           (get_local $7)
          )
          (i64.const -8383732181326888960)
          (get_local $6)
         )
        )
       )
      )
      (get_local $7)
     )
     (i32.const 8329)
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 40)
    )
    (get_local $5)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $5 (; 25 ;) (type $6) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$5
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$5
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $fimport$5
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $3
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (call $fimport$5
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $1
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
    (i32.const 7)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.add
    (i32.load offset=4
     (get_local $1)
    )
    (i32.const 8)
   )
  )
 )
 (func $6 (; 26 ;) (type $18) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (set_global $global$0
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 80)
    )
   )
  )
  (call $fimport$5
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 8443)
  )
  (call $fimport$5
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $fimport$6)
   )
   (i32.const 8489)
  )
  (i64.store offset=40
   (get_local $4)
   (i64.load
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
  )
  (i64.store offset=32
   (get_local $4)
   (i64.load offset=16
    (get_local $1)
   )
  )
  (set_local $5
   (i64.load
    (get_local $1)
   )
  )
  (i64.store
   (get_local $1)
   (tee_local $6
    (i64.load
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (call $fimport$5
   (i64.eq
    (get_local $5)
    (get_local $6)
   )
   (i32.const 8540)
  )
  (call $fimport$5
   (i32.const 1)
   (i32.const 8599)
  )
  (drop
   (call $fimport$10
    (get_local $4)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $fimport$5
   (i32.const 1)
   (i32.const 8599)
  )
  (drop
   (call $fimport$10
    (i32.or
     (get_local $4)
     (i32.const 8)
    )
    (tee_local $3
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
    (i32.const 16)
   )
  )
  (call $fimport$11
   (i32.load offset=36
    (get_local $1)
   )
   (get_local $2)
   (get_local $4)
   (i32.const 24)
  )
  (block $label$1
   (br_if $label$1
    (i64.lt_u
     (get_local $5)
     (i64.load offset=16
      (get_local $0)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $5)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $5)
      (i64.const -3)
     )
    )
   )
  )
  (i64.store offset=64
   (get_local $4)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=72
   (get_local $4)
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (call $17
      (i32.add
       (get_local $4)
       (i32.const 32)
      )
      (i32.add
       (get_local $4)
       (i32.const 64)
      )
      (i32.const 16)
     )
    )
   )
   (block $label$3
    (br_if $label$3
     (i32.gt_s
      (tee_local $1
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 40)
         )
        )
       )
      )
      (i32.const -1)
     )
    )
    (i32.store
     (get_local $3)
     (tee_local $1
      (call $fimport$12
       (i64.load
        (get_local $0)
       )
       (i64.load offset=8
        (get_local $0)
       )
       (i64.const -8383732181326888960)
       (i32.add
        (get_local $4)
        (i32.const 48)
       )
       (get_local $5)
      )
     )
    )
   )
   (call $fimport$13
    (get_local $1)
    (get_local $2)
    (i32.add
     (get_local $4)
     (i32.const 64)
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 80)
   )
  )
 )
 (func $7 (; 27 ;) (type $18) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_global $global$0
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
    )
   )
  )
  (i64.store offset=40
   (get_local $4)
   (get_local $2)
  )
  (call $fimport$5
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $fimport$6)
   )
   (i32.const 8605)
  )
  (i32.store offset=20
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 40)
   )
  )
  (i32.store offset=32
   (tee_local $3
    (call $11
     (i32.const 48)
    )
   )
   (get_local $1)
  )
  (call $8
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
   (get_local $3)
  )
  (i32.store offset=32
   (get_local $4)
   (get_local $3)
  )
  (i64.store offset=16
   (get_local $4)
   (tee_local $2
    (i64.load
     (get_local $3)
    )
   )
  )
  (i32.store offset=12
   (get_local $4)
   (tee_local $5
    (i32.load offset=36
     (get_local $3)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $7
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $1)
          (i32.const 28)
         )
        )
       )
      )
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 32)
       )
      )
     )
    )
    (i64.store offset=8
     (get_local $7)
     (get_local $2)
    )
    (i32.store offset=16
     (get_local $7)
     (get_local $5)
    )
    (i32.store offset=32
     (get_local $4)
     (i32.const 0)
    )
    (i32.store
     (get_local $7)
     (get_local $3)
    )
    (i32.store
     (get_local $6)
     (i32.add
      (get_local $7)
      (i32.const 24)
     )
    )
    (br $label$1)
   )
   (call $9
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
    (i32.add
     (get_local $4)
     (i32.const 32)
    )
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
    (i32.add
     (get_local $4)
     (i32.const 12)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (set_local $1
   (i32.load offset=32
    (get_local $4)
   )
  )
  (i32.store offset=32
   (get_local $4)
   (i32.const 0)
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (get_local $1)
    )
   )
   (call $13
    (get_local $1)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
 )
 (func $8 (; 28 ;) (type $6) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
    )
   )
  )
  (i64.store
   (get_local $1)
   (i64.load
    (i32.load offset=4
     (tee_local $3
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $4
   (i64.load
    (tee_local $3
     (i32.load
      (get_local $3)
     )
    )
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (get_local $1)
     (i32.const 24)
    )
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=16
   (get_local $1)
   (get_local $4)
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$5
   (i32.const 1)
   (i32.const 8599)
  )
  (drop
   (call $fimport$10
    (get_local $2)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $fimport$5
   (i32.const 1)
   (i32.const 8599)
  )
  (drop
   (call $fimport$10
    (i32.or
     (get_local $2)
     (i32.const 8)
    )
    (tee_local $6
     (i32.add
      (get_local $1)
      (i32.const 16)
     )
    )
    (i32.const 16)
   )
  )
  (i32.store offset=36
   (get_local $1)
   (call $fimport$14
    (i64.load offset=8
     (get_local $3)
    )
    (i64.const -8383732181326888960)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $4
     (i64.load
      (get_local $1)
     )
    )
    (get_local $2)
    (i32.const 24)
   )
  )
  (block $label$1
   (br_if $label$1
    (i64.lt_u
     (get_local $4)
     (i64.load offset=16
      (get_local $3)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $4)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $4)
      (i64.const -3)
     )
    )
   )
  )
  (set_local $4
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (set_local $7
   (i64.load
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $8
   (i64.load
    (get_local $1)
   )
  )
  (i64.store offset=40
   (get_local $2)
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=32
   (get_local $2)
   (i64.load
    (get_local $6)
   )
  )
  (i32.store offset=40
   (get_local $1)
   (call $fimport$15
    (get_local $4)
    (i64.const -8383732181326888960)
    (get_local $7)
    (get_local $8)
    (i32.add
     (get_local $2)
     (i32.const 32)
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 48)
   )
  )
 )
 (func $9 (; 29 ;) (type $19) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ge_u
      (tee_local $6
       (i32.add
        (tee_local $5
         (i32.div_s
          (i32.sub
           (i32.load offset=4
            (get_local $0)
           )
           (tee_local $4
            (i32.load
             (get_local $0)
            )
           )
          )
          (i32.const 24)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 178956971)
     )
    )
    (set_local $7
     (i32.const 178956970)
    )
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (tee_local $4
         (i32.div_s
          (i32.sub
           (i32.load offset=8
            (get_local $0)
           )
           (get_local $4)
          )
          (i32.const 24)
         )
        )
        (i32.const 89478484)
       )
      )
      (br_if $label$3
       (i32.eqz
        (tee_local $7
         (select
          (get_local $6)
          (tee_local $7
           (i32.shl
            (get_local $4)
            (i32.const 1)
           )
          )
          (i32.lt_u
           (get_local $7)
           (get_local $6)
          )
         )
        )
       )
      )
     )
     (set_local $4
      (call $11
       (i32.mul
        (get_local $7)
        (i32.const 24)
       )
      )
     )
     (br $label$1)
    )
    (set_local $7
     (i32.const 0)
    )
    (set_local $4
     (i32.const 0)
    )
    (br $label$1)
   )
   (call $15
    (get_local $0)
   )
   (unreachable)
  )
  (set_local $6
   (i32.load
    (get_local $1)
   )
  )
  (i32.store
   (get_local $1)
   (i32.const 0)
  )
  (i32.store
   (tee_local $1
    (i32.add
     (get_local $4)
     (tee_local $8
      (i32.mul
       (get_local $5)
       (i32.const 24)
      )
     )
    )
   )
   (get_local $6)
  )
  (i64.store offset=8
   (get_local $1)
   (i64.load
    (get_local $2)
   )
  )
  (i32.store offset=16
   (get_local $1)
   (i32.load
    (get_local $3)
   )
  )
  (set_local $5
   (i32.add
    (get_local $4)
    (i32.mul
     (get_local $7)
     (i32.const 24)
    )
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (block $label$5
   (block $label$6
    (br_if $label$6
     (i32.eq
      (tee_local $2
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
      )
      (tee_local $7
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (set_local $1
     (i32.add
      (i32.add
       (get_local $4)
       (get_local $8)
      )
      (i32.const -24)
     )
    )
    (loop $label$7
     (set_local $3
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $2)
         (i32.const -24)
        )
       )
      )
     )
     (i32.store
      (get_local $4)
      (i32.const 0)
     )
     (i32.store
      (get_local $1)
      (get_local $3)
     )
     (i32.store
      (i32.add
       (get_local $1)
       (i32.const 16)
      )
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const -8)
       )
      )
     )
     (i64.store
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (i64.load
       (i32.add
        (get_local $2)
        (i32.const -16)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const -24)
      )
     )
     (set_local $2
      (get_local $4)
     )
     (br_if $label$7
      (i32.ne
       (get_local $7)
       (get_local $4)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 24)
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (br $label$5)
   )
   (set_local $2
    (get_local $7)
   )
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $5)
  )
  (block $label$8
   (br_if $label$8
    (i32.eq
     (get_local $7)
     (get_local $2)
    )
   )
   (loop $label$9
    (set_local $1
     (i32.load
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $7)
     (i32.const 0)
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (get_local $1)
      )
     )
     (call $13
      (get_local $1)
     )
    )
    (br_if $label$9
     (i32.ne
      (get_local $2)
      (get_local $7)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (get_local $2)
    )
   )
   (call $13
    (get_local $2)
   )
  )
 )
 (func $10 (; 30 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (set_global $global$0
   (get_local $2)
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $4
      (i32.load offset=24
       (get_local $0)
      )
     )
     (tee_local $5
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 28)
       )
      )
     )
    )
   )
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i32.eq
       (i32.load
        (i32.add
         (get_local $5)
         (i32.const -8)
        )
       )
       (get_local $1)
      )
     )
     (br_if $label$3
      (i32.ne
       (get_local $4)
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const -24)
        )
       )
      )
     )
     (br $label$1)
    )
   )
   (br_if $label$1
    (i32.eq
     (get_local $4)
     (get_local $5)
    )
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $5)
      (i32.const -24)
     )
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
   )
   (return
    (get_local $5)
   )
  )
  (call $fimport$5
   (i32.xor
    (i32.shr_u
     (tee_local $4
      (call $fimport$9
       (get_local $1)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.const 31)
    )
    (i32.const 1)
   )
   (i32.const 8380)
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.lt_u
      (get_local $4)
      (i32.const 513)
     )
    )
    (set_local $2
     (call $18
      (get_local $4)
     )
    )
    (br $label$4)
   )
   (set_global $global$0
    (tee_local $2
     (i32.sub
      (get_local $2)
      (i32.and
       (i32.add
        (get_local $4)
        (i32.const 15)
       )
       (i32.const -16)
      )
     )
    )
   )
  )
  (drop
   (call $fimport$9
    (get_local $1)
    (get_local $2)
    (get_local $4)
   )
  )
  (i32.store offset=32
   (tee_local $5
    (call $11
     (i32.const 48)
    )
   )
   (get_local $0)
  )
  (call $fimport$5
   (i32.gt_u
    (get_local $4)
    (i32.const 7)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (get_local $5)
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$5
   (i32.gt_u
    (i32.add
     (get_local $4)
     (i32.const -8)
    )
    (i32.const 15)
   )
   (i32.const 8403)
  )
  (drop
   (call $fimport$10
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=40
   (get_local $5)
   (i32.const -1)
  )
  (i32.store offset=36
   (get_local $5)
   (get_local $1)
  )
  (i32.store offset=24
   (get_local $3)
   (get_local $5)
  )
  (i64.store offset=16
   (get_local $3)
   (tee_local $6
    (i64.load
     (get_local $5)
    )
   )
  )
  (i32.store offset=12
   (get_local $3)
   (get_local $1)
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.ge_u
       (tee_local $8
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $8)
      (get_local $6)
     )
     (i32.store offset=16
      (get_local $8)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $3)
      (i32.const 0)
     )
     (i32.store
      (get_local $8)
      (get_local $5)
     )
     (i32.store
      (get_local $7)
      (i32.add
       (get_local $8)
       (i32.const 24)
      )
     )
     (br_if $label$7
      (i32.ge_u
       (get_local $4)
       (i32.const 513)
      )
     )
     (br $label$6)
    )
    (call $9
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
     (i32.add
      (get_local $3)
      (i32.const 12)
     )
    )
    (br_if $label$6
     (i32.lt_u
      (get_local $4)
      (i32.const 513)
     )
    )
   )
   (call $21
    (get_local $2)
   )
  )
  (set_local $1
   (i32.load offset=24
    (get_local $3)
   )
  )
  (i32.store offset=24
   (get_local $3)
   (i32.const 0)
  )
  (block $label$9
   (br_if $label$9
    (i32.eqz
     (get_local $1)
    )
   )
   (call $13
    (get_local $1)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
  (get_local $5)
 )
 (func $11 (; 31 ;) (type $20) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $18
      (tee_local $1
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (loop $label$2
    (set_local $0
     (i32.const 0)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.load offset=8656
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $1)
     (get_local $2)
    )
    (br_if $label$2
     (i32.eqz
      (tee_local $0
       (call $18
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $12 (; 32 ;) (type $20) (param $0 i32) (result i32)
  (call $11
   (get_local $0)
  )
 )
 (func $13 (; 33 ;) (type $21) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $21
    (get_local $0)
   )
  )
 )
 (func $14 (; 34 ;) (type $21) (param $0 i32)
  (call $13
   (get_local $0)
  )
 )
 (func $15 (; 35 ;) (type $21) (param $0 i32)
  (call $fimport$16)
  (unreachable)
 )
 (func $16 (; 36 ;) (type $21) (param $0 i32)
 )
 (func $17 (; 37 ;) (type $10) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (get_local $2)
     )
    )
    (loop $label$3
     (br_if $label$1
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
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.sub
   (get_local $3)
   (get_local $4)
  )
 )
 (func $18 (; 38 ;) (type $20) (param $0 i32) (result i32)
  (call $19
   (i32.const 8668)
   (get_local $0)
  )
 )
 (func $19 (; 39 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $1)
    )
   )
   (block $label$2
    (br_if $label$2
     (tee_local $2
      (i32.load offset=8384
       (get_local $0)
      )
     )
    )
    (set_local $2
     (i32.const 16)
    )
    (i32.store
     (i32.add
      (get_local $0)
      (i32.const 8384)
     )
     (i32.const 16)
    )
   )
   (set_local $3
    (select
     (i32.sub
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
      (tee_local $3
       (i32.and
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.const 7)
       )
      )
     )
     (get_local $1)
     (get_local $3)
    )
   )
   (block $label$3
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.ge_u
        (tee_local $4
         (i32.load offset=8388
          (get_local $0)
         )
        )
        (get_local $2)
       )
      )
      (set_local $1
       (i32.add
        (i32.add
         (get_local $0)
         (i32.mul
          (get_local $4)
          (i32.const 12)
         )
        )
        (i32.const 8192)
       )
      )
      (block $label$6
       (br_if $label$6
        (get_local $4)
       )
       (br_if $label$6
        (i32.load
         (tee_local $2
          (i32.add
           (get_local $0)
           (i32.const 8196)
          )
         )
        )
       )
       (i32.store
        (get_local $1)
        (i32.const 8192)
       )
       (i32.store
        (get_local $2)
        (get_local $0)
       )
      )
      (set_local $4
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
      )
      (loop $label$7
       (block $label$8
        (br_if $label$8
         (i32.gt_u
          (i32.add
           (tee_local $2
            (i32.load offset=8
             (get_local $1)
            )
           )
           (get_local $4)
          )
          (i32.load
           (get_local $1)
          )
         )
        )
        (i32.store
         (tee_local $2
          (i32.add
           (i32.load offset=4
            (get_local $1)
           )
           (get_local $2)
          )
         )
         (i32.or
          (i32.and
           (i32.load
            (get_local $2)
           )
           (i32.const -2147483648)
          )
          (get_local $3)
         )
        )
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (get_local $4)
         )
        )
        (i32.store
         (get_local $2)
         (i32.or
          (i32.load
           (get_local $2)
          )
          (i32.const -2147483648)
         )
        )
        (br_if $label$4
         (tee_local $1
          (i32.add
           (get_local $2)
           (i32.const 4)
          )
         )
        )
       )
       (br_if $label$7
        (tee_local $1
         (call $20
          (get_local $0)
         )
        )
       )
      )
     )
     (set_local $5
      (i32.sub
       (i32.const 2147483644)
       (get_local $3)
      )
     )
     (set_local $6
      (i32.add
       (get_local $0)
       (i32.const 8392)
      )
     )
     (set_local $7
      (i32.add
       (get_local $0)
       (i32.const 8384)
      )
     )
     (set_local $2
      (tee_local $8
       (i32.load offset=8392
        (get_local $0)
       )
      )
     )
     (loop $label$9
      (call $fimport$5
       (i32.eq
        (i32.load
         (i32.add
          (tee_local $1
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $2)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
        (i32.load
         (tee_local $9
          (i32.add
           (get_local $1)
           (i32.const 8192)
          )
         )
        )
       )
       (i32.const 8216)
      )
      (set_local $2
       (i32.add
        (tee_local $10
         (i32.load
          (i32.add
           (get_local $1)
           (i32.const 8196)
          )
         )
        )
        (i32.const 4)
       )
      )
      (loop $label$10
       (set_local $11
        (i32.add
         (get_local $10)
         (i32.load
          (get_local $9)
         )
        )
       )
       (set_local $1
        (i32.and
         (tee_local $13
          (i32.load
           (tee_local $12
            (i32.add
             (get_local $2)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (block $label$11
        (br_if $label$11
         (i32.lt_s
          (get_local $13)
          (i32.const 0)
         )
        )
        (block $label$12
         (br_if $label$12
          (i32.ge_u
           (get_local $1)
           (get_local $3)
          )
         )
         (loop $label$13
          (br_if $label$12
           (i32.ge_u
            (tee_local $4
             (i32.add
              (get_local $2)
              (get_local $1)
             )
            )
            (get_local $11)
           )
          )
          (br_if $label$12
           (i32.lt_s
            (tee_local $4
             (i32.load
              (get_local $4)
             )
            )
            (i32.const 0)
           )
          )
          (br_if $label$13
           (i32.lt_u
            (tee_local $1
             (i32.add
              (i32.add
               (get_local $1)
               (i32.and
                (get_local $4)
                (i32.const 2147483647)
               )
              )
              (i32.const 4)
             )
            )
            (get_local $3)
           )
          )
         )
        )
        (i32.store
         (get_local $12)
         (i32.or
          (select
           (get_local $1)
           (get_local $3)
           (i32.lt_u
            (get_local $1)
            (get_local $3)
           )
          )
          (i32.and
           (get_local $13)
           (i32.const -2147483648)
          )
         )
        )
        (block $label$14
         (br_if $label$14
          (i32.le_u
           (get_local $1)
           (get_local $3)
          )
         )
         (i32.store
          (i32.add
           (get_local $2)
           (get_local $3)
          )
          (i32.and
           (i32.add
            (get_local $5)
            (get_local $1)
           )
           (i32.const 2147483647)
          )
         )
        )
        (br_if $label$3
         (i32.ge_u
          (get_local $1)
          (get_local $3)
         )
        )
       )
       (br_if $label$10
        (i32.lt_u
         (tee_local $2
          (i32.add
           (i32.add
            (get_local $2)
            (get_local $1)
           )
           (i32.const 4)
          )
         )
         (get_local $11)
        )
       )
      )
      (set_local $1
       (i32.const 0)
      )
      (i32.store
       (get_local $6)
       (tee_local $2
        (select
         (i32.const 0)
         (tee_local $2
          (i32.add
           (i32.load
            (get_local $6)
           )
           (i32.const 1)
          )
         )
         (i32.eq
          (get_local $2)
          (i32.load
           (get_local $7)
          )
         )
        )
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $2)
        (get_local $8)
       )
      )
     )
    )
    (return
     (get_local $1)
    )
   )
   (i32.store
    (get_local $12)
    (i32.or
     (i32.load
      (get_local $12)
     )
     (i32.const -2147483648)
    )
   )
   (return
    (get_local $2)
   )
  )
  (i32.const 0)
 )
 (func $20 (; 40 ;) (type $20) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $1
   (i32.load offset=8388
    (get_local $0)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (i32.load8_u offset=8660
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8664
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8660
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8664
    (i32.const 0)
    (tee_local $2
     (i32.shl
      (get_local $2)
      (i32.const 16)
     )
    )
   )
  )
  (set_local $3
   (get_local $2)
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.le_u
        (tee_local $4
         (i32.shr_u
          (i32.add
           (get_local $2)
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $5
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $4)
         (get_local $5)
        )
       )
      )
      (set_local $5
       (i32.const 0)
      )
      (br_if $label$5
       (i32.ne
        (get_local $4)
        (current_memory)
       )
      )
      (set_local $3
       (i32.load offset=8664
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8664
      (i32.const 0)
      (get_local $3)
     )
     (br_if $label$5
      (i32.lt_s
       (get_local $2)
       (i32.const 0)
      )
     )
     (set_local $4
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
     )
     (block $label$7
      (block $label$8
       (br_if $label$8
        (i32.gt_u
         (tee_local $5
          (i32.and
           (get_local $2)
           (i32.const 65535)
          )
         )
         (i32.const 64512)
        )
       )
       (set_local $5
        (i32.sub
         (i32.add
          (get_local $2)
          (i32.const 65536)
         )
         (get_local $5)
        )
       )
       (br $label$7)
      )
      (set_local $5
       (i32.sub
        (i32.add
         (get_local $2)
         (i32.const 131072)
        )
        (i32.and
         (get_local $2)
         (i32.const 131071)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $0)
       (get_local $4)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $5)
       (get_local $2)
      )
     )
     (block $label$9
      (br_if $label$9
       (i32.load8_u offset=8660
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8660
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8664
       (i32.const 0)
       (tee_local $3
        (i32.shl
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 8192)
      )
     )
     (br_if $label$4
      (i32.lt_s
       (get_local $2)
       (i32.const 0)
      )
     )
     (set_local $6
      (get_local $3)
     )
     (block $label$10
      (br_if $label$10
       (i32.le_u
        (tee_local $5
         (i32.shr_u
          (i32.add
           (i32.add
            (tee_local $7
             (i32.and
              (i32.add
               (get_local $2)
               (i32.const 7)
              )
              (i32.const -8)
             )
            )
            (get_local $3)
           )
           (i32.const 65535)
          )
          (i32.const 16)
         )
        )
        (tee_local $8
         (current_memory)
        )
       )
      )
      (drop
       (grow_memory
        (i32.sub
         (get_local $5)
         (get_local $8)
        )
       )
      )
      (br_if $label$4
       (i32.ne
        (get_local $5)
        (current_memory)
       )
      )
      (set_local $6
       (i32.load offset=8664
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8664
      (i32.const 0)
      (i32.add
       (get_local $6)
       (get_local $7)
      )
     )
     (br_if $label$4
      (i32.eq
       (get_local $3)
       (i32.const -1)
      )
     )
     (br_if $label$3
      (i32.eq
       (i32.add
        (tee_local $6
         (i32.load
          (i32.add
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.mul
              (get_local $1)
              (i32.const 12)
             )
            )
           )
           (i32.const 8196)
          )
         )
        )
        (tee_local $5
         (i32.load
          (get_local $4)
         )
        )
       )
       (get_local $3)
      )
     )
     (block $label$11
      (br_if $label$11
       (i32.eq
        (get_local $5)
        (tee_local $1
         (i32.load
          (tee_local $7
           (i32.add
            (get_local $1)
            (i32.const 8200)
           )
          )
         )
        )
       )
      )
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $6)
         (get_local $1)
        )
       )
       (i32.or
        (i32.and
         (i32.load
          (get_local $6)
         )
         (i32.const -2147483648)
        )
        (i32.add
         (i32.sub
          (i32.const -4)
          (get_local $1)
         )
         (get_local $5)
        )
       )
      )
      (i32.store
       (get_local $7)
       (i32.load
        (get_local $4)
       )
      )
      (i32.store
       (get_local $6)
       (i32.and
        (i32.load
         (get_local $6)
        )
        (i32.const 2147483647)
       )
      )
     )
     (i32.store
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 8388)
       )
      )
      (tee_local $4
       (i32.add
        (i32.load
         (get_local $4)
        )
        (i32.const 1)
       )
      )
     )
     (i32.store
      (tee_local $5
       (i32.add
        (tee_local $0
         (i32.add
          (get_local $0)
          (i32.mul
           (get_local $4)
           (i32.const 12)
          )
         )
        )
        (i32.const 8192)
       )
      )
      (get_local $2)
     )
     (i32.store
      (i32.add
       (get_local $0)
       (i32.const 8196)
      )
      (get_local $3)
     )
    )
    (return
     (get_local $5)
    )
   )
   (block $label$12
    (br_if $label$12
     (i32.eq
      (tee_local $5
       (i32.load
        (get_local $4)
       )
      )
      (tee_local $2
       (i32.load
        (tee_local $1
         (i32.add
          (tee_local $3
           (i32.add
            (get_local $0)
            (i32.mul
             (get_local $1)
             (i32.const 12)
            )
           )
          )
          (i32.const 8200)
         )
        )
       )
      )
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 8196)
        )
       )
       (get_local $2)
      )
     )
     (i32.or
      (i32.and
       (i32.load
        (get_local $3)
       )
       (i32.const -2147483648)
      )
      (i32.add
       (i32.sub
        (i32.const -4)
        (get_local $2)
       )
       (get_local $5)
      )
     )
    )
    (i32.store
     (get_local $1)
     (i32.load
      (get_local $4)
     )
    )
    (i32.store
     (get_local $3)
     (i32.and
      (i32.load
       (get_local $3)
      )
      (i32.const 2147483647)
     )
    )
   )
   (i32.store offset=8384
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.load
       (tee_local $2
        (i32.add
         (get_local $0)
         (i32.const 8388)
        )
       )
      )
      (i32.const 1)
     )
    )
   )
   (i32.store
    (get_local $2)
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $4)
   (i32.add
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $4)
 )
 (func $21 (; 41 ;) (type $21) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eqz
      (get_local $0)
     )
    )
    (br_if $label$2
     (i32.lt_s
      (tee_local $1
       (i32.load offset=17052
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 16860)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 16860)
     )
    )
    (loop $label$3
     (br_if $label$2
      (i32.eqz
       (tee_local $1
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 4)
         )
        )
       )
      )
     )
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (get_local $0)
       )
      )
      (br_if $label$1
       (i32.gt_u
        (i32.add
         (get_local $1)
         (i32.load
          (get_local $2)
         )
        )
        (get_local $0)
       )
      )
     )
     (br_if $label$3
      (i32.lt_u
       (tee_local $2
        (i32.add
         (get_local $2)
         (i32.const 12)
        )
       )
       (get_local $3)
      )
     )
    )
   )
   (return)
  )
  (i32.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const -4)
    )
   )
   (i32.and
    (i32.load
     (get_local $2)
    )
    (i32.const 2147483647)
   )
  )
 )
)
