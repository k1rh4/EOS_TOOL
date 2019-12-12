(module
 (type $0 (func (param i64)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32 i32) (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func))
 (type $5 (func (param i64 i64 i64)))
 (type $6 (func (param i32)))
 (import "env" "require_recipient" (func $fimport$0 (param i64)))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$1 (param i32 i32)))
 (import "env" "eosio_assert" (func $fimport$2 (param i32 i32)))
 (import "env" "memcpy" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$4 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$5 (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "luckymedice1\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8205))
 (global $global$2 i32 (i32.const 8205))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (func $0 (; 6 ;) (type $4)
 )
 (func $1 (; 7 ;) (type $5) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $0)
  (set_local $3
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $5
   (i32.const 8192)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$1
   (set_local $7
    (i64.const 0)
   )
   (block $label$2
    (br_if $label$2
     (i64.gt_u
      (get_local $3)
      (i64.const 11)
     )
    )
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $8
           (i32.load8_u
            (get_local $5)
           )
          )
          (i32.const -97)
         )
         (i32.const 255)
        )
        (i32.const 25)
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const -91)
       )
      )
      (br $label$3)
     )
     (set_local $8
      (select
       (i32.add
        (get_local $8)
        (i32.const -48)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $8)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (i64.extend_u/i32
        (get_local $8)
       )
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $5
    (i32.add
     (get_local $5)
     (i32.const 1)
    )
   )
   (set_local $3
    (i64.add
     (get_local $3)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const 4294967291)
      )
     )
     (i64.const 55834574842)
    )
   )
  )
  (call $fimport$0
   (get_local $6)
  )
  (call $2
   (i32.const 0)
  )
 )
 (func $2 (; 8 ;) (type $6) (param $0 i32)
 )
)

