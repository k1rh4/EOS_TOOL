(module
 (type $0 (func (param i32 i64 i32)))
 (type $1 (func))
 (type $2 (func (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32 i32) (result i32)))
 (type $6 (func (param i64)))
 (type $7 (func (param i64 i64 i64)))
 (type $8 (func (param i64 i64 i32) (result i32)))
 (type $9 (func (param i32 i64 i32 i32)))
 (type $10 (func (param i32) (result i32)))
 (type $11 (func (param i32)))
 (import "env" "action_data_size" (func $fimport$0 (result i32)))
 (import "env" "read_action_data" (func $fimport$1 (param i32 i32) (result i32)))
 (import "env" "eosio_assert" (func $fimport$2 (param i32 i32)))
 (import "env" "memcpy" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "require_auth" (func $fimport$4 (param i64)))
 (import "env" "send_inline" (func $fimport$5 (param i32 i32)))
 (import "env" "abort" (func $fimport$6))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$7 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$8 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$9 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "safe\00")
 (data (i32.const 8197) "eosio\00malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (data (i32.const 8289) "delegatebw\00")
 (data (i32.const 8300) "string is too long to be a valid name\00")
 (data (i32.const 8338) "thirteenth character in name cannot be a letter that comes after j\00")
 (data (i32.const 8405) "character is not in allowed character set for names\00")
 (data (i32.const 8457) "write\00")
 (data (i32.const 8463) "undelegatebw\00")
 (data (i32.const 8476) "read\00")
 (data (i32.const 8481) "EOS\00")
 (data (i32.const 8485) "string is too long to be a valid symbol_code\00")
 (data (i32.const 8530) "only uppercase letters allowed in symbol_code string\00")
 (data (i32.const 8583) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 8632) "invalid symbol name\00")
 (table $0 3 3 anyfunc)
 (elem (i32.const 1) $2 $4)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 17068))
 (global $global$2 i32 (i32.const 17068))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (export "_Znwj" (func $14))
 (export "_ZdlPv" (func $16))
 (export "_Znaj" (func $15))
 (export "_ZdaPv" (func $17))
 (export "_ZnwjSt11align_val_t" (func $18))
 (export "_ZnajSt11align_val_t" (func $19))
 (export "_ZdlPvSt11align_val_t" (func $20))
 (export "_ZdaPvSt11align_val_t" (func $21))
 (func $0 (; 10 ;) (type $1)
 )
 (func $1 (; 11 ;) (type $7) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
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
    (br_if $label$2
     (i64.eq
      (get_local $2)
      (i64.const -3111238946495234048)
     )
    )
    (br_if $label$1
     (i64.ne
      (get_local $2)
      (i64.const 5378043540632764416)
     )
    )
    (i32.store offset=28
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $3)
     (i32.const 1)
    )
    (i64.store
     (get_local $3)
     (i64.load offset=24
      (get_local $3)
     )
    )
    (drop
     (call $3
      (get_local $1)
      (get_local $1)
      (get_local $3)
     )
    )
    (br $label$1)
   )
   (i32.store offset=20
    (get_local $3)
    (i32.const 0)
   )
   (i32.store offset=16
    (get_local $3)
    (i32.const 2)
   )
   (i64.store offset=8
    (get_local $3)
    (i64.load offset=16
     (get_local $3)
    )
   )
   (drop
    (call $3
     (get_local $1)
     (get_local $1)
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
   )
  )
  (call $23
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $2 (; 12 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (call $fimport$4
   (i64.load
    (get_local $0)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 48)
    )
    (i32.const 8)
   )
   (tee_local $4
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 40)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $2)
   )
  )
  (set_local $7
   (i64.load offset=32
    (get_local $0)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (get_local $5)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
    (i32.const 8)
   )
   (get_local $5)
  )
  (i64.store offset=48
   (get_local $3)
   (get_local $7)
  )
  (i64.store offset=16
   (get_local $3)
   (get_local $7)
  )
  (i64.store
   (get_local $3)
   (get_local $6)
  )
  (i64.store offset=32
   (get_local $3)
   (get_local $6)
  )
  (call $5
   (get_local $0)
   (get_local $1)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (get_local $3)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $3 (; 13 ;) (type $8) (param $0 i64) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (set_local $4
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 144)
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
         (call $fimport$0)
        )
       )
      )
      (br_if $label$3
       (i32.lt_u
        (get_local $7)
        (i32.const 513)
       )
      )
      (set_local $8
       (call $28
        (get_local $7)
       )
      )
      (br $label$2)
     )
     (set_local $8
      (i32.const 0)
     )
     (br $label$1)
    )
    (set_global $global$0
     (tee_local $8
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
    (call $fimport$1
     (get_local $8)
     (get_local $7)
    )
   )
  )
  (i64.store
   (tee_local $2
    (i32.add
     (i32.add
      (get_local $4)
      (i32.const 72)
     )
     (i32.const 16)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=80
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $4)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.gt_u
    (get_local $7)
    (i32.const 7)
   )
   (i32.const 8476)
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $4)
     (i32.const 72)
    )
    (get_local $8)
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.ne
    (tee_local $3
     (i32.and
      (get_local $7)
      (i32.const -8)
     )
    )
    (i32.const 8)
   )
   (i32.const 8476)
  )
  (drop
   (call $fimport$3
    (tee_local $9
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 72)
      )
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i64.store offset=24
   (get_local $4)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.ne
    (get_local $3)
    (i32.const 16)
   )
   (i32.const 8476)
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (i32.add
     (get_local $8)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i64.store
   (get_local $2)
   (i64.load offset=24
    (get_local $4)
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 44)
   )
   (i32.add
    (get_local $8)
    (i32.const 24)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (i32.const 24)
   )
   (i32.add
    (get_local $8)
    (get_local $7)
   )
  )
  (i64.store offset=32
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=40
   (get_local $4)
   (get_local $8)
  )
  (block $label$5
   (block $label$6
    (block $label$7
     (block $label$8
      (br_if $label$8
       (i32.lt_u
        (tee_local $2
         (call $24
          (i32.const 8481)
         )
        )
        (i32.const 8)
       )
      )
      (call $fimport$2
       (i32.const 0)
       (i32.const 8485)
      )
      (br $label$7)
     )
     (br_if $label$6
      (i32.eqz
       (get_local $2)
      )
     )
    )
    (set_local $0
     (i64.const 0)
    )
    (loop $label$9
     (block $label$10
      (br_if $label$10
       (i32.lt_u
        (i32.and
         (i32.add
          (tee_local $3
           (i32.load8_u
            (i32.add
             (get_local $2)
             (i32.const 8480)
            )
           )
          )
          (i32.const -65)
         )
         (i32.const 255)
        )
        (i32.const 26)
       )
      )
      (call $fimport$2
       (i32.const 0)
       (i32.const 8530)
      )
     )
     (set_local $0
      (i64.or
       (i64.shl
        (get_local $0)
        (i64.const 8)
       )
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $3)
         )
         (i64.const 56)
        )
        (i64.const 56)
       )
      )
     )
     (br_if $label$9
      (tee_local $2
       (i32.add
        (get_local $2)
        (i32.const -1)
       )
      )
     )
    )
    (set_local $0
     (i64.or
      (i64.shl
       (get_local $0)
       (i64.const 8)
      )
      (i64.const 4)
     )
    )
    (br $label$5)
   )
   (set_local $0
    (i64.const 4)
   )
  )
  (i64.store
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
   (get_local $0)
  )
  (i64.store offset=56
   (get_local $4)
   (i64.const 0)
  )
  (call $fimport$2
   (i32.const 1)
   (i32.const 8583)
  )
  (set_local $0
   (i64.shr_u
    (get_local $0)
    (i64.const 8)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (block $label$11
   (block $label$12
    (loop $label$13
     (br_if $label$12
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $0)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (set_local $1
      (i64.shr_u
       (get_local $0)
       (i64.const 8)
      )
     )
     (block $label$14
      (br_if $label$14
       (i64.eq
        (i64.and
         (get_local $0)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $0
       (get_local $1)
      )
      (set_local $3
       (i32.const 1)
      )
      (set_local $2
       (i32.add
        (tee_local $10
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (br_if $label$13
       (i32.lt_s
        (get_local $10)
        (i32.const 6)
       )
      )
      (br $label$11)
     )
     (set_local $0
      (get_local $1)
     )
     (loop $label$15
      (br_if $label$12
       (i64.ne
        (i64.and
         (get_local $0)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $0
       (i64.shr_u
        (get_local $0)
        (i64.const 8)
       )
      )
      (set_local $3
       (i32.lt_s
        (get_local $2)
        (i32.const 6)
       )
      )
      (set_local $2
       (tee_local $10
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br_if $label$15
       (get_local $3)
      )
     )
     (set_local $3
      (i32.const 1)
     )
     (set_local $2
      (i32.add
       (get_local $10)
       (i32.const 1)
      )
     )
     (br_if $label$13
      (i32.lt_s
       (get_local $10)
       (i32.const 6)
      )
     )
     (br $label$11)
    )
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (call $fimport$2
   (get_local $3)
   (i32.const 8632)
  )
  (i64.store
   (tee_local $2
    (i32.add
     (i32.add
      (get_local $4)
      (i32.const 96)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (i32.add
     (get_local $9)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=96
   (get_local $4)
   (i64.load
    (get_local $9)
   )
  )
  (set_local $0
   (i64.load offset=72
    (get_local $4)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 112)
    )
    (i32.const 8)
   )
   (i64.load
    (get_local $2)
   )
  )
  (i64.store offset=112
   (get_local $4)
   (i64.load offset=96
    (get_local $4)
   )
  )
  (set_local $2
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (i32.shr_s
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (block $label$16
   (br_if $label$16
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
       (get_local $2)
      )
      (get_local $6)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 128)
    )
    (i32.const 8)
   )
   (tee_local $1
    (i64.load
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 112)
      )
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
    (i32.const 8)
   )
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $4)
   (tee_local $1
    (i64.load offset=112
     (get_local $4)
    )
   )
  )
  (i64.store offset=128
   (get_local $4)
   (get_local $1)
  )
  (call_indirect (type $0)
   (get_local $2)
   (get_local $0)
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
   (get_local $6)
  )
  (block $label$17
   (br_if $label$17
    (i32.lt_u
     (get_local $7)
     (i32.const 513)
    )
   )
   (call $31
    (get_local $8)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 144)
   )
  )
  (i32.const 1)
 )
 (func $4 (; 14 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (call $fimport$4
   (i64.load
    (get_local $0)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 48)
    )
    (i32.const 8)
   )
   (tee_local $4
    (i64.load
     (i32.add
      (get_local $0)
      (i32.const 40)
     )
    )
   )
  )
  (set_local $5
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $2)
   )
  )
  (set_local $7
   (i64.load offset=32
    (get_local $0)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (get_local $5)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
    (i32.const 8)
   )
   (get_local $5)
  )
  (i64.store offset=48
   (get_local $3)
   (get_local $7)
  )
  (i64.store offset=16
   (get_local $3)
   (get_local $7)
  )
  (i64.store
   (get_local $3)
   (get_local $6)
  )
  (i64.store offset=32
   (get_local $3)
   (get_local $6)
  )
  (call $6
   (get_local $0)
   (get_local $1)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (get_local $3)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
 )
 (func $5 (; 15 ;) (type $9) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 208)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=120
   (get_local $4)
   (i32.const 8192)
  )
  (i32.store offset=124
   (get_local $4)
   (call $24
    (i32.const 8192)
   )
  )
  (i64.store offset=24
   (get_local $4)
   (i64.load offset=120
    (get_local $4)
   )
  )
  (set_local $6
   (i64.load
    (call $7
     (i32.add
      (get_local $4)
      (i32.const 128)
     )
     (i32.add
      (get_local $4)
      (i32.const 24)
     )
    )
   )
  )
  (i32.store offset=104
   (get_local $4)
   (i32.const 8197)
  )
  (i32.store offset=108
   (get_local $4)
   (call $24
    (i32.const 8197)
   )
  )
  (i64.store offset=16
   (get_local $4)
   (i64.load offset=104
    (get_local $4)
   )
  )
  (set_local $7
   (call $7
    (i32.add
     (get_local $4)
     (i32.const 112)
    )
    (i32.add
     (get_local $4)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=88
   (get_local $4)
   (i32.const 8289)
  )
  (i32.store offset=92
   (get_local $4)
   (call $24
    (i32.const 8289)
   )
  )
  (i64.store offset=8
   (get_local $4)
   (i64.load offset=88
    (get_local $4)
   )
  )
  (set_local $8
   (call $7
    (i32.add
     (get_local $4)
     (i32.const 96)
    )
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 32)
    )
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $4)
    (i32.const 72)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=40
   (get_local $4)
   (get_local $1)
  )
  (i32.store8 offset=80
   (get_local $4)
   (i32.const 0)
  )
  (i64.store offset=32
   (get_local $4)
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=48
   (get_local $4)
   (i64.load
    (get_local $2)
   )
  )
  (i64.store offset=64
   (get_local $4)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=136
   (get_local $4)
   (i64.load
    (get_local $7)
   )
  )
  (i64.store offset=144
   (get_local $4)
   (i64.load
    (get_local $8)
   )
  )
  (i64.store
   (tee_local $3
    (call $14
     (i32.const 16)
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 172)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 136)
    )
    (i32.const 24)
   )
   (tee_local $2
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 156)
   )
   (get_local $2)
  )
  (i32.store offset=152
   (get_local $4)
   (get_local $3)
  )
  (i64.store offset=164 align=4
   (get_local $4)
   (i64.const 0)
  )
  (call $8
   (i32.add
    (get_local $4)
    (i32.const 164)
   )
   (i32.const 49)
  )
  (set_local $3
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 168)
    )
   )
  )
  (i32.store offset=180
   (get_local $4)
   (tee_local $2
    (i32.load offset=164
     (get_local $4)
    )
   )
  )
  (i32.store offset=176
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=184
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=192
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 176)
   )
  )
  (i32.store offset=200
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
  (call $9
   (i32.add
    (get_local $4)
    (i32.const 200)
   )
   (i32.add
    (get_local $4)
    (i32.const 192)
   )
  )
  (call $10
   (i32.add
    (get_local $4)
    (i32.const 176)
   )
   (i32.add
    (get_local $4)
    (i32.const 136)
   )
  )
  (call $fimport$5
   (tee_local $3
    (i32.load offset=176
     (get_local $4)
    )
   )
   (i32.sub
    (i32.load offset=180
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $3
      (i32.load offset=176
       (get_local $4)
      )
     )
    )
   )
   (i32.store offset=180
    (get_local $4)
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $3
      (i32.load offset=164
       (get_local $4)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 168)
    )
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $3
      (i32.load offset=152
       (get_local $4)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 156)
    )
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 208)
   )
  )
 )
 (func $6 (; 16 ;) (type $9) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 192)
    )
   )
  )
  (set_local $5
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=104
   (get_local $4)
   (i32.const 8192)
  )
  (i32.store offset=108
   (get_local $4)
   (call $24
    (i32.const 8192)
   )
  )
  (i64.store offset=16
   (get_local $4)
   (i64.load offset=104
    (get_local $4)
   )
  )
  (set_local $6
   (i64.load
    (call $7
     (i32.add
      (get_local $4)
      (i32.const 112)
     )
     (i32.add
      (get_local $4)
      (i32.const 16)
     )
    )
   )
  )
  (i32.store offset=88
   (get_local $4)
   (i32.const 8197)
  )
  (i32.store offset=92
   (get_local $4)
   (call $24
    (i32.const 8197)
   )
  )
  (i64.store offset=8
   (get_local $4)
   (i64.load offset=88
    (get_local $4)
   )
  )
  (set_local $7
   (call $7
    (i32.add
     (get_local $4)
     (i32.const 96)
    )
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=72
   (get_local $4)
   (i32.const 8463)
  )
  (i32.store offset=76
   (get_local $4)
   (call $24
    (i32.const 8463)
   )
  )
  (i64.store
   (get_local $4)
   (i64.load offset=72
    (get_local $4)
   )
  )
  (set_local $8
   (call $7
    (i32.add
     (get_local $4)
     (i32.const 80)
    )
    (get_local $4)
   )
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 24)
    )
    (i32.const 24)
   )
   (i64.load
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
   (i64.load
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=32
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=24
   (get_local $4)
   (i64.load
    (get_local $0)
   )
  )
  (i64.store offset=40
   (get_local $4)
   (i64.load
    (get_local $2)
   )
  )
  (i64.store offset=56
   (get_local $4)
   (i64.load
    (get_local $3)
   )
  )
  (i64.store offset=120
   (get_local $4)
   (i64.load
    (get_local $7)
   )
  )
  (i64.store offset=128
   (get_local $4)
   (i64.load
    (get_local $8)
   )
  )
  (i64.store
   (tee_local $3
    (call $14
     (i32.const 16)
    )
   )
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $3)
   (get_local $6)
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 156)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 120)
    )
    (i32.const 24)
   )
   (tee_local $2
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 140)
   )
   (get_local $2)
  )
  (i32.store offset=136
   (get_local $4)
   (get_local $3)
  )
  (i64.store offset=148 align=4
   (get_local $4)
   (i64.const 0)
  )
  (call $8
   (i32.add
    (get_local $4)
    (i32.const 148)
   )
   (i32.const 48)
  )
  (set_local $3
   (i32.load
    (i32.add
     (get_local $4)
     (i32.const 152)
    )
   )
  )
  (i32.store offset=164
   (get_local $4)
   (tee_local $2
    (i32.load offset=148
     (get_local $4)
    )
   )
  )
  (i32.store offset=160
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=168
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=176
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 160)
   )
  )
  (i32.store offset=184
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 24)
   )
  )
  (call $13
   (i32.add
    (get_local $4)
    (i32.const 184)
   )
   (i32.add
    (get_local $4)
    (i32.const 176)
   )
  )
  (call $10
   (i32.add
    (get_local $4)
    (i32.const 160)
   )
   (i32.add
    (get_local $4)
    (i32.const 120)
   )
  )
  (call $fimport$5
   (tee_local $3
    (i32.load offset=160
     (get_local $4)
    )
   )
   (i32.sub
    (i32.load offset=164
     (get_local $4)
    )
    (get_local $3)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $3
      (i32.load offset=160
       (get_local $4)
      )
     )
    )
   )
   (i32.store offset=164
    (get_local $4)
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $3
      (i32.load offset=148
       (get_local $4)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 152)
    )
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $3
      (i32.load offset=136
       (get_local $4)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $4)
     (i32.const 140)
    )
    (get_local $3)
   )
   (call $16
    (get_local $3)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 192)
   )
  )
 )
 (func $7 (; 17 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (i64.store
   (get_local $0)
   (i64.const 0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.lt_u
        (tee_local $2
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 14)
       )
      )
      (call $fimport$2
       (i32.const 0)
       (i32.const 8300)
      )
      (set_local $3
       (i32.const 12)
      )
      (br $label$3)
     )
     (br_if $label$2
      (i32.eqz
       (tee_local $3
        (select
         (get_local $2)
         (i32.const 12)
         (i32.lt_u
          (get_local $2)
          (i32.const 12)
         )
        )
       )
      )
     )
    )
    (set_local $4
     (i64.load
      (get_local $0)
     )
    )
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $6
     (i32.const 0)
    )
    (loop $label$5
     (i64.store
      (get_local $0)
      (tee_local $4
       (i64.shl
        (get_local $4)
        (i64.const 5)
       )
      )
     )
     (block $label$6
      (block $label$7
       (br_if $label$7
        (i32.ne
         (tee_local $7
          (i32.load8_u
           (i32.add
            (get_local $5)
            (get_local $6)
           )
          )
         )
         (i32.const 46)
        )
       )
       (set_local $7
        (i32.const 0)
       )
       (br $label$6)
      )
      (block $label$8
       (br_if $label$8
        (i32.gt_u
         (i32.and
          (i32.add
           (get_local $7)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 4)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const -48)
        )
       )
       (br $label$6)
      )
      (block $label$9
       (br_if $label$9
        (i32.gt_u
         (i32.and
          (i32.add
           (get_local $7)
           (i32.const -97)
          )
          (i32.const 255)
         )
         (i32.const 25)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const -91)
        )
       )
       (br $label$6)
      )
      (set_local $7
       (i32.const 0)
      )
      (call $fimport$2
       (i32.const 0)
       (i32.const 8405)
      )
      (set_local $4
       (i64.load
        (get_local $0)
       )
      )
     )
     (i64.store
      (get_local $0)
      (tee_local $4
       (i64.or
        (get_local $4)
        (i64.and
         (i64.extend_u/i32
          (get_local $7)
         )
         (i64.const 255)
        )
       )
      )
     )
     (br_if $label$5
      (i32.lt_u
       (tee_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $3)
      )
     )
     (br $label$1)
    )
   )
   (set_local $4
    (i64.load
     (get_local $0)
    )
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (i64.store
   (get_local $0)
   (i64.shl
    (get_local $4)
    (i64.extend_u/i32
     (i32.add
      (i32.mul
       (i32.sub
        (i32.const 12)
        (get_local $3)
       )
       (i32.const 5)
      )
      (i32.const 4)
     )
    )
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.ne
     (get_local $2)
     (i32.const 13)
    )
   )
   (set_local $4
    (i64.const 0)
   )
   (block $label$11
    (br_if $label$11
     (i32.eq
      (tee_local $6
       (i32.load8_u offset=12
        (i32.load
         (get_local $1)
        )
       )
      )
      (i32.const 46)
     )
    )
    (block $label$12
     (br_if $label$12
      (i32.gt_u
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const -49)
        )
        (i32.const 255)
       )
       (i32.const 4)
      )
     )
     (set_local $4
      (i64.and
       (i64.extend_u/i32
        (i32.add
         (get_local $6)
         (i32.const -48)
        )
       )
       (i64.const 255)
      )
     )
     (br $label$11)
    )
    (block $label$13
     (br_if $label$13
      (i32.ge_u
       (i32.and
        (i32.add
         (get_local $6)
         (i32.const -97)
        )
        (i32.const 255)
       )
       (i32.const 26)
      )
     )
     (set_local $4
      (i64.and
       (i64.extend_u/i32
        (tee_local $6
         (i32.add
          (get_local $6)
          (i32.const -91)
         )
        )
       )
       (i64.const 255)
      )
     )
     (br_if $label$11
      (i32.lt_u
       (i32.and
        (get_local $6)
        (i32.const 255)
       )
       (i32.const 16)
      )
     )
     (call $fimport$2
      (i32.const 0)
      (i32.const 8338)
     )
     (br $label$11)
    )
    (call $fimport$2
     (i32.const 0)
     (i32.const 8405)
    )
   )
   (i64.store
    (get_local $0)
    (i64.or
     (i64.load
      (get_local $0)
     )
     (get_local $4)
    )
   )
  )
  (get_local $0)
 )
 (func $8 (; 18 ;) (type $4) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (br_if $label$5
        (i32.ge_u
         (i32.sub
          (tee_local $2
           (i32.load offset=8
            (get_local $0)
           )
          )
          (tee_local $3
           (i32.load offset=4
            (get_local $0)
           )
          )
         )
         (get_local $1)
        )
       )
       (br_if $label$3
        (i32.le_s
         (tee_local $6
          (i32.add
           (tee_local $5
            (i32.sub
             (get_local $3)
             (tee_local $4
              (i32.load
               (get_local $0)
              )
             )
            )
           )
           (get_local $1)
          )
         )
         (i32.const -1)
        )
       )
       (set_local $7
        (i32.const 2147483647)
       )
       (block $label$6
        (br_if $label$6
         (i32.gt_u
          (tee_local $2
           (i32.sub
            (get_local $2)
            (get_local $4)
           )
          )
          (i32.const 1073741822)
         )
        )
        (br_if $label$4
         (i32.eqz
          (tee_local $7
           (select
            (get_local $6)
            (tee_local $2
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
            (i32.lt_u
             (get_local $2)
             (get_local $6)
            )
           )
          )
         )
        )
       )
       (set_local $2
        (call $14
         (get_local $7)
        )
       )
       (br $label$2)
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (loop $label$7
       (i32.store8
        (get_local $3)
        (i32.const 0)
       )
       (i32.store
        (get_local $0)
        (tee_local $3
         (i32.add
          (i32.load
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
       (br_if $label$7
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const -1)
         )
        )
       )
       (br $label$1)
      )
     )
     (set_local $7
      (i32.const 0)
     )
     (set_local $2
      (i32.const 0)
     )
     (br $label$2)
    )
    (call $22
     (get_local $0)
    )
    (unreachable)
   )
   (set_local $7
    (i32.add
     (get_local $2)
     (get_local $7)
    )
   )
   (set_local $4
    (i32.sub
     (i32.add
      (get_local $3)
      (get_local $1)
     )
     (get_local $4)
    )
   )
   (set_local $3
    (tee_local $5
     (i32.add
      (get_local $2)
      (get_local $5)
     )
    )
   )
   (loop $label$8
    (i32.store8
     (get_local $3)
     (i32.const 0)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br_if $label$8
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $2)
     (get_local $4)
    )
   )
   (set_local $2
    (i32.sub
     (get_local $5)
     (tee_local $3
      (i32.sub
       (i32.load
        (tee_local $6
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
   )
   (block $label$9
    (br_if $label$9
     (i32.lt_s
      (get_local $3)
      (i32.const 1)
     )
    )
    (drop
     (call $fimport$3
      (get_local $2)
      (get_local $1)
      (get_local $3)
     )
    )
    (set_local $1
     (i32.load
      (get_local $0)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $6)
    (get_local $4)
   )
   (i32.store
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (get_local $7)
   )
   (br_if $label$1
    (i32.eqz
     (get_local $1)
    )
   )
   (call $16
    (get_local $1)
   )
   (return)
  )
 )
 (func $9 (; 19 ;) (type $4) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $3
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $3)
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $3
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 40)
    )
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $3)
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (i32.store8 offset=8
   (get_local $2)
   (i32.load8_u offset=48
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 0)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 1)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $10 (; 20 ;) (type $4) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 0)
  )
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (set_local $3
   (i32.const 16)
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $7
      (i32.sub
       (tee_local $5
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 20)
         )
        )
       )
       (tee_local $6
        (i32.load offset=16
         (get_local $1)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (loop $label$1
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $6)
     (get_local $5)
    )
   )
   (set_local $3
    (i32.add
     (i32.and
      (get_local $7)
      (i32.const -16)
     )
     (get_local $3)
    )
   )
  )
  (set_local $3
   (i32.sub
    (i32.sub
     (tee_local $5
      (i32.load offset=28
       (get_local $1)
      )
     )
     (get_local $3)
    )
    (tee_local $6
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (i32.sub
     (get_local $6)
     (get_local $5)
    )
   )
  )
  (loop $label$3
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const -1)
    )
   )
   (br_if $label$3
    (i64.ne
     (tee_local $8
      (i64.shr_u
       (get_local $8)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $3)
     )
    )
    (call $8
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $3)
     )
    )
    (set_local $5
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $3
     (i32.load
      (get_local $0)
     )
    )
    (br $label$4)
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (i32.store
   (get_local $2)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $5)
  )
  (call $fimport$2
   (i32.gt_s
    (tee_local $0
     (i32.sub
      (get_local $5)
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.add
     (get_local $0)
     (i32.const -8)
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (drop
   (call $12
    (call $11
     (get_local $2)
     (get_local $4)
    )
    (get_local $7)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $11 (; 21 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i64.extend_u/i32
    (i32.shr_s
     (i32.sub
      (i32.load offset=4
       (get_local $1)
      )
      (i32.load
       (get_local $1)
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (loop $label$1
   (set_local $6
    (i32.wrap/i64
     (get_local $3)
    )
   )
   (i32.store8 offset=15
    (get_local $2)
    (i32.or
     (i32.shl
      (tee_local $7
       (i64.ne
        (tee_local $3
         (i64.shr_u
          (get_local $3)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $6)
      (i32.const 127)
     )
    )
   )
   (call $fimport$2
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $5)
      )
      (get_local $4)
     )
     (i32.const 0)
    )
    (i32.const 8457)
   )
   (drop
    (call $fimport$3
     (i32.load
      (tee_local $6
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (i32.add
      (get_local $2)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $6)
    (tee_local $4
     (i32.add
      (i32.load
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$1
    (get_local $7)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eq
     (tee_local $7
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $1
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (loop $label$3
    (call $fimport$2
     (i32.gt_s
      (i32.sub
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
       (get_local $4)
      )
      (i32.const 7)
     )
     (i32.const 8457)
    )
    (drop
     (call $fimport$3
      (i32.load
       (get_local $6)
      )
      (get_local $7)
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $6)
     (tee_local $4
      (i32.add
       (i32.load
        (get_local $6)
       )
       (i32.const 8)
      )
     )
    )
    (call $fimport$2
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $5)
       )
       (get_local $4)
      )
      (i32.const 7)
     )
     (i32.const 8457)
    )
    (drop
     (call $fimport$3
      (i32.load
       (get_local $6)
      )
      (i32.add
       (get_local $7)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.store
     (get_local $6)
     (tee_local $4
      (i32.add
       (i32.load
        (get_local $6)
       )
       (i32.const 8)
      )
     )
    )
    (br_if $label$3
     (i32.ne
      (tee_local $7
       (i32.add
        (get_local $7)
        (i32.const 16)
       )
      )
      (get_local $1)
     )
    )
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
 (func $12 (; 22 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i64.extend_u/i32
    (i32.sub
     (i32.load offset=4
      (get_local $1)
     )
     (i32.load
      (get_local $1)
     )
    )
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$1
   (set_local $7
    (i32.wrap/i64
     (get_local $3)
    )
   )
   (i32.store8 offset=15
    (get_local $2)
    (i32.or
     (i32.shl
      (tee_local $8
       (i64.ne
        (tee_local $3
         (i64.shr_u
          (get_local $3)
          (i64.const 7)
         )
        )
        (i64.const 0)
       )
      )
      (i32.const 7)
     )
     (i32.and
      (get_local $7)
      (i32.const 127)
     )
    )
   )
   (call $fimport$2
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $5)
      )
      (get_local $4)
     )
     (i32.const 0)
    )
    (i32.const 8457)
   )
   (drop
    (call $fimport$3
     (i32.load
      (get_local $6)
     )
     (i32.add
      (get_local $2)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $6)
    (tee_local $4
     (i32.add
      (i32.load
       (get_local $6)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$1
    (get_local $8)
   )
  )
  (call $fimport$2
   (i32.ge_s
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $4)
    )
    (tee_local $6
     (i32.sub
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
      (tee_local $7
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load
     (tee_local $4
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $7)
    (get_local $6)
   )
  )
  (i32.store
   (get_local $4)
   (i32.add
    (i32.load
     (get_local $4)
    )
    (get_local $6)
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
 (func $13 (; 23 ;) (type $4) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $3
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 24)
    )
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $3)
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $4)
     )
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $1
    (i32.add
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $0)
     (i32.const 40)
    )
   )
  )
  (call $fimport$2
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $1)
    )
    (i32.const 7)
   )
   (i32.const 8457)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $4)
    )
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $4)
   (i32.add
    (i32.load offset=4
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $14 (; 24 ;) (type $10) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $28
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
       (i32.load offset=8652
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
       (call $28
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $15 (; 25 ;) (type $10) (param $0 i32) (result i32)
  (call $14
   (get_local $0)
  )
 )
 (func $16 (; 26 ;) (type $11) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $31
    (get_local $0)
   )
  )
 )
 (func $17 (; 27 ;) (type $11) (param $0 i32)
  (call $16
   (get_local $0)
  )
 )
 (func $18 (; 28 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
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
     (call $26
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
        (i32.load offset=8652
         (i32.const 0)
        )
       )
      )
     )
     (call_indirect (type $1)
      (get_local $0)
     )
     (br_if $label$3
      (call $26
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
 (func $19 (; 29 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
  (call $18
   (get_local $0)
   (get_local $1)
  )
 )
 (func $20 (; 30 ;) (type $4) (param $0 i32) (param $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $31
    (get_local $0)
   )
  )
 )
 (func $21 (; 31 ;) (type $4) (param $0 i32) (param $1 i32)
  (call $20
   (get_local $0)
   (get_local $1)
  )
 )
 (func $22 (; 32 ;) (type $11) (param $0 i32)
  (call $fimport$6)
  (unreachable)
 )
 (func $23 (; 33 ;) (type $11) (param $0 i32)
 )
 (func $24 (; 34 ;) (type $10) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $1
   (get_local $0)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.eqz
       (i32.and
        (get_local $0)
        (i32.const 3)
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (i32.load8_u
        (get_local $0)
       )
      )
     )
     (set_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (loop $label$4
      (br_if $label$3
       (i32.eqz
        (i32.and
         (get_local $1)
         (i32.const 3)
        )
       )
      )
      (set_local $2
       (i32.load8_u
        (get_local $1)
       )
      )
      (set_local $1
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br_if $label$4
       (get_local $2)
      )
     )
     (return
      (i32.sub
       (i32.add
        (get_local $3)
        (i32.const -1)
       )
       (get_local $0)
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const -4)
     )
    )
    (loop $label$5
     (br_if $label$5
      (i32.eqz
       (i32.and
        (i32.and
         (i32.xor
          (tee_local $2
           (i32.load
            (tee_local $1
             (i32.add
              (get_local $1)
              (i32.const 4)
             )
            )
           )
          )
          (i32.const -1)
         )
         (i32.add
          (get_local $2)
          (i32.const -16843009)
         )
        )
        (i32.const -2139062144)
       )
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (get_local $2)
       (i32.const 255)
      )
     )
    )
    (loop $label$6
     (set_local $2
      (i32.load8_u offset=1
       (get_local $1)
      )
     )
     (set_local $1
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (br_if $label$6
      (get_local $2)
     )
    )
    (return
     (i32.sub
      (get_local $3)
      (get_local $0)
     )
    )
   )
   (return
    (i32.sub
     (get_local $0)
     (get_local $0)
    )
   )
  )
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $25 (; 35 ;) (type $2) (result i32)
  (i32.const 8656)
 )
 (func $26 (; 36 ;) (type $5) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
       (call $27
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
   (call $25)
  )
 )
 (func $27 (; 37 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
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
     (call $28
      (get_local $1)
     )
    )
   )
   (i32.store
    (call $25)
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
        (call $28
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
     (call $31
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
 (func $28 (; 38 ;) (type $10) (param $0 i32) (result i32)
  (call $29
   (i32.const 8672)
   (get_local $0)
  )
 )
 (func $29 (; 39 ;) (type $3) (param $0 i32) (param $1 i32) (result i32)
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
         (call $30
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
       (i32.const 8203)
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
 (func $30 (; 40 ;) (type $10) (param $0 i32) (result i32)
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
      (i32.load8_u offset=8664
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8668
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8664
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8668
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
       (i32.load offset=8668
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8668
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
       (i32.load8_u offset=8664
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8664
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8668
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
       (i32.load offset=8668
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8668
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
 (func $31 (; 41 ;) (type $11) (param $0 i32)
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
       (i32.load offset=17056
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 16864)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 16864)
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

