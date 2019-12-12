(module
 (type $0 (func (param i32 i64 i32)))
 (type $1 (func (param i32 i64)))
 (type $2 (func))
 (type $3 (func (param i64)))
 (type $4 (func (param i64 i64 i64 i64) (result i32)))
 (type $5 (func (param i32 i32)))
 (type $6 (func (result i64)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $9 (func (param i32 i64 i32 i32)))
 (type $10 (func (result i32)))
 (type $11 (func (param i32 i32) (result i32)))
 (type $12 (func (param i32 i32 i32 i32)))
 (type $13 (func (param i64 i64 i64)))
 (type $14 (func (param i64 i64 i32) (result i32)))
 (type $15 (func (param i32) (result i32)))
 (type $16 (func (param i32)))
 (import "env" "require_auth" (func $fimport$0 (param i64)))
 (import "env" "db_find_i64" (func $fimport$1 (param i64 i64 i64 i64) (result i32)))
 (import "env" "eosio_assert" (func $fimport$2 (param i32 i32)))
 (import "env" "current_receiver" (func $fimport$3 (result i64)))
 (import "env" "memcpy" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "db_store_i64" (func $fimport$5 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $fimport$6 (param i32 i64 i32 i32)))
 (import "env" "action_data_size" (func $fimport$7 (result i32)))
 (import "env" "read_action_data" (func $fimport$8 (param i32 i32) (result i32)))
 (import "env" "db_get_i64" (func $fimport$9 (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $fimport$10))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$11 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$12 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$13 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "iboswitchs already defined \00")
 (data (i32.const 8220) "IboAccount is not add iboswitchs\00malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (data (i32.const 8339) "TgeAccount is not add tgeswitchs\00")
 (data (i32.const 8372) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 8423) "error reading iterator\00")
 (data (i32.const 8446) "read\00")
 (data (i32.const 8451) "cannot create objects in table of another contract\00")
 (data (i32.const 8502) "write\00")
 (data (i32.const 8508) "cannot pass end iterator to modify\00")
 (data (i32.const 8543) "object passed to modify is not in multi_index\00")
 (data (i32.const 8589) "cannot modify objects in table of another contract\00")
 (data (i32.const 8640) "updater cannot change primary key when modifying an object\00")
 (table $0 5 5 anyfunc)
 (elem (i32.const 1) $8 $1 $4 $5)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 17116))
 (global $global$2 i32 (i32.const 17116))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $9))
 (export "_Znwj" (func $12))
 (export "_ZdlPv" (func $14))
 (export "_Znaj" (func $13))
 (export "_ZdaPv" (func $15))
 (export "_ZnwjSt11align_val_t" (func $16))
 (export "_ZnajSt11align_val_t" (func $17))
 (export "_ZdlPvSt11align_val_t" (func $18))
 (export "_ZdaPvSt11align_val_t" (func $19))
 (func $0 (; 14 ;) (type $2)
 )
 (func $1 (; 15 ;) (type $1) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 80)
    )
   )
  )
  (call $fimport$0
   (i64.load
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $2)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (i32.const 1)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $5
      (call $fimport$1
       (get_local $3)
       (get_local $3)
       (i64.const 8208248180591951872)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$2
    (i32.eq
     (i32.load offset=12
      (call $2
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (get_local $5)
      )
     )
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
    (i32.const 8372)
   )
   (set_local $4
    (i32.const 0)
   )
  )
  (call $fimport$2
   (get_local $4)
   (i32.const 8192)
  )
  (set_local $6
   (i64.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i64.eq
    (i64.load offset=8
     (get_local $2)
    )
    (call $fimport$3)
   )
   (i32.const 8451)
  )
  (i32.store offset=12
   (tee_local $0
    (call $12
     (i32.const 24)
    )
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store8 offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store8 offset=56
   (get_local $2)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.or
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $2)
     (i32.const 56)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (tee_local $5
    (call $fimport$5
     (i64.load
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.const 8)
      )
     )
     (i64.const 8208248180591951872)
     (get_local $6)
     (tee_local $3
      (i64.load
       (get_local $0)
      )
     )
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.const 9)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $3)
     (i64.load
      (tee_local $4
       (i32.add
        (get_local $2)
        (i32.const 24)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $4)
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=56
   (get_local $2)
   (get_local $0)
  )
  (i64.store offset=64
   (get_local $2)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=52
   (get_local $2)
   (get_local $5)
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $2)
           (i32.const 36)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 40)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $3)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=56
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $0)
     )
     (i32.store
      (get_local $7)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (set_local $0
      (i32.load offset=56
       (get_local $2)
      )
     )
     (i32.store offset=56
      (get_local $2)
      (i32.const 0)
     )
     (br_if $label$4
      (get_local $0)
     )
     (br $label$3)
    )
    (call $3
     (i32.add
      (get_local $2)
      (i32.const 32)
     )
     (i32.add
      (get_local $2)
      (i32.const 56)
     )
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.add
      (get_local $2)
      (i32.const 52)
     )
    )
    (set_local $0
     (i32.load offset=56
      (get_local $2)
     )
    )
    (i32.store offset=56
     (get_local $2)
     (i32.const 0)
    )
    (br_if $label$3
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (call $14
    (get_local $0)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $2)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $2)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$9
      (set_local $4
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
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $14
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $5)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 32)
       )
      )
     )
     (br $label$7)
    )
    (set_local $0
     (get_local $5)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $5)
   )
   (call $14
    (get_local $0)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $2 (; 16 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
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
  (call $fimport$2
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
   (i32.const 8423)
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
     (call $25
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
  (i32.store offset=12
   (tee_local $5
    (call $12
     (i32.const 24)
    )
   )
   (get_local $0)
  )
  (i64.store
   (get_local $5)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.gt_u
    (get_local $4)
    (i32.const 7)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (get_local $5)
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.ne
    (get_local $4)
    (i32.const 8)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=8
   (get_local $5)
   (i32.ne
    (i32.load8_u offset=16
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=16
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
    (call $3
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
   (call $28
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
   (call $14
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
 (func $3 (; 17 ;) (type $12) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
      (call $12
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
   (call $20
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
     (call $14
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
   (call $14
    (get_local $2)
   )
  )
 )
 (func $4 (; 18 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (call $fimport$0
   (i64.load
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $3)
   (get_local $4)
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $5
      (call $fimport$1
       (get_local $4)
       (get_local $4)
       (i64.const 8208248180591951872)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$2
    (i32.eq
     (i32.load offset=12
      (tee_local $0
       (call $2
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $5)
       )
      )
     )
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
    (i32.const 8372)
   )
  )
  (call $fimport$2
   (tee_local $5
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (i32.const 8220)
  )
  (call $fimport$2
   (get_local $5)
   (i32.const 8508)
  )
  (call $fimport$2
   (i32.eq
    (i32.load offset=12
     (get_local $0)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
   (i32.const 8543)
  )
  (call $fimport$2
   (i64.eq
    (i64.load offset=8
     (get_local $3)
    )
    (call $fimport$3)
   )
   (i32.const 8589)
  )
  (i32.store8 offset=8
   (get_local $0)
   (get_local $2)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8640)
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 48)
    )
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store8 offset=63
   (get_local $3)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.or
     (i32.add
      (get_local $3)
      (i32.const 48)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $3)
     (i32.const 63)
    )
    (i32.const 1)
   )
  )
  (call $fimport$6
   (i32.load offset=16
    (get_local $0)
   )
   (i64.const 0)
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
   (i32.const 9)
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $4)
     (i64.load
      (tee_local $0
       (i32.add
        (get_local $3)
        (i32.const 24)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $0)
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
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $3)
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
         (tee_local $6
          (i32.add
           (get_local $3)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$6
      (set_local $2
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
         (get_local $2)
        )
       )
       (call $14
        (get_local $2)
       )
      )
      (br_if $label$6
       (i32.ne
        (get_local $5)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $3)
        (i32.const 32)
       )
      )
     )
     (br $label$4)
    )
    (set_local $0
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $5)
   )
   (call $14
    (get_local $0)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $5 (; 19 ;) (type $1) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 80)
    )
   )
  )
  (call $fimport$0
   (i64.load
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $2)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $2)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $2)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $2)
   (get_local $3)
  )
  (set_local $4
   (i32.const 1)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $5
      (call $fimport$1
       (get_local $3)
       (get_local $3)
       (i64.const -3812985124766744576)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$2
    (i32.eq
     (i32.load offset=12
      (call $6
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (get_local $5)
      )
     )
     (i32.add
      (get_local $2)
      (i32.const 8)
     )
    )
    (i32.const 8372)
   )
   (set_local $4
    (i32.const 0)
   )
  )
  (call $fimport$2
   (get_local $4)
   (i32.const 8192)
  )
  (set_local $6
   (i64.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i64.eq
    (i64.load offset=8
     (get_local $2)
    )
    (call $fimport$3)
   )
   (i32.const 8451)
  )
  (i32.store offset=12
   (tee_local $0
    (call $12
     (i32.const 24)
    )
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store8 offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store
   (get_local $0)
   (get_local $1)
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store8 offset=56
   (get_local $2)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.or
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $2)
     (i32.const 56)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (tee_local $5
    (call $fimport$5
     (i64.load
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.const 8)
      )
     )
     (i64.const -3812985124766744576)
     (get_local $6)
     (tee_local $3
      (i64.load
       (get_local $0)
      )
     )
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.const 9)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $3)
     (i64.load
      (tee_local $4
       (i32.add
        (get_local $2)
        (i32.const 24)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $4)
    (select
     (i64.const -2)
     (i64.add
      (get_local $3)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $3)
      (i64.const -3)
     )
    )
   )
  )
  (i32.store offset=56
   (get_local $2)
   (get_local $0)
  )
  (i64.store offset=64
   (get_local $2)
   (tee_local $3
    (i64.load
     (get_local $0)
    )
   )
  )
  (i32.store offset=52
   (get_local $2)
   (get_local $5)
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.ge_u
       (tee_local $4
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $2)
           (i32.const 36)
          )
         )
        )
       )
       (i32.load
        (i32.add
         (get_local $2)
         (i32.const 40)
        )
       )
      )
     )
     (i64.store offset=8
      (get_local $4)
      (get_local $3)
     )
     (i32.store offset=16
      (get_local $4)
      (get_local $5)
     )
     (i32.store offset=56
      (get_local $2)
      (i32.const 0)
     )
     (i32.store
      (get_local $4)
      (get_local $0)
     )
     (i32.store
      (get_local $7)
      (i32.add
       (get_local $4)
       (i32.const 24)
      )
     )
     (set_local $0
      (i32.load offset=56
       (get_local $2)
      )
     )
     (i32.store offset=56
      (get_local $2)
      (i32.const 0)
     )
     (br_if $label$4
      (get_local $0)
     )
     (br $label$3)
    )
    (call $7
     (i32.add
      (get_local $2)
      (i32.const 32)
     )
     (i32.add
      (get_local $2)
      (i32.const 56)
     )
     (i32.add
      (get_local $2)
      (i32.const 64)
     )
     (i32.add
      (get_local $2)
      (i32.const 52)
     )
    )
    (set_local $0
     (i32.load offset=56
      (get_local $2)
     )
    )
    (i32.store offset=56
     (get_local $2)
     (i32.const 0)
    )
    (br_if $label$3
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (call $14
    (get_local $0)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $2)
      )
     )
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i32.eq
       (tee_local $0
        (i32.load
         (tee_local $7
          (i32.add
           (get_local $2)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$9
      (set_local $4
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
      (block $label$10
       (br_if $label$10
        (i32.eqz
         (get_local $4)
        )
       )
       (call $14
        (get_local $4)
       )
      )
      (br_if $label$9
       (i32.ne
        (get_local $5)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $2)
        (i32.const 32)
       )
      )
     )
     (br $label$7)
    )
    (set_local $0
     (get_local $5)
    )
   )
   (i32.store
    (get_local $7)
    (get_local $5)
   )
   (call $14
    (get_local $0)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 80)
   )
  )
 )
 (func $6 (; 20 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
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
  (call $fimport$2
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
   (i32.const 8423)
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
     (call $25
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
  (i32.store offset=12
   (tee_local $5
    (call $12
     (i32.const 24)
    )
   )
   (get_local $0)
  )
  (i64.store
   (get_local $5)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.gt_u
    (get_local $4)
    (i32.const 7)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (get_local $5)
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.ne
    (get_local $4)
    (i32.const 8)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=8
   (get_local $5)
   (i32.ne
    (i32.load8_u offset=16
     (get_local $3)
    )
    (i32.const 0)
   )
  )
  (i32.store offset=16
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
    (call $7
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
   (call $28
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
   (call $14
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
 (func $7 (; 21 ;) (type $12) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
      (call $12
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
   (call $20
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
     (call $14
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
   (call $14
    (get_local $2)
   )
  )
 )
 (func $8 (; 22 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (call $fimport$0
   (i64.load
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const -1)
  )
  (i64.store offset=32
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (tee_local $4
    (i64.load
     (get_local $0)
    )
   )
  )
  (i64.store offset=16
   (get_local $3)
   (get_local $4)
  )
  (set_local $0
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_s
     (tee_local $5
      (call $fimport$1
       (get_local $4)
       (get_local $4)
       (i64.const -3812985124766744576)
       (get_local $1)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$2
    (i32.eq
     (i32.load offset=12
      (tee_local $0
       (call $6
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $5)
       )
      )
     )
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
    (i32.const 8372)
   )
  )
  (call $fimport$2
   (tee_local $5
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (i32.const 8339)
  )
  (call $fimport$2
   (get_local $5)
   (i32.const 8508)
  )
  (call $fimport$2
   (i32.eq
    (i32.load offset=12
     (get_local $0)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
   (i32.const 8543)
  )
  (call $fimport$2
   (i64.eq
    (i64.load offset=8
     (get_local $3)
    )
    (call $fimport$3)
   )
   (i32.const 8589)
  )
  (i32.store8 offset=8
   (get_local $0)
   (get_local $2)
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8640)
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 48)
    )
    (get_local $0)
    (i32.const 8)
   )
  )
  (i32.store8 offset=63
   (get_local $3)
   (i32.load8_u offset=8
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8502)
  )
  (drop
   (call $fimport$4
    (i32.or
     (i32.add
      (get_local $3)
      (i32.const 48)
     )
     (i32.const 8)
    )
    (i32.add
     (get_local $3)
     (i32.const 63)
    )
    (i32.const 1)
   )
  )
  (call $fimport$6
   (i32.load offset=16
    (get_local $0)
   )
   (i64.const 0)
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
   (i32.const 9)
  )
  (block $label$2
   (br_if $label$2
    (i64.lt_u
     (get_local $4)
     (i64.load
      (tee_local $0
       (i32.add
        (get_local $3)
        (i32.const 24)
       )
      )
     )
    )
   )
   (i64.store
    (get_local $0)
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
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $5
      (i32.load offset=32
       (get_local $3)
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
         (tee_local $6
          (i32.add
           (get_local $3)
           (i32.const 36)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$6
      (set_local $2
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
         (get_local $2)
        )
       )
       (call $14
        (get_local $2)
       )
      )
      (br_if $label$6
       (i32.ne
        (get_local $5)
        (get_local $0)
       )
      )
     )
     (set_local $0
      (i32.load
       (i32.add
        (get_local $3)
        (i32.const 32)
       )
      )
     )
     (br $label$4)
    )
    (set_local $0
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $5)
   )
   (call $14
    (get_local $0)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $9 (; 23 ;) (type $13) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (call $0)
  (block $label$1
   (br_if $label$1
    (i64.ne
     (get_local $1)
     (get_local $0)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i64.gt_s
        (get_local $2)
        (i64.const 3626211145834037247)
       )
      )
      (br_if $label$3
       (i64.eq
        (get_local $2)
        (i64.const -4741476961820344320)
       )
      )
      (br_if $label$1
       (i64.ne
        (get_local $2)
        (i64.const -4741280870793478144)
       )
      )
      (i32.store offset=36
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=32
       (get_local $3)
       (i32.const 1)
      )
      (i64.store offset=24
       (get_local $3)
       (i64.load offset=32
        (get_local $3)
       )
      )
      (drop
       (call $10
        (get_local $1)
        (get_local $1)
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
       )
      )
      (br $label$1)
     )
     (br_if $label$2
      (i64.eq
       (get_local $2)
       (i64.const 3626407236860903424)
      )
     )
     (br_if $label$1
      (i64.ne
       (get_local $2)
       (i64.const 3626211145834037248)
      )
     )
     (i32.store offset=60
      (get_local $3)
      (i32.const 0)
     )
     (i32.store offset=56
      (get_local $3)
      (i32.const 2)
     )
     (i64.store
      (get_local $3)
      (i64.load offset=56
       (get_local $3)
      )
     )
     (drop
      (call $11
       (get_local $1)
       (get_local $1)
       (get_local $3)
      )
     )
     (br $label$1)
    )
    (i32.store offset=44
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=40
     (get_local $3)
     (i32.const 3)
    )
    (i64.store offset=16
     (get_local $3)
     (i64.load offset=40
      (get_local $3)
     )
    )
    (drop
     (call $10
      (get_local $1)
      (get_local $1)
      (i32.add
       (get_local $3)
       (i32.const 16)
      )
     )
    )
    (br $label$1)
   )
   (i32.store offset=52
    (get_local $3)
    (i32.const 0)
   )
   (i32.store offset=48
    (get_local $3)
    (i32.const 4)
   )
   (i64.store offset=8
    (get_local $3)
    (i64.load offset=48
     (get_local $3)
    )
   )
   (drop
    (call $11
     (get_local $1)
     (get_local $1)
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
   )
  )
  (call $21
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $10 (; 24 ;) (type $14) (param $0 i64) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
    )
   )
  )
  (set_global $global$0
   (get_local $3)
  )
  (set_local $5
   (i32.load offset=4
    (get_local $2)
   )
  )
  (set_local $6
   (i32.load
    (get_local $2)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $7
      (call $fimport$7)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.lt_u
       (get_local $7)
       (i32.const 513)
      )
     )
     (set_local $2
      (call $25
       (get_local $7)
      )
     )
     (br $label$2)
    )
    (set_global $global$0
     (tee_local $2
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $7)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $fimport$8
     (get_local $2)
     (get_local $7)
    )
   )
  )
  (i64.store offset=32
   (get_local $4)
   (i64.const 0)
  )
  (i32.store8 offset=40
   (get_local $4)
   (i32.const 0)
  )
  (call $fimport$2
   (i32.gt_u
    (get_local $7)
    (i32.const 7)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $4)
     (i32.const 32)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.ne
    (get_local $7)
    (i32.const 8)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (get_local $4)
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (i32.store8 offset=40
   (get_local $4)
   (i32.ne
    (tee_local $8
     (i32.load8_u
      (get_local $4)
     )
    )
    (i32.const 0)
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 20)
   )
   (i32.add
    (get_local $2)
    (i32.const 9)
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 24)
   )
   (i32.add
    (get_local $2)
    (get_local $7)
   )
  )
  (i64.store offset=8
   (get_local $4)
   (get_local $1)
  )
  (i64.store
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=16
   (get_local $4)
   (get_local $2)
  )
  (set_local $3
   (i32.add
    (get_local $4)
    (i32.shr_s
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i64.load offset=32
    (get_local $4)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.eqz
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i32.load
     (i32.add
      (i32.load
       (get_local $3)
      )
      (get_local $6)
     )
    )
   )
  )
  (call_indirect (type $0)
   (get_local $3)
   (get_local $0)
   (i32.ne
    (get_local $8)
    (i32.const 0)
   )
   (get_local $6)
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_u
     (get_local $7)
     (i32.const 513)
    )
   )
   (call $28
    (get_local $2)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
  (i32.const 1)
 )
 (func $11 (; 25 ;) (type $14) (param $0 i64) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
    )
   )
  )
  (set_global $global$0
   (get_local $3)
  )
  (set_local $5
   (i32.load offset=4
    (get_local $2)
   )
  )
  (set_local $6
   (i32.load
    (get_local $2)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $7
         (call $fimport$7)
        )
       )
      )
      (br_if $label$3
       (i32.lt_u
        (get_local $7)
        (i32.const 513)
       )
      )
      (set_local $2
       (call $25
        (get_local $7)
       )
      )
      (br $label$2)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$1)
    )
    (set_global $global$0
     (tee_local $2
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $7)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $fimport$8
     (get_local $2)
     (get_local $7)
    )
   )
  )
  (i64.store offset=40
   (get_local $4)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.gt_u
    (get_local $7)
    (i32.const 7)
   )
   (i32.const 8446)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $4)
     (i32.const 40)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 28)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
   (i32.add
    (get_local $2)
    (get_local $7)
   )
  )
  (i64.store offset=16
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=24
   (get_local $4)
   (get_local $2)
  )
  (set_local $3
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
    (i32.shr_s
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i64.load offset=40
    (get_local $4)
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (i32.and
      (get_local $5)
      (i32.const 1)
     )
    )
   )
   (set_local $6
    (i32.load
     (i32.add
      (i32.load
       (get_local $3)
      )
      (get_local $6)
     )
    )
   )
  )
  (call_indirect (type $1)
   (get_local $3)
   (get_local $0)
   (get_local $6)
  )
  (block $label$6
   (br_if $label$6
    (i32.lt_u
     (get_local $7)
     (i32.const 513)
    )
   )
   (call $28
    (get_local $2)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
  (i32.const 1)
 )
 (func $12 (; 26 ;) (type $15) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $25
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
       (i32.load offset=8700
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $2)
     (get_local $2)
    )
    (br_if $label$2
     (i32.eqz
      (tee_local $0
       (call $25
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $13 (; 27 ;) (type $15) (param $0 i32) (result i32)
  (call $12
   (get_local $0)
  )
 )
 (func $14 (; 28 ;) (type $16) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $28
    (get_local $0)
   )
  )
 )
 (func $15 (; 29 ;) (type $16) (param $0 i32)
  (call $14
   (get_local $0)
  )
 )
 (func $16 (; 30 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (call $23
      (i32.add
       (get_local $2)
       (i32.const 12)
      )
      (tee_local $1
       (select
        (get_local $1)
        (i32.const 4)
        (i32.gt_u
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (tee_local $3
       (select
        (get_local $0)
        (i32.const 1)
        (get_local $0)
       )
      )
     )
    )
   )
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i32.eqz
       (tee_local $0
        (i32.load offset=8700
         (i32.const 0)
        )
       )
      )
     )
     (call_indirect (type $2)
      (get_local $0)
     )
     (br_if $label$3
      (call $23
       (i32.add
        (get_local $2)
        (i32.const 12)
       )
       (get_local $1)
       (get_local $3)
      )
     )
     (br $label$1)
    )
   )
   (i32.store offset=12
    (get_local $2)
    (i32.const 0)
   )
  )
  (set_local $0
   (i32.load offset=12
    (get_local $2)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
  (get_local $0)
 )
 (func $17 (; 31 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
  (call $16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $18 (; 32 ;) (type $5) (param $0 i32) (param $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $28
    (get_local $0)
   )
  )
 )
 (func $19 (; 33 ;) (type $5) (param $0 i32) (param $1 i32)
  (call $18
   (get_local $0)
   (get_local $1)
  )
 )
 (func $20 (; 34 ;) (type $16) (param $0 i32)
  (call $fimport$10)
  (unreachable)
 )
 (func $21 (; 35 ;) (type $16) (param $0 i32)
 )
 (func $22 (; 36 ;) (type $10) (result i32)
  (i32.const 8704)
 )
 (func $23 (; 37 ;) (type $7) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (i32.const 22)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $1)
      (i32.const 4)
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $1
       (call $24
        (get_local $1)
        (get_local $2)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $1)
    )
    (set_local $3
     (i32.const 0)
    )
   )
   (return
    (get_local $3)
   )
  )
  (i32.load
   (call $22)
  )
 )
 (func $24 (; 38 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (i32.const 0)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.ne
      (i32.and
       (tee_local $3
        (i32.sub
         (i32.const 0)
         (get_local $0)
        )
       )
       (get_local $0)
      )
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.gt_u
      (get_local $0)
      (i32.const 16)
     )
    )
    (return
     (call $25
      (get_local $1)
     )
    )
   )
   (i32.store
    (call $22)
    (i32.const 22)
   )
   (return
    (i32.const 0)
   )
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (br_if $label$5
      (i32.eqz
       (tee_local $0
        (call $25
         (i32.add
          (tee_local $4
           (i32.add
            (get_local $0)
            (i32.const -1)
           )
          )
          (get_local $1)
         )
        )
       )
      )
     )
     (br_if $label$4
      (i32.eq
       (get_local $0)
       (tee_local $2
        (i32.and
         (i32.add
          (get_local $4)
          (get_local $0)
         )
         (get_local $3)
        )
       )
      )
     )
     (br_if $label$3
      (i32.eqz
       (tee_local $1
        (i32.and
         (tee_local $4
          (i32.load
           (tee_local $3
            (i32.add
             (get_local $0)
             (i32.const -4)
            )
           )
          )
         )
         (i32.const 7)
        )
       )
      )
     )
     (set_local $6
      (i32.load
       (tee_local $5
        (i32.add
         (tee_local $4
          (i32.add
           (get_local $0)
           (i32.and
            (get_local $4)
            (i32.const -8)
           )
          )
         )
         (i32.const -8)
        )
       )
      )
     )
     (i32.store
      (get_local $3)
      (i32.or
       (get_local $1)
       (tee_local $7
        (i32.sub
         (get_local $2)
         (get_local $0)
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $2)
       (i32.const -4)
      )
      (i32.or
       (tee_local $3
        (i32.sub
         (get_local $4)
         (get_local $2)
        )
       )
       (get_local $1)
      )
     )
     (i32.store
      (i32.add
       (get_local $2)
       (i32.const -8)
      )
      (i32.or
       (tee_local $1
        (i32.and
         (get_local $6)
         (i32.const 7)
        )
       )
       (get_local $7)
      )
     )
     (i32.store
      (get_local $5)
      (i32.or
       (get_local $1)
       (get_local $3)
      )
     )
     (call $28
      (get_local $0)
     )
    )
    (return
     (get_local $2)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const -8)
   )
   (i32.add
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const -8)
     )
    )
    (tee_local $0
     (i32.sub
      (get_local $2)
      (get_local $0)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $2)
    (i32.const -4)
   )
   (i32.sub
    (i32.load
     (get_local $3)
    )
    (get_local $0)
   )
  )
  (get_local $2)
 )
 (func $25 (; 39 ;) (type $15) (param $0 i32) (result i32)
  (call $26
   (i32.const 8720)
   (get_local $0)
  )
 )
 (func $26 (; 40 ;) (type $11) (param $0 i32) (param $1 i32) (result i32)
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
         (call $27
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
      (call $fimport$2
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
       (i32.const 8253)
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
 (func $27 (; 41 ;) (type $15) (param $0 i32) (result i32)
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
      (i32.load8_u offset=8712
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8716
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8712
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8716
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
       (i32.load offset=8716
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8716
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
       (i32.load8_u offset=8712
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8712
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8716
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
       (i32.load offset=8716
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8716
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
 (func $28 (; 42 ;) (type $16) (param $0 i32)
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
       (i32.load offset=17104
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 16912)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 16912)
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

