(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32 i32) (result i32)))
 (type $3 (func (param i32 i32) (result i32)))
 (type $4 (func (param i32 i64)))
 (type $5 (func))
 (type $6 (func (param i64 i64 i64)))
 (type $7 (func (param i32) (result i32)))
 (type $8 (func (param i32)))
 (type $9 (func (param i64 i64)))
 (import "env" "action_data_size" (func $fimport$0 (result i32)))
 (import "env" "eosio_assert" (func $fimport$1 (param i32 i32)))
 (import "env" "memset" (func $fimport$2 (param i32 i32 i32) (result i32)))
 (import "env" "read_action_data" (func $fimport$3 (param i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "eosio_assert_code" (func $fimport$5 (param i32 i64)))
 (memory $0 1)
 (data (i32.const 8208) "failed to allocate pages\00read\00")
 (data (i32.const 0) "0 \00\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8238))
 (global $global$2 i32 (i32.const 8238))
 (export "apply" (func $1))
 (func $0 (; 6 ;) (type $5)
  (call $3)
 )
 (func $1 (; 7 ;) (type $6) (param $0 i64) (param $1 i64) (param $2 i64)
  (call $0)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (if
    (i64.eq
     (i64.const 7746191359077253120)
     (get_local $2)
    )
    (call $5
     (get_local $0)
     (get_local $1)
    )
    (if
     (i64.ne
      (get_local $0)
      (i64.const 6138663577826885632)
     )
     (call $fimport$5
      (i32.const 0)
      (i64.const 8000000000000000000)
     )
    )
   )
   (if
    (i64.eq
     (i64.const 6138663577826885632)
     (get_local $1)
    )
    (if
     (i64.eq
      (i64.const -6569208335818555392)
      (get_local $2)
     )
     (call $fimport$5
      (i32.const 0)
      (i64.const 8000000000000000001)
     )
    )
   )
  )
  (call $4
   (i32.const 0)
  )
 )
 (func $2 (; 8 ;) (type $7) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (get_local $0)
       )
      )
      (i32.store offset=8204
       (i32.const 0)
       (tee_local $2
        (i32.add
         (i32.load offset=8204
          (i32.const 0)
         )
         (tee_local $1
          (i32.shr_u
           (get_local $0)
           (i32.const 16)
          )
         )
        )
       )
      )
      (i32.store offset=8196
       (i32.const 0)
       (tee_local $0
        (i32.and
         (i32.add
          (i32.add
           (tee_local $3
            (i32.load offset=8196
             (i32.const 0)
            )
           )
           (get_local $0)
          )
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
      )
      (br_if $label$3
       (i32.le_u
        (i32.shl
         (get_local $2)
         (i32.const 16)
        )
        (get_local $0)
       )
      )
      (br_if $label$2
       (i32.eq
        (grow_memory
         (get_local $1)
        )
        (i32.const -1)
       )
      )
      (br $label$1)
     )
     (return
      (i32.const 0)
     )
    )
    (i32.store offset=8204
     (i32.const 0)
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br_if $label$1
     (i32.ne
      (grow_memory
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const -1)
     )
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8208)
   )
   (return
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $3 (; 9 ;) (type $5)
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
 (func $4 (; 10 ;) (type $8) (param $0 i32)
 )
 (func $5 (; 11 ;) (type $9) (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_global $global$0
   (get_local $2)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (tee_local $4
          (call $fimport$0)
         )
        )
       )
       (br_if $label$4
        (i32.lt_u
         (get_local $4)
         (i32.const 512)
        )
       )
       (set_local $2
        (call $2
         (get_local $4)
        )
       )
       (br $label$3)
      )
      (i64.store offset=8
       (get_local $3)
       (i64.const 0)
      )
      (set_local $2
       (i32.const 0)
      )
      (set_local $5
       (i32.add
        (get_local $3)
        (i32.const 8)
       )
      )
      (br $label$2)
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
     (call $fimport$3
      (get_local $2)
      (get_local $4)
     )
    )
    (i64.store offset=8
     (get_local $3)
     (i64.const 0)
    )
    (set_local $5
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
    (br_if $label$1
     (i32.gt_u
      (get_local $4)
      (i32.const 7)
     )
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8233)
   )
  )
  (drop
   (call $fimport$4
    (get_local $5)
    (get_local $2)
    (i32.const 8)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
)

