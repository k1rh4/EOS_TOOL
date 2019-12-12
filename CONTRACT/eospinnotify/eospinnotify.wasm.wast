(module
 (type $0 (func (param i32 i32 i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32)))
 (type $3 (func (result i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (param i64)))
 (type $6 (func (param i32)))
 (type $7 (func (param i32 i32 i32) (result i32)))
 (type $8 (func (param i64 i64 i64 i64) (result i32)))
 (type $9 (func (param i32 i64 i64 i64 i64)))
 (type $10 (func (param i64 i64) (result i32)))
 (type $11 (func (param i32 f64)))
 (type $12 (func (param i32 f32)))
 (type $13 (func (param i64 i64) (result f64)))
 (type $14 (func (param i64 i64) (result f32)))
 (type $15 (func (param i64 i64 i64)))
 (type $16 (func (param i64 i64 i32) (result i32)))
 (type $17 (func (param i32) (result i32)))
 (type $18 (func (param i32 i32 i32 i32 i32) (result i32)))
 (import "env" "eosio_assert" (func $fimport$0 (param i32 i32)))
 (import "env" "action_data_size" (func $fimport$1 (result i32)))
 (import "env" "read_action_data" (func $fimport$2 (param i32 i32) (result i32)))
 (import "env" "require_auth" (func $fimport$3 (param i64)))
 (import "env" "require_recipient" (func $fimport$4 (param i64)))
 (import "env" "eosio_exit" (func $fimport$5 (param i32)))
 (import "env" "send_inline" (func $fimport$6 (param i32 i32)))
 (import "env" "memcpy" (func $fimport$7 (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $fimport$8))
 (import "env" "memset" (func $fimport$9 (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $fimport$10 (param i32 i32 i32) (result i32)))
 (import "env" "prints_l" (func $fimport$11 (param i32 i32)))
 (import "env" "__unordtf2" (func $fimport$12 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__eqtf2" (func $fimport$13 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__multf3" (func $fimport$14 (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $fimport$15 (param i32 i64 i64 i64 i64)))
 (import "env" "__subtf3" (func $fimport$16 (param i32 i64 i64 i64 i64)))
 (import "env" "__netf2" (func $fimport$17 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__fixunstfsi" (func $fimport$18 (param i64 i64) (result i32)))
 (import "env" "__floatunsitf" (func $fimport$19 (param i32 i32)))
 (import "env" "__fixtfsi" (func $fimport$20 (param i64 i64) (result i32)))
 (import "env" "__floatsitf" (func $fimport$21 (param i32 i32)))
 (import "env" "__extenddftf2" (func $fimport$22 (param i32 f64)))
 (import "env" "__extendsftf2" (func $fimport$23 (param i32 f32)))
 (import "env" "__divtf3" (func $fimport$24 (param i32 i64 i64 i64 i64)))
 (import "env" "__letf2" (func $fimport$25 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfdf2" (func $fimport$26 (param i64 i64) (result f64)))
 (import "env" "__getf2" (func $fimport$27 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfsf2" (func $fimport$28 (param i64 i64) (result f32)))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$29 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$30 (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "notify\00")
 (data (i32.const 8199) "eospin\00malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (data (i32.const 8292) "string is too long to be a valid name\00")
 (data (i32.const 8330) "thirteenth character in name cannot be a letter that comes after j\00")
 (data (i32.const 8397) "character is not in allowed character set for names\00")
 (data (i32.const 8449) "active\00")
 (data (i32.const 8456) "write\00")
 (data (i32.const 8462) "eosio.token\00")
 (data (i32.const 8474) "transfer\00")
 (data (i32.const 8483) "EOS\00")
 (data (i32.const 8487) "string is too long to be a valid symbol_code\00")
 (data (i32.const 8532) "only uppercase letters allowed in symbol_code string\00")
 (data (i32.const 8585) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 8634) "invalid symbol name\00")
 (data (i32.const 8654) "get\00")
 (data (i32.const 8658) "read\00")
 (table $0 3 3 anyfunc)
 (elem (i32.const 1) $3 $5)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 17080))
 (global $global$2 i32 (i32.const 17080))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (export "_ZdlPv" (func $21))
 (export "_Znwj" (func $19))
 (export "_Znaj" (func $20))
 (export "_ZdaPv" (func $22))
 (export "_ZnwjSt11align_val_t" (func $23))
 (export "_ZnajSt11align_val_t" (func $24))
 (export "_ZdlPvSt11align_val_t" (func $25))
 (export "_ZdaPvSt11align_val_t" (func $26))
 (func $0 (; 31 ;) (type $1)
 )
 (func $1 (; 32 ;) (type $15) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 80)
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
   (i32.store offset=64
    (get_local $3)
    (i32.const 8192)
   )
   (i32.store offset=68
    (get_local $3)
    (call $34
     (i32.const 8192)
    )
   )
   (i64.store offset=32
    (get_local $3)
    (i64.load offset=64
     (get_local $3)
    )
   )
   (drop
    (call $2
     (i32.add
      (get_local $3)
      (i32.const 72)
     )
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i64.ne
      (get_local $2)
      (i64.const -7119375207604682752)
     )
    )
    (i32.store offset=60
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=56
     (get_local $3)
     (i32.const 1)
    )
    (i64.store offset=8
     (get_local $3)
     (i64.load offset=56
      (get_local $3)
     )
    )
    (drop
     (call $4
      (get_local $1)
      (get_local $1)
      (i32.add
       (get_local $3)
       (i32.const 8)
      )
     )
    )
    (br $label$1)
   )
   (i32.store offset=48
    (get_local $3)
    (i32.const 8199)
   )
   (i32.store offset=52
    (get_local $3)
    (call $34
     (i32.const 8199)
    )
   )
   (i64.store offset=24
    (get_local $3)
    (i64.load offset=48
     (get_local $3)
    )
   )
   (drop
    (call $2
     (i32.add
      (get_local $3)
      (i32.const 72)
     )
     (i32.add
      (get_local $3)
      (i32.const 24)
     )
    )
   )
   (br_if $label$1
    (i64.ne
     (get_local $2)
     (i64.const 6138783751011827712)
    )
   )
   (i32.store offset=44
    (get_local $3)
    (i32.const 0)
   )
   (i32.store offset=40
    (get_local $3)
    (i32.const 2)
   )
   (i64.store offset=16
    (get_local $3)
    (i64.load offset=40
     (get_local $3)
    )
   )
   (drop
    (call $4
     (get_local $1)
     (get_local $1)
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
    )
   )
  )
  (call $33
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 80)
   )
  )
 )
 (func $2 (; 33 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
      (call $fimport$0
       (i32.const 0)
       (i32.const 8292)
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
      (call $fimport$0
       (i32.const 0)
       (i32.const 8397)
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
     (call $fimport$0
      (i32.const 0)
      (i32.const 8330)
     )
     (br $label$11)
    )
    (call $fimport$0
     (i32.const 0)
     (i32.const 8397)
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
 (func $3 (; 34 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (call $fimport$3
   (i64.load
    (get_local $0)
   )
  )
  (call $8
   (get_local $0)
   (tee_local $1
    (call $28
     (i32.add
      (get_local $3)
      (i32.const 16)
     )
     (get_local $1)
    )
   )
   (tee_local $2
    (call $28
     (get_local $3)
     (get_local $2)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.and
       (i32.load8_u
        (get_local $2)
       )
       (i32.const 1)
      )
     )
     (br_if $label$2
      (i32.and
       (i32.load8_u
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (call $21
     (i32.load offset=8
      (get_local $2)
     )
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $1)
       )
       (i32.const 1)
      )
     )
    )
   )
   (call $21
    (i32.load offset=8
     (get_local $1)
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $4 (; 35 ;) (type $16) (param $0 i64) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 144)
    )
   )
  )
  (i64.store offset=88
   (tee_local $4
    (get_local $3)
   )
   (i64.load align=4
    (get_local $2)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $2
         (call $fimport$1)
        )
       )
      )
      (br_if $label$3
       (i32.lt_u
        (get_local $2)
        (i32.const 513)
       )
      )
      (set_local $3
       (call $37
        (get_local $2)
       )
      )
      (br $label$2)
     )
     (set_local $3
      (i32.const 0)
     )
     (br $label$1)
    )
    (set_global $global$0
     (tee_local $3
      (i32.sub
       (get_local $3)
       (i32.and
        (i32.add
         (get_local $2)
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
     (get_local $3)
     (get_local $2)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $4)
    (i32.const 80)
   )
   (i64.const 0)
  )
  (i64.store offset=64
   (get_local $4)
   (i64.const 0)
  )
  (i64.store offset=72
   (get_local $4)
   (i64.const 0)
  )
  (i32.store offset=52
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=48
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=56
   (get_local $4)
   (i32.add
    (get_local $3)
    (get_local $2)
   )
  )
  (drop
   (call $6
    (i32.add
     (get_local $4)
     (i32.const 48)
    )
    (i32.add
     (get_local $4)
     (i32.const 64)
    )
   )
  )
  (drop
   (call $6
    (i32.add
     (get_local $4)
     (i32.const 48)
    )
    (i32.add
     (get_local $4)
     (i32.const 76)
    )
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
   )
   (i32.load offset=56
    (get_local $4)
   )
  )
  (i64.store
   (get_local $4)
   (i64.load offset=48
    (get_local $4)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 96)
    )
    (i32.const 8)
   )
   (tee_local $5
    (i32.load
     (get_local $5)
    )
   )
  )
  (i32.store
   (tee_local $6
    (i32.add
     (i32.add
      (get_local $4)
      (i32.const 112)
     )
     (i32.const 8)
    )
   )
   (get_local $5)
  )
  (i64.store offset=112
   (get_local $4)
   (tee_local $7
    (i64.load
     (get_local $4)
    )
   )
  )
  (i64.store offset=96
   (get_local $4)
   (get_local $7)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 128)
    )
    (i32.const 8)
   )
   (tee_local $5
    (i32.load
     (get_local $6)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $4)
    (i32.const 40)
   )
   (get_local $5)
  )
  (i64.store offset=16
   (get_local $4)
   (get_local $0)
  )
  (i64.store offset=24
   (get_local $4)
   (get_local $1)
  )
  (i64.store offset=32
   (get_local $4)
   (tee_local $0
    (i64.load offset=112
     (get_local $4)
    )
   )
  )
  (i64.store offset=128
   (get_local $4)
   (get_local $0)
  )
  (i32.store offset=132
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 88)
   )
  )
  (i32.store offset=128
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
  (call $7
   (i32.add
    (get_local $4)
    (i32.const 128)
   )
   (i32.add
    (get_local $4)
    (i32.const 64)
   )
  )
  (block $label$5
   (block $label$6
    (block $label$7
     (block $label$8
      (block $label$9
       (br_if $label$9
        (i32.ge_u
         (get_local $2)
         (i32.const 513)
        )
       )
       (set_local $3
        (i32.const 1)
       )
       (br_if $label$8
        (i32.and
         (i32.load8_u offset=76
          (get_local $4)
         )
         (i32.const 1)
        )
       )
       (br $label$7)
      )
      (call $40
       (get_local $3)
      )
      (set_local $3
       (i32.const 1)
      )
      (br_if $label$7
       (i32.eqz
        (i32.and
         (i32.load8_u offset=76
          (get_local $4)
         )
         (i32.const 1)
        )
       )
      )
     )
     (call $21
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 84)
       )
      )
     )
     (br_if $label$6
      (i32.and
       (i32.load8_u offset=64
        (get_local $4)
       )
       (get_local $3)
      )
     )
     (br $label$5)
    )
    (br_if $label$5
     (i32.eqz
      (i32.and
       (i32.load8_u offset=64
        (get_local $4)
       )
       (get_local $3)
      )
     )
    )
   )
   (call $21
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 72)
     )
    )
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
 (func $5 (; 36 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (call $fimport$3
   (i64.load
    (get_local $0)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.and
      (tee_local $0
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.shr_u
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $label$1)
   )
   (set_local $0
    (i32.load offset=4
     (get_local $1)
    )
   )
   (set_local $1
    (i32.load offset=8
     (get_local $1)
    )
   )
  )
  (i32.store offset=20
   (get_local $3)
   (get_local $0)
  )
  (i32.store offset=16
   (get_local $3)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=16
    (get_local $3)
   )
  )
  (call $fimport$4
   (i64.load
    (call $2
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
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $6 (; 37 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=24
   (get_local $2)
   (i32.const 0)
  )
  (i64.store offset=16
   (get_local $2)
   (i64.const 0)
  )
  (drop
   (call $18
    (get_local $0)
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (block $label$7
         (block $label$8
          (br_if $label$8
           (i32.eqz
            (tee_local $4
             (i32.sub
              (i32.load offset=20
               (get_local $2)
              )
              (tee_local $3
               (i32.load offset=16
                (get_local $2)
               )
              )
             )
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $2)
            (i32.const 8)
           )
           (i32.const 0)
          )
          (i64.store
           (get_local $2)
           (i64.const 0)
          )
          (br_if $label$3
           (i32.ge_u
            (get_local $4)
            (i32.const -16)
           )
          )
          (br_if $label$7
           (i32.gt_u
            (get_local $4)
            (i32.const 10)
           )
          )
          (i32.store8
           (get_local $2)
           (i32.shl
            (get_local $4)
            (i32.const 1)
           )
          )
          (set_local $5
           (i32.or
            (get_local $2)
            (i32.const 1)
           )
          )
          (br $label$6)
         )
         (br_if $label$5
          (i32.and
           (i32.load8_u
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store16
          (get_local $1)
          (i32.const 0)
         )
         (set_local $3
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (br $label$4)
        )
        (set_local $5
         (call $19
          (tee_local $6
           (i32.and
            (i32.add
             (get_local $4)
             (i32.const 16)
            )
            (i32.const -16)
           )
          )
         )
        )
        (i32.store
         (get_local $2)
         (i32.or
          (get_local $6)
          (i32.const 1)
         )
        )
        (i32.store offset=8
         (get_local $2)
         (get_local $5)
        )
        (i32.store offset=4
         (get_local $2)
         (get_local $4)
        )
       )
       (set_local $7
        (get_local $4)
       )
       (set_local $6
        (get_local $5)
       )
       (loop $label$9
        (i32.store8
         (get_local $6)
         (i32.load8_u
          (get_local $3)
         )
        )
        (set_local $6
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
        (br_if $label$9
         (tee_local $7
          (i32.add
           (get_local $7)
           (i32.const -1)
          )
         )
        )
       )
       (i32.store8
        (i32.add
         (get_local $5)
         (get_local $4)
        )
        (i32.const 0)
       )
       (block $label$10
        (block $label$11
         (br_if $label$11
          (i32.and
           (i32.load8_u
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store16
          (get_local $1)
          (i32.const 0)
         )
         (br $label$10)
        )
        (i32.store8
         (i32.load offset=8
          (get_local $1)
         )
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $1)
         (i32.const 0)
        )
       )
       (call $30
        (get_local $1)
        (i32.const 0)
       )
       (i32.store
        (i32.add
         (get_local $1)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $2)
          (i32.const 8)
         )
        )
       )
       (i64.store align=4
        (get_local $1)
        (i64.load
         (get_local $2)
        )
       )
       (br_if $label$1
        (i32.eqz
         (tee_local $3
          (i32.load offset=16
           (get_local $2)
          )
         )
        )
       )
       (br $label$2)
      )
      (i32.store8
       (i32.load offset=8
        (get_local $1)
       )
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $1)
       (i32.const 0)
      )
      (set_local $3
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
     (call $30
      (get_local $1)
      (i32.const 0)
     )
     (i32.store
      (get_local $3)
      (i32.const 0)
     )
     (i64.store align=4
      (get_local $1)
      (i64.const 0)
     )
     (br_if $label$2
      (tee_local $3
       (i32.load offset=16
        (get_local $2)
       )
      )
     )
     (br $label$1)
    )
    (call $27
     (get_local $2)
    )
    (unreachable)
   )
   (i32.store offset=20
    (get_local $2)
    (get_local $3)
   )
   (call $21
    (get_local $3)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 32)
   )
  )
  (get_local $0)
 )
 (func $7 (; 38 ;) (type $2) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_global $global$0
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 64)
    )
   )
  )
  (set_local $3
   (call $28
    (i32.add
     (get_local $2)
     (i32.const 16)
    )
    (get_local $1)
   )
  )
  (set_local $1
   (call $28
    (get_local $2)
    (i32.add
     (get_local $1)
     (i32.const 12)
    )
   )
  )
  (set_local $5
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.shr_s
     (tee_local $4
      (i32.load offset=4
       (tee_local $0
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (get_local $4)
      (i32.const 1)
     )
    )
   )
   (set_local $0
    (i32.load
     (i32.add
      (i32.load
       (get_local $5)
      )
      (get_local $0)
     )
    )
   )
  )
  (call_indirect (type $0)
   (get_local $5)
   (tee_local $4
    (call $28
     (i32.add
      (get_local $2)
      (i32.const 48)
     )
     (get_local $3)
    )
   )
   (tee_local $6
    (call $28
     (i32.add
      (get_local $2)
      (i32.const 32)
     )
     (get_local $1)
    )
   )
   (get_local $0)
  )
  (block $label$2
   (block $label$3
    (block $label$4
     (block $label$5
      (block $label$6
       (block $label$7
        (block $label$8
         (br_if $label$8
          (i32.and
           (i32.load8_u offset=32
            (get_local $2)
           )
           (i32.const 1)
          )
         )
         (br_if $label$7
          (i32.and
           (i32.load8_u offset=48
            (get_local $2)
           )
           (i32.const 1)
          )
         )
         (br $label$6)
        )
        (call $21
         (i32.load offset=8
          (get_local $6)
         )
        )
        (br_if $label$6
         (i32.eqz
          (i32.and
           (i32.load8_u offset=48
            (get_local $2)
           )
           (i32.const 1)
          )
         )
        )
       )
       (call $21
        (i32.load offset=8
         (get_local $4)
        )
       )
       (set_local $0
        (i32.const 1)
       )
       (br_if $label$5
        (i32.eqz
         (i32.and
          (i32.load8_u
           (get_local $1)
          )
          (i32.const 1)
         )
        )
       )
       (br $label$4)
      )
      (set_local $0
       (i32.const 1)
      )
      (br_if $label$4
       (i32.and
        (i32.load8_u
         (get_local $1)
        )
        (i32.const 1)
       )
      )
     )
     (br_if $label$3
      (i32.and
       (i32.load8_u
        (get_local $3)
       )
       (get_local $0)
      )
     )
     (br $label$2)
    )
    (call $21
     (i32.load offset=8
      (get_local $1)
     )
    )
    (br_if $label$2
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $3)
       )
       (get_local $0)
      )
     )
    )
   )
   (call $21
    (i32.load offset=8
     (get_local $3)
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $2)
     (i32.const 64)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 64)
   )
  )
 )
 (func $8 (; 39 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 80)
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.and
      (tee_local $4
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $4
     (i32.shr_u
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $label$1)
   )
   (set_local $4
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.sub
     (get_local $4)
     (i32.mul
      (tee_local $5
       (i32.div_s
        (get_local $4)
        (i32.const 12)
       )
      )
      (i32.const 12)
     )
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.lt_s
      (get_local $4)
      (i32.const 12)
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (set_local $6
     (i32.add
      (i32.add
       (get_local $3)
       (i32.const 64)
      )
      (i32.const 8)
     )
    )
    (loop $label$5
     (call $9
      (get_local $0)
      (call $28
       (i32.add
        (get_local $3)
        (i32.const 48)
       )
       (tee_local $7
        (call $29
         (i32.add
          (get_local $3)
          (i32.const 64)
         )
         (get_local $1)
         (get_local $4)
         (i32.const 12)
         (get_local $1)
        )
       )
      )
      (call $28
       (i32.add
        (get_local $3)
        (i32.const 32)
       )
       (get_local $2)
      )
     )
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (i32.and
         (i32.load8_u offset=32
          (get_local $3)
         )
         (i32.const 1)
        )
       )
      )
      (call $21
       (i32.load
        (i32.add
         (i32.add
          (get_local $3)
          (i32.const 32)
         )
         (i32.const 8)
        )
       )
      )
     )
     (block $label$7
      (br_if $label$7
       (i32.eqz
        (i32.and
         (i32.load8_u offset=48
          (get_local $3)
         )
         (i32.const 1)
        )
       )
      )
      (call $21
       (i32.load
        (i32.add
         (i32.add
          (get_local $3)
          (i32.const 48)
         )
         (i32.const 8)
        )
       )
      )
     )
     (call $10
      (get_local $0)
      (call $28
       (i32.add
        (get_local $3)
        (i32.const 16)
       )
       (get_local $7)
      )
      (call $28
       (get_local $3)
       (get_local $2)
      )
     )
     (block $label$8
      (block $label$9
       (block $label$10
        (block $label$11
         (block $label$12
          (br_if $label$12
           (i32.and
            (i32.load8_u
             (get_local $3)
            )
            (i32.const 1)
           )
          )
          (br_if $label$11
           (i32.and
            (i32.load8_u offset=16
             (get_local $3)
            )
            (i32.const 1)
           )
          )
          (br $label$10)
         )
         (call $21
          (i32.load
           (i32.add
            (get_local $3)
            (i32.const 8)
           )
          )
         )
         (br_if $label$10
          (i32.eqz
           (i32.and
            (i32.load8_u offset=16
             (get_local $3)
            )
            (i32.const 1)
           )
          )
         )
        )
        (call $21
         (i32.load
          (i32.add
           (i32.add
            (get_local $3)
            (i32.const 16)
           )
           (i32.const 8)
          )
         )
        )
        (br_if $label$9
         (i32.eqz
          (i32.and
           (i32.load8_u offset=64
            (get_local $3)
           )
           (i32.const 1)
          )
         )
        )
        (br $label$8)
       )
       (br_if $label$8
        (i32.and
         (i32.load8_u offset=64
          (get_local $3)
         )
         (i32.const 1)
        )
       )
      )
      (set_local $4
       (i32.add
        (get_local $4)
        (i32.const 12)
       )
      )
      (br_if $label$5
       (tee_local $5
        (i32.add
         (get_local $5)
         (i32.const -1)
        )
       )
      )
      (br $label$4)
     )
     (call $21
      (i32.load
       (get_local $6)
      )
     )
     (set_local $4
      (i32.add
       (get_local $4)
       (i32.const 12)
      )
     )
     (br_if $label$5
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const -1)
       )
      )
     )
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 80)
    )
   )
   (return)
  )
  (call $fimport$5
   (i32.const 0)
  )
  (unreachable)
 )
 (func $9 (; 40 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 96)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=16
   (get_local $3)
   (i32.const 8449)
  )
  (i32.store offset=20
   (get_local $3)
   (call $34
    (i32.const 8449)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=16
    (get_local $3)
   )
  )
  (set_local $5
   (i64.load
    (call $2
     (i32.add
      (get_local $3)
      (i32.const 40)
     )
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
   )
  )
  (set_local $6
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=16
   (get_local $3)
   (i32.const 8199)
  )
  (i32.store offset=20
   (get_local $3)
   (call $34
    (i32.const 8199)
   )
  )
  (i64.store
   (get_local $3)
   (i64.load offset=16
    (get_local $3)
   )
  )
  (set_local $7
   (i64.load
    (call $2
     (i32.add
      (get_local $3)
      (i32.const 40)
     )
     (get_local $3)
    )
   )
  )
  (drop
   (call $28
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (get_local $1)
   )
  )
  (drop
   (call $28
    (i32.add
     (get_local $3)
     (i32.const 28)
    )
    (get_local $2)
   )
  )
  (i64.store offset=48
   (get_local $3)
   (get_local $7)
  )
  (i64.store offset=40
   (get_local $3)
   (get_local $6)
  )
  (i64.store
   (tee_local $0
    (call $19
     (i32.const 16)
    )
   )
   (get_local $4)
  )
  (i64.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 60)
   )
   (get_local $2)
  )
  (i32.store offset=56
   (get_local $3)
   (get_local $0)
  )
  (call $11
   (i32.add
    (get_local $3)
    (i32.const 68)
   )
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (call $12
   (i32.add
    (get_local $3)
    (i32.const 80)
   )
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
  )
  (call $fimport$6
   (tee_local $0
    (i32.load offset=80
     (get_local $3)
    )
   )
   (i32.sub
    (i32.load offset=84
     (get_local $3)
    )
    (get_local $0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $0
      (i32.load offset=80
       (get_local $3)
      )
     )
    )
   )
   (i32.store offset=84
    (get_local $3)
    (get_local $0)
   )
   (call $21
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $0
      (i32.load offset=68
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 72)
    )
    (get_local $0)
   )
   (call $21
    (get_local $0)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $0
      (i32.load offset=56
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 60)
    )
    (get_local $0)
   )
   (call $21
    (get_local $0)
   )
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.and
       (i32.load8_u offset=28
        (get_local $3)
       )
       (i32.const 1)
      )
     )
     (br_if $label$5
      (i32.and
       (i32.load8_u offset=16
        (get_local $3)
       )
       (i32.const 1)
      )
     )
     (br $label$4)
    )
    (call $21
     (i32.load
      (i32.add
       (get_local $3)
       (i32.const 36)
      )
     )
    )
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u offset=16
        (get_local $3)
       )
       (i32.const 1)
      )
     )
    )
   )
   (call $21
    (i32.load offset=24
     (get_local $3)
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 96)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 96)
   )
  )
 )
 (func $10 (; 41 ;) (type $0) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 224)
    )
   )
  )
  (set_local $4
   (i64.load
    (get_local $0)
   )
  )
  (i32.store offset=136
   (get_local $3)
   (i32.const 8449)
  )
  (i32.store offset=140
   (get_local $3)
   (call $34
    (i32.const 8449)
   )
  )
  (i64.store offset=32
   (get_local $3)
   (i64.load offset=136
    (get_local $3)
   )
  )
  (set_local $5
   (i64.load
    (call $2
     (i32.add
      (get_local $3)
      (i32.const 144)
     )
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
    )
   )
  )
  (i32.store offset=120
   (get_local $3)
   (i32.const 8462)
  )
  (i32.store offset=124
   (get_local $3)
   (call $34
    (i32.const 8462)
   )
  )
  (i64.store offset=24
   (get_local $3)
   (i64.load offset=120
    (get_local $3)
   )
  )
  (set_local $6
   (call $2
    (i32.add
     (get_local $3)
     (i32.const 128)
    )
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
   )
  )
  (i32.store offset=104
   (get_local $3)
   (i32.const 8474)
  )
  (i32.store offset=108
   (get_local $3)
   (call $34
    (i32.const 8474)
   )
  )
  (i64.store offset=16
   (get_local $3)
   (i64.load offset=104
    (get_local $3)
   )
  )
  (set_local $7
   (call $2
    (i32.add
     (get_local $3)
     (i32.const 112)
    )
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
  )
  (set_local $8
   (i64.load
    (get_local $0)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.and
      (tee_local $0
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.shr_u
      (get_local $0)
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $label$1)
   )
   (set_local $0
    (i32.load offset=4
     (get_local $1)
    )
   )
   (set_local $1
    (i32.load offset=8
     (get_local $1)
    )
   )
  )
  (i32.store offset=44
   (get_local $3)
   (get_local $0)
  )
  (i32.store offset=40
   (get_local $3)
   (get_local $1)
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=40
    (get_local $3)
   )
  )
  (set_local $9
   (call $2
    (i32.add
     (get_local $3)
     (i32.const 48)
    )
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
   )
  )
  (block $label$3
   (block $label$4
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.lt_u
        (tee_local $1
         (call $34
          (i32.const 8483)
         )
        )
        (i32.const 8)
       )
      )
      (call $fimport$0
       (i32.const 0)
       (i32.const 8487)
      )
      (br $label$5)
     )
     (br_if $label$4
      (i32.eqz
       (get_local $1)
      )
     )
    )
    (set_local $10
     (i64.const 0)
    )
    (loop $label$7
     (block $label$8
      (br_if $label$8
       (i32.lt_u
        (i32.and
         (i32.add
          (tee_local $0
           (i32.load8_u
            (i32.add
             (get_local $1)
             (i32.const 8482)
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
      (call $fimport$0
       (i32.const 0)
       (i32.const 8532)
      )
     )
     (set_local $10
      (i64.or
       (i64.shl
        (get_local $10)
        (i64.const 8)
       )
       (i64.shr_s
        (i64.shl
         (i64.extend_u/i32
          (get_local $0)
         )
         (i64.const 56)
        )
        (i64.const 56)
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
    )
    (set_local $11
     (i64.or
      (i64.shl
       (get_local $10)
       (i64.const 8)
      )
      (i64.const 4)
     )
    )
    (br $label$3)
   )
   (set_local $11
    (i64.const 4)
   )
  )
  (call $fimport$0
   (i32.const 1)
   (i32.const 8585)
  )
  (set_local $10
   (i64.shr_u
    (get_local $11)
    (i64.const 8)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$9
   (block $label$10
    (loop $label$11
     (br_if $label$10
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $10)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (set_local $12
      (i64.shr_u
       (get_local $10)
       (i64.const 8)
      )
     )
     (block $label$12
      (br_if $label$12
       (i64.eq
        (i64.and
         (get_local $10)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $10
       (get_local $12)
      )
      (set_local $0
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (tee_local $13
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (br_if $label$11
       (i32.lt_s
        (get_local $13)
        (i32.const 6)
       )
      )
      (br $label$9)
     )
     (set_local $10
      (get_local $12)
     )
     (loop $label$13
      (br_if $label$10
       (i64.ne
        (i64.and
         (get_local $10)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $10
       (i64.shr_u
        (get_local $10)
        (i64.const 8)
       )
      )
      (set_local $0
       (i32.lt_s
        (get_local $1)
        (i32.const 6)
       )
      )
      (set_local $1
       (tee_local $13
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br_if $label$13
       (get_local $0)
      )
     )
     (set_local $0
      (i32.const 1)
     )
     (set_local $1
      (i32.add
       (get_local $13)
       (i32.const 1)
      )
     )
     (br_if $label$11
      (i32.lt_s
       (get_local $13)
       (i32.const 6)
      )
     )
     (br $label$9)
    )
   )
   (set_local $0
    (i32.const 0)
   )
  )
  (call $fimport$0
   (get_local $0)
   (i32.const 8634)
  )
  (i64.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 56)
    )
    (i32.const 24)
   )
   (get_local $11)
  )
  (i64.store offset=56
   (get_local $3)
   (get_local $8)
  )
  (i64.store offset=72
   (get_local $3)
   (i64.const 4)
  )
  (i64.store offset=64
   (get_local $3)
   (i64.load
    (get_local $9)
   )
  )
  (set_local $0
   (call $28
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 56)
     )
     (i32.const 32)
    )
    (get_local $2)
   )
  )
  (i64.store offset=152
   (get_local $3)
   (i64.load
    (get_local $6)
   )
  )
  (i64.store offset=160
   (get_local $3)
   (i64.load
    (get_local $7)
   )
  )
  (i64.store
   (tee_local $1
    (call $19
     (i32.const 16)
    )
   )
   (get_local $4)
  )
  (i64.store offset=8
   (get_local $1)
   (get_local $5)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 152)
    )
    (i32.const 36)
   )
   (i32.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 152)
    )
    (i32.const 24)
   )
   (tee_local $13
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 172)
   )
   (get_local $13)
  )
  (i32.store offset=168
   (get_local $3)
   (get_local $1)
  )
  (i64.store offset=180 align=4
   (get_local $3)
   (i64.const 0)
  )
  (set_local $1
   (i32.add
    (tee_local $0
     (select
      (i32.load
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 56)
        )
        (i32.const 36)
       )
      )
      (i32.shr_u
       (tee_local $1
        (i32.load8_u
         (get_local $0)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (i32.const 32)
   )
  )
  (set_local $10
   (i64.extend_u/i32
    (get_local $0)
   )
  )
  (set_local $0
   (i32.add
    (get_local $3)
    (i32.const 180)
   )
  )
  (loop $label$14
   (set_local $1
    (i32.add
     (get_local $1)
     (i32.const 1)
    )
   )
   (br_if $label$14
    (i64.ne
     (tee_local $10
      (i64.shr_u
       (get_local $10)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (block $label$15
   (block $label$16
    (br_if $label$16
     (i32.eqz
      (get_local $1)
     )
    )
    (call $13
     (get_local $0)
     (get_local $1)
    )
    (set_local $0
     (i32.load
      (i32.add
       (get_local $3)
       (i32.const 184)
      )
     )
    )
    (set_local $1
     (i32.load
      (i32.add
       (get_local $3)
       (i32.const 180)
      )
     )
    )
    (br $label$15)
   )
   (set_local $0
    (i32.const 0)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (i32.store offset=196
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=192
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=200
   (get_local $3)
   (get_local $0)
  )
  (i32.store offset=208
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 192)
   )
  )
  (i32.store offset=216
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 56)
   )
  )
  (call $14
   (i32.add
    (get_local $3)
    (i32.const 216)
   )
   (i32.add
    (get_local $3)
    (i32.const 208)
   )
  )
  (call $12
   (i32.add
    (get_local $3)
    (i32.const 192)
   )
   (i32.add
    (get_local $3)
    (i32.const 152)
   )
  )
  (call $fimport$6
   (tee_local $1
    (i32.load offset=192
     (get_local $3)
    )
   )
   (i32.sub
    (i32.load offset=196
     (get_local $3)
    )
    (get_local $1)
   )
  )
  (block $label$17
   (br_if $label$17
    (i32.eqz
     (tee_local $1
      (i32.load offset=192
       (get_local $3)
      )
     )
    )
   )
   (i32.store offset=196
    (get_local $3)
    (get_local $1)
   )
   (call $21
    (get_local $1)
   )
  )
  (block $label$18
   (br_if $label$18
    (i32.eqz
     (tee_local $1
      (i32.load offset=180
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 184)
    )
    (get_local $1)
   )
   (call $21
    (get_local $1)
   )
  )
  (block $label$19
   (br_if $label$19
    (i32.eqz
     (tee_local $1
      (i32.load offset=168
       (get_local $3)
      )
     )
    )
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 172)
    )
    (get_local $1)
   )
   (call $21
    (get_local $1)
   )
  )
  (block $label$20
   (br_if $label$20
    (i32.eqz
     (i32.and
      (i32.load8_u offset=88
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (call $21
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 96)
     )
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 224)
   )
  )
 )
 (func $11 (; 42 ;) (type $2) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
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
   (i32.sub
    (i32.const 0)
    (tee_local $4
     (select
      (i32.load offset=4
       (get_local $1)
      )
      (i32.shr_u
       (tee_local $3
        (i32.load8_u
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $3)
       (i32.const 1)
      )
     )
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (loop $label$1
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const -1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $5
      (i64.shr_u
       (get_local $5)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $3
   (i32.sub
    (get_local $3)
    (tee_local $4
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 16)
       )
      )
      (i32.shr_u
       (tee_local $4
        (i32.load8_u offset=12
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (i32.and
       (get_local $4)
       (i32.const 1)
      )
     )
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (get_local $4)
   )
  )
  (set_local $6
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (loop $label$2
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const -1)
    )
   )
   (br_if $label$2
    (i64.ne
     (tee_local $5
      (i64.shr_u
       (get_local $5)
       (i64.const 7)
      )
     )
     (i64.const 0)
    )
   )
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (get_local $3)
     )
    )
    (call $13
     (get_local $0)
     (i32.sub
      (i32.const 0)
      (get_local $3)
     )
    )
    (set_local $4
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
    (br $label$3)
   )
   (set_local $3
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (get_local $3)
  )
  (i32.store
   (get_local $2)
   (get_local $3)
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $4)
  )
  (drop
   (call $15
    (get_local $2)
    (get_local $1)
   )
  )
  (drop
   (call $15
    (get_local $2)
    (get_local $6)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $12 (; 43 ;) (type $2) (param $0 i32) (param $1 i32)
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
    (call $13
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
  (call $fimport$0
   (i32.gt_s
    (tee_local $0
     (i32.sub
      (get_local $5)
      (get_local $3)
     )
    )
    (i32.const 7)
   )
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
    (get_local $3)
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.gt_s
    (i32.add
     (get_local $0)
     (i32.const -8)
    )
    (i32.const 7)
   )
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
   (call $17
    (call $16
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
 (func $13 (; 44 ;) (type $2) (param $0 i32) (param $1 i32)
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
        (call $19
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
    (call $31
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
     (call $fimport$7
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
   (call $21
    (get_local $1)
   )
   (return)
  )
 )
 (func $14 (; 45 ;) (type $2) (param $0 i32) (param $1 i32)
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
  (call $fimport$0
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
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
  (call $fimport$0
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
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
  (call $fimport$0
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
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
  (call $fimport$0
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (get_local $4)
     )
     (get_local $3)
    )
    (i32.const 7)
   )
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
  (drop
   (call $15
    (i32.load
     (get_local $1)
    )
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $15 (; 46 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
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
  (set_local $4
   (i64.extend_u/i32
    (select
     (i32.load offset=4
      (get_local $1)
     )
     (i32.shr_u
      (tee_local $3
       (i32.load8_u
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (i32.and
      (get_local $3)
      (i32.const 1)
     )
    )
   )
  )
  (set_local $5
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (loop $label$1
   (set_local $7
    (i32.wrap/i64
     (get_local $4)
    )
   )
   (i32.store8 offset=15
    (get_local $2)
    (i32.or
     (i32.shl
      (tee_local $8
       (i64.ne
        (tee_local $4
         (i64.shr_u
          (get_local $4)
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
   (call $fimport$0
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $6)
      )
      (get_local $5)
     )
     (i32.const 0)
    )
    (i32.const 8456)
   )
   (drop
    (call $fimport$7
     (i32.load
      (get_local $3)
     )
     (i32.add
      (get_local $2)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $3)
    (tee_local $5
     (i32.add
      (i32.load
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (br_if $label$1
    (get_local $8)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.eqz
     (tee_local $3
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $3
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $7
        (i32.and
         (get_local $3)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $8
    (i32.load offset=8
     (get_local $1)
    )
   )
   (call $fimport$0
    (i32.ge_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $5)
     )
     (get_local $3)
    )
    (i32.const 8456)
   )
   (drop
    (call $fimport$7
     (i32.load
      (tee_local $5
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
     )
     (select
      (get_local $8)
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
      (get_local $7)
     )
     (get_local $3)
    )
   )
   (i32.store
    (get_local $5)
    (i32.add
     (i32.load
      (get_local $5)
     )
     (get_local $3)
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
 (func $16 (; 47 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
   (call $fimport$0
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $5)
      )
      (get_local $4)
     )
     (i32.const 0)
    )
    (i32.const 8456)
   )
   (drop
    (call $fimport$7
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
    (call $fimport$0
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
     (i32.const 8456)
    )
    (drop
     (call $fimport$7
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
    (call $fimport$0
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $5)
       )
       (get_local $4)
      )
      (i32.const 7)
     )
     (i32.const 8456)
    )
    (drop
     (call $fimport$7
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
 (func $17 (; 48 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
   (call $fimport$0
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $5)
      )
      (get_local $4)
     )
     (i32.const 0)
    )
    (i32.const 8456)
   )
   (drop
    (call $fimport$7
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
  (call $fimport$0
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
   (i32.const 8456)
  )
  (drop
   (call $fimport$7
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
 (func $18 (; 49 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i64.const 0)
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
   (call $fimport$0
    (i32.lt_u
     (get_local $2)
     (i32.load
      (get_local $5)
     )
    )
    (i32.const 8654)
   )
   (set_local $7
    (i32.load8_u
     (tee_local $2
      (i32.load
       (get_local $6)
      )
     )
    )
   )
   (i32.store
    (get_local $6)
    (tee_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $4
    (i64.or
     (get_local $4)
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $7)
        (i32.const 127)
       )
       (tee_local $3
        (i32.and
         (get_local $3)
         (i32.const 255)
        )
       )
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 7)
    )
   )
   (br_if $label$1
    (i32.and
     (get_local $7)
     (i32.const 128)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (i32.ge_u
      (tee_local $5
       (i32.sub
        (tee_local $3
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $7
         (i32.load
          (get_local $1)
         )
        )
       )
      )
      (tee_local $6
       (i32.wrap/i64
        (get_local $4)
       )
      )
     )
    )
    (call $13
     (get_local $1)
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
    (set_local $2
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $3
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (get_local $1)
     )
    )
    (br $label$2)
   )
   (br_if $label$2
    (i32.le_u
     (get_local $5)
     (get_local $6)
    )
   )
   (i32.store
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (tee_local $3
     (i32.add
      (get_local $7)
      (get_local $6)
     )
    )
   )
  )
  (call $fimport$0
   (i32.ge_u
    (i32.sub
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
     )
     (get_local $2)
    )
    (tee_local $2
     (i32.sub
      (get_local $3)
      (get_local $7)
     )
    )
   )
   (i32.const 8658)
  )
  (drop
   (call $fimport$7
    (get_local $7)
    (i32.load
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (get_local $2)
   )
  )
  (i32.store
   (get_local $3)
   (i32.add
    (i32.load
     (get_local $3)
    )
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $19 (; 50 ;) (type $17) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $37
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
       (i32.load offset=8664
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
       (call $37
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $20 (; 51 ;) (type $17) (param $0 i32) (result i32)
  (call $19
   (get_local $0)
  )
 )
 (func $21 (; 52 ;) (type $6) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $40
    (get_local $0)
   )
  )
 )
 (func $22 (; 53 ;) (type $6) (param $0 i32)
  (call $21
   (get_local $0)
  )
 )
 (func $23 (; 54 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
     (call $35
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
        (i32.load offset=8664
         (i32.const 0)
        )
       )
      )
     )
     (call_indirect (type $1)
      (get_local $0)
     )
     (br_if $label$3
      (call $35
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
 (func $24 (; 55 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (call $23
   (get_local $0)
   (get_local $1)
  )
 )
 (func $25 (; 56 ;) (type $2) (param $0 i32) (param $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $40
    (get_local $0)
   )
  )
 )
 (func $26 (; 57 ;) (type $2) (param $0 i32) (param $1 i32)
  (call $25
   (get_local $0)
   (get_local $1)
  )
 )
 (func $27 (; 58 ;) (type $6) (param $0 i32)
  (call $fimport$8)
  (unreachable)
 )
 (func $28 (; 59 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.and
     (i32.load8_u
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (i64.store align=4
    (get_local $0)
    (i64.load align=4
     (get_local $1)
    )
   )
   (i32.store
    (get_local $2)
    (i32.load
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
   (return
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.ge_u
     (tee_local $2
      (i32.load offset=4
       (get_local $1)
      )
     )
     (i32.const -16)
    )
   )
   (set_local $3
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$3
    (block $label$4
     (br_if $label$4
      (i32.ge_u
       (get_local $2)
       (i32.const 11)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.shl
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$3
      (get_local $2)
     )
     (i32.store8
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (call $19
      (tee_local $4
       (i32.and
        (i32.add
         (get_local $2)
         (i32.const 16)
        )
        (i32.const -16)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (i32.or
      (get_local $4)
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $2)
    )
   )
   (drop
    (call $fimport$7
     (get_local $1)
     (get_local $3)
     (get_local $2)
    )
   )
   (i32.store8
    (i32.add
     (get_local $1)
     (get_local $2)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $fimport$8)
  (unreachable)
 )
 (func $29 (; 60 ;) (type $18) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i64.store align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_u
     (tee_local $5
      (select
       (i32.load offset=4
        (get_local $1)
       )
       (i32.shr_u
        (tee_local $5
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $6
        (i32.and
         (get_local $5)
         (i32.const 1)
        )
       )
      )
     )
     (get_local $2)
    )
   )
   (br_if $label$1
    (i32.ge_u
     (tee_local $3
      (select
       (tee_local $5
        (i32.sub
         (get_local $5)
         (get_local $2)
        )
       )
       (get_local $3)
       (i32.lt_u
        (get_local $5)
        (get_local $3)
       )
      )
     )
     (i32.const -16)
    )
   )
   (set_local $7
    (i32.load offset=8
     (get_local $1)
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.ge_u
       (get_local $3)
       (i32.const 11)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $5
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$2
      (get_local $3)
     )
     (i32.store8
      (i32.add
       (get_local $5)
       (get_local $3)
      )
      (i32.const 0)
     )
     (return
      (get_local $0)
     )
    )
    (set_local $5
     (call $19
      (tee_local $8
       (i32.and
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
        (i32.const -16)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (i32.or
      (get_local $8)
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $0)
     (get_local $5)
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $3)
    )
   )
   (drop
    (call $fimport$7
     (get_local $5)
     (i32.add
      (select
       (get_local $7)
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (get_local $6)
      )
      (get_local $2)
     )
     (get_local $3)
    )
   )
   (i32.store8
    (i32.add
     (get_local $5)
     (get_local $3)
    )
    (i32.const 0)
   )
   (return
    (get_local $0)
   )
  )
  (call $fimport$8)
  (unreachable)
 )
 (func $30 (; 61 ;) (type $2) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.ge_u
        (get_local $1)
        (i32.const -16)
       )
      )
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.and
          (tee_local $2
           (i32.load8_u
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
        (set_local $3
         (i32.shr_u
          (get_local $2)
          (i32.const 1)
         )
        )
        (set_local $4
         (i32.const 10)
        )
        (br $label$5)
       )
       (set_local $4
        (i32.add
         (i32.and
          (tee_local $2
           (i32.load
            (get_local $0)
           )
          )
          (i32.const -2)
         )
         (i32.const -1)
        )
       )
       (set_local $3
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (set_local $5
       (i32.const 10)
      )
      (block $label$7
       (br_if $label$7
        (i32.lt_u
         (tee_local $1
          (select
           (get_local $3)
           (get_local $1)
           (i32.gt_u
            (get_local $3)
            (get_local $1)
           )
          )
         )
         (i32.const 11)
        )
       )
       (set_local $5
        (i32.add
         (i32.and
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
          (i32.const -16)
         )
         (i32.const -1)
        )
       )
      )
      (block $label$8
       (block $label$9
        (block $label$10
         (br_if $label$10
          (i32.eq
           (get_local $5)
           (get_local $4)
          )
         )
         (block $label$11
          (br_if $label$11
           (i32.ne
            (get_local $5)
            (i32.const 10)
           )
          )
          (set_local $6
           (i32.const 1)
          )
          (set_local $1
           (i32.add
            (get_local $0)
            (i32.const 1)
           )
          )
          (set_local $4
           (i32.load offset=8
            (get_local $0)
           )
          )
          (set_local $7
           (i32.const 0)
          )
          (set_local $8
           (i32.const 1)
          )
          (br_if $label$8
           (i32.and
            (get_local $2)
            (i32.const 1)
           )
          )
          (br $label$3)
         )
         (set_local $1
          (call $19
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
         )
         (br_if $label$9
          (i32.gt_u
           (get_local $5)
           (get_local $4)
          )
         )
         (br_if $label$9
          (get_local $1)
         )
        )
        (return)
       )
       (block $label$12
        (br_if $label$12
         (i32.and
          (tee_local $2
           (i32.load8_u
            (get_local $0)
           )
          )
          (i32.const 1)
         )
        )
        (set_local $7
         (i32.const 1)
        )
        (set_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (set_local $6
         (i32.const 0)
        )
        (set_local $8
         (i32.const 1)
        )
        (br_if $label$3
         (i32.eqz
          (i32.and
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $label$8)
       )
       (set_local $4
        (i32.load offset=8
         (get_local $0)
        )
       )
       (set_local $6
        (i32.const 1)
       )
       (set_local $7
        (i32.const 1)
       )
       (set_local $8
        (i32.const 1)
       )
       (br_if $label$3
        (i32.eqz
         (i32.and
          (get_local $2)
          (i32.const 1)
         )
        )
       )
      )
      (br_if $label$1
       (i32.eqz
        (tee_local $2
         (i32.add
          (i32.load offset=4
           (get_local $0)
          )
          (i32.const 1)
         )
        )
       )
      )
      (br $label$2)
     )
     (call $fimport$8)
     (unreachable)
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $2
       (i32.add
        (i32.shr_u
         (i32.and
          (get_local $2)
          (i32.const 254)
         )
         (get_local $8)
        )
        (i32.const 1)
       )
      )
     )
    )
   )
   (drop
    (call $fimport$7
     (get_local $1)
     (get_local $4)
     (get_local $2)
    )
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (get_local $6)
    )
   )
   (call $21
    (get_local $4)
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (get_local $7)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $3)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $1)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
 )
 (func $31 (; 62 ;) (type $6) (param $0 i32)
  (call $fimport$8)
  (unreachable)
 )
 (func $32 (; 63 ;) (type $3) (result i32)
  (i32.const 8668)
 )
 (func $33 (; 64 ;) (type $6) (param $0 i32)
 )
 (func $34 (; 65 ;) (type $17) (param $0 i32) (result i32)
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
 (func $35 (; 66 ;) (type $7) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
       (call $36
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
   (call $32)
  )
 )
 (func $36 (; 67 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
     (call $37
      (get_local $1)
     )
    )
   )
   (i32.store
    (call $32)
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
        (call $37
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
     (call $40
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
 (func $37 (; 68 ;) (type $17) (param $0 i32) (result i32)
  (call $38
   (i32.const 8684)
   (get_local $0)
  )
 )
 (func $38 (; 69 ;) (type $4) (param $0 i32) (param $1 i32) (result i32)
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
         (call $39
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
      (call $fimport$0
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
       (i32.const 8206)
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
 (func $39 (; 70 ;) (type $17) (param $0 i32) (result i32)
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
      (i32.load8_u offset=8676
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8680
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8676
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8680
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
       (i32.load offset=8680
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8680
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
       (i32.load8_u offset=8676
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8676
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8680
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
       (i32.load offset=8680
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8680
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
 (func $40 (; 71 ;) (type $6) (param $0 i32)
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
       (i32.load offset=17068
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 16876)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 16876)
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

