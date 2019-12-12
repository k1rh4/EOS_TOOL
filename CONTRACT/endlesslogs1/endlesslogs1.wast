(module
 (type $0 (func))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32 i32) (result i32)))
 (type $3 (func (param i32 f32)))
 (type $4 (func (param i32 i64 i64 i64 i64)))
 (type $5 (func (param i32 f64)))
 (type $6 (func (param i64 i64 i64 i64) (result i32)))
 (type $7 (func (param i64 i64) (result f64)))
 (type $8 (func (param i64 i64) (result f32)))
 (type $9 (func (param i64 i64) (result i32)))
 (type $10 (func (param i64)))
 (type $11 (func (result i32)))
 (type $12 (func (param i32 i32) (result i32)))
 (type $13 (func (param i32 i64)))
 (type $14 (func (param i64 i64 i64)))
 (type $15 (func (param i32) (result i32)))
 (type $16 (func (param i32)))
 (type $17 (func (param i64 i64)))
 (import "env" "abort" (func $fimport$0))
 (import "env" "eosio_assert" (func $fimport$1 (param i32 i32)))
 (import "env" "memset" (func $fimport$2 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "__extendsftf2" (func $fimport$5 (param i32 f32)))
 (import "env" "__floatsitf" (func $fimport$6 (param i32 i32)))
 (import "env" "__multf3" (func $fimport$7 (param i32 i64 i64 i64 i64)))
 (import "env" "__floatunsitf" (func $fimport$8 (param i32 i32)))
 (import "env" "__divtf3" (func $fimport$9 (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $fimport$10 (param i32 i64 i64 i64 i64)))
 (import "env" "__extenddftf2" (func $fimport$11 (param i32 f64)))
 (import "env" "__eqtf2" (func $fimport$12 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__letf2" (func $fimport$13 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__netf2" (func $fimport$14 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__subtf3" (func $fimport$15 (param i32 i64 i64 i64 i64)))
 (import "env" "__trunctfdf2" (func $fimport$16 (param i64 i64) (result f64)))
 (import "env" "__getf2" (func $fimport$17 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfsf2" (func $fimport$18 (param i64 i64) (result f32)))
 (import "env" "prints_l" (func $fimport$19 (param i32 i32)))
 (import "env" "__unordtf2" (func $fimport$20 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__fixunstfsi" (func $fimport$21 (param i64 i64) (result i32)))
 (import "env" "__fixtfsi" (func $fimport$22 (param i64 i64) (result i32)))
 (import "env" "require_auth" (func $fimport$23 (param i64)))
 (import "env" "action_data_size" (func $fimport$24 (result i32)))
 (import "env" "read_action_data" (func $fimport$25 (param i32 i32) (result i32)))
 (import "env" "eosio_assert_code" (func $fimport$26 (param i32 i64)))
 (memory $0 1)
 (data (i32.const 8540) "failed to allocate pages\00")
 (data (i32.const 8565) "endless.game\00")
 (data (i32.const 8578) "invalid symbol name\00")
 (data (i32.const 8598) "read\00")
 (data (i32.const 8603) "get\00")
 (data (i32.const 0) "\a0!\00\00")
 (table $0 2 2 anyfunc)
 (elem (i32.const 1) $26)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8607))
 (global $global$2 i32 (i32.const 8607))
 (export "apply" (func $1))
 (func $0 (; 27 ;) (type $0)
  (call $5)
  (call $34)
 )
 (func $1 (; 28 ;) (type $14) (param $0 i64) (param $1 i64) (param $2 i64)
  (call $0)
  (if
   (i64.eq
    (get_local $0)
    (get_local $1)
   )
   (if
    (i64.eq
     (i64.const -4994024814571159552)
     (get_local $2)
    )
    (call $27
     (get_local $0)
     (get_local $1)
    )
    (if
     (i64.eq
      (i64.const -5001399791737372672)
      (get_local $2)
     )
     (call $29
      (get_local $0)
      (get_local $1)
     )
     (if
      (i64.ne
       (get_local $0)
       (i64.const 6138663577826885632)
      )
      (call $fimport$26
       (i32.const 0)
       (i64.const 8000000000000000000)
      )
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
     (call $fimport$26
      (i32.const 0)
      (i64.const 8000000000000000001)
     )
    )
   )
  )
  (call $23
   (i32.const 0)
  )
 )
 (func $2 (; 29 ;) (type $15) (param $0 i32) (result i32)
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
    (i32.const 8540)
   )
   (return
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $3 (; 30 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (block $label$6
        (br_if $label$6
         (i32.eqz
          (tee_local $1
           (i32.mul
            (get_local $1)
            (get_local $0)
           )
          )
         )
        )
        (i32.store offset=8204
         (i32.const 0)
         (tee_local $3
          (i32.add
           (i32.load offset=8204
            (i32.const 0)
           )
           (tee_local $2
            (i32.shr_u
             (get_local $1)
             (i32.const 16)
            )
           )
          )
         )
        )
        (i32.store offset=8196
         (i32.const 0)
         (tee_local $4
          (i32.and
           (i32.add
            (i32.add
             (tee_local $0
              (i32.load offset=8196
               (i32.const 0)
              )
             )
             (get_local $1)
            )
            (i32.const 7)
           )
           (i32.const -8)
          )
         )
        )
        (br_if $label$5
         (i32.le_u
          (i32.shl
           (get_local $3)
           (i32.const 16)
          )
          (get_local $4)
         )
        )
        (br_if $label$4
         (i32.eq
          (grow_memory
           (get_local $2)
          )
          (i32.const -1)
         )
        )
        (br $label$3)
       )
       (return
        (i32.const 0)
       )
      )
      (i32.store offset=8204
       (i32.const 0)
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.ne
        (grow_memory
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.const -1)
       )
      )
     )
     (call $fimport$1
      (i32.const 0)
      (i32.const 8540)
     )
     (br_if $label$2
      (get_local $0)
     )
     (br $label$1)
    )
    (br_if $label$1
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (drop
    (call $fimport$2
     (get_local $0)
     (i32.const 0)
     (get_local $1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.const 0)
 )
 (func $4 (; 31 ;) (type $16) (param $0 i32)
 )
 (func $5 (; 32 ;) (type $0)
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
 (func $6 (; 33 ;) (type $11) (result i32)
  (i32.const 8208)
 )
 (func $7 (; 34 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $2
      (get_local $1)
     )
    )
   )
   (i32.store
    (call $6)
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
        (call $2
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
     (call $4
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
 (func $8 (; 35 ;) (type $2) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
       (call $7
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
   (call $6)
  )
 )
 (func $9 (; 36 ;) (type $15) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $2
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
       (i32.load offset=8216
        (i32.const 0)
       )
      )
     )
    )
    (call_indirect (type $0)
     (get_local $2)
    )
    (br_if $label$2
     (i32.eqz
      (tee_local $0
       (call $2
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $10 (; 37 ;) (type $15) (param $0 i32) (result i32)
  (call $9
   (get_local $0)
  )
 )
 (func $11 (; 38 ;) (type $16) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $4
    (get_local $0)
   )
  )
 )
 (func $12 (; 39 ;) (type $16) (param $0 i32)
  (call $11
   (get_local $0)
  )
 )
 (func $13 (; 40 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $8
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
        (i32.load offset=8216
         (i32.const 0)
        )
       )
      )
     )
     (call_indirect (type $0)
      (get_local $0)
     )
     (br_if $label$3
      (call $8
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
 (func $14 (; 41 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (call $13
   (get_local $0)
   (get_local $1)
  )
 )
 (func $15 (; 42 ;) (type $1) (param $0 i32) (param $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $4
    (get_local $0)
   )
  )
 )
 (func $16 (; 43 ;) (type $1) (param $0 i32) (param $1 i32)
  (call $15
   (get_local $0)
   (get_local $1)
  )
 )
 (func $17 (; 44 ;) (type $15) (param $0 i32) (result i32)
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
 (func $18 (; 45 ;) (type $16) (param $0 i32)
  (i32.store
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $19 (; 46 ;) (type $16) (param $0 i32)
  (i32.store
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $20 (; 47 ;) (type $16) (param $0 i32)
  (call $fimport$0)
  (unreachable)
 )
 (func $21 (; 48 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $9
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
    (call $fimport$3
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
  (call $fimport$0)
  (unreachable)
 )
 (func $22 (; 49 ;) (type $1) (param $0 i32) (param $1 i32)
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
          (call $9
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
     (call $fimport$0)
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
    (call $fimport$3
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
   (call $11
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
 (func $23 (; 50 ;) (type $16) (param $0 i32)
 )
 (func $24 (; 51 ;) (type $2) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (call $18
   (i32.const 8220)
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $3
         (i32.load offset=8228
          (i32.const 0)
         )
        )
       )
      )
      (br_if $label$2
       (i32.ne
        (tee_local $4
         (i32.load offset=8232
          (i32.const 0)
         )
        )
        (i32.const 32)
       )
      )
      (br $label$3)
     )
     (set_local $3
      (i32.const 8236)
     )
     (i32.store offset=8228
      (i32.const 0)
      (i32.const 8236)
     )
     (br_if $label$2
      (i32.ne
       (tee_local $4
        (i32.load offset=8232
         (i32.const 0)
        )
       )
       (i32.const 32)
      )
     )
    )
    (br_if $label$1
     (i32.eqz
      (tee_local $3
       (call $3
        (i32.const 260)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (i32.load offset=8228
      (i32.const 0)
     )
    )
    (i32.store offset=8228
     (i32.const 0)
     (get_local $3)
    )
    (i32.store offset=8232
     (i32.const 0)
     (i32.const 0)
    )
   )
   (i32.store offset=8232
    (i32.const 0)
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (i32.store
    (i32.add
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $4)
        (i32.const 2)
       )
      )
     )
     (i32.const 132)
    )
    (get_local $1)
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 4)
    )
    (get_local $0)
   )
   (call $19
    (i32.const 8220)
   )
   (return
    (i32.const 0)
   )
  )
  (call $19
   (i32.const 8220)
  )
  (i32.const -1)
 )
 (func $25 (; 52 ;) (type $16) (param $0 i32)
  (call $fimport$0)
  (unreachable)
 )
 (func $26 (; 53 ;) (type $16) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.and
      (i32.load8_u offset=8528
       (i32.const 0)
      )
      (i32.const 1)
     )
    )
   )
   (call $11
    (i32.load offset=8536
     (i32.const 0)
    )
   )
  )
 )
 (func $27 (; 54 ;) (type $17) (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 352)
    )
   )
  )
  (set_global $global$0
   (get_local $2)
  )
  (set_local $4
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $5
      (call $fimport$24)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.lt_u
       (get_local $5)
       (i32.const 512)
      )
     )
     (set_local $4
      (call $2
       (get_local $5)
      )
     )
     (br $label$2)
    )
    (set_global $global$0
     (tee_local $4
      (i32.sub
       (get_local $2)
       (i32.and
        (i32.add
         (get_local $5)
         (i32.const 15)
        )
        (i32.const -16)
       )
      )
     )
    )
   )
   (drop
    (call $fimport$25
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (i32.store offset=276
   (get_local $3)
   (get_local $4)
  )
  (i32.store offset=272
   (get_local $3)
   (get_local $4)
  )
  (i32.store offset=280
   (get_local $3)
   (i32.add
    (get_local $4)
    (get_local $5)
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 168)
   )
   (i32.const 0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 48)
    )
   )
   (i64.const 0)
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 64)
    )
   )
   (i64.const 0)
  )
  (i64.store align=4
   (i32.add
    (get_local $3)
    (i32.const 220)
   )
   (i64.const 0)
  )
  (i64.store align=4
   (i32.add
    (get_local $3)
    (i32.const 228)
   )
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 108)
   )
   (i32.const 0)
  )
  (i64.store
   (tee_local $2
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 120)
    )
   )
   (i64.const 0)
  )
  (i64.store offset=152
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=144
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=160
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=176
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=192
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=212 align=4
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=236 align=4
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=248
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=288
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 272)
   )
  )
  (i32.store offset=300
   (get_local $3)
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=304
   (get_local $3)
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=312
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 176)
   )
  )
  (i32.store offset=316
   (get_local $3)
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 56)
   )
  )
  (i32.store offset=320
   (get_local $3)
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 72)
   )
  )
  (i32.store offset=324
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 209)
   )
  )
  (i32.store offset=340
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 248)
   )
  )
  (i32.store offset=344
   (get_local $3)
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (i32.const 128)
   )
  )
  (i32.store offset=296
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 136)
   )
  )
  (i32.store offset=336
   (get_local $3)
   (tee_local $6
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 100)
    )
   )
  )
  (i32.store offset=332
   (get_local $3)
   (tee_local $7
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 88)
    )
   )
  )
  (i32.store offset=328
   (get_local $3)
   (tee_local $8
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 76)
    )
   )
  )
  (i32.store offset=308
   (get_local $3)
   (tee_local $9
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 136)
     )
     (i32.const 24)
    )
   )
  )
  (call $28
   (i32.add
    (get_local $3)
    (i32.const 296)
   )
   (i32.add
    (get_local $3)
    (i32.const 288)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
   (i64.load offset=152
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i64.load offset=144
    (get_local $3)
   )
  )
  (i64.store
   (get_local $3)
   (i64.load offset=136
    (get_local $3)
   )
  )
  (set_local $9
   (call $21
    (i32.add
     (get_local $3)
     (i32.const 24)
    )
    (get_local $9)
   )
  )
  (i32.store16
   (i32.add
    (get_local $3)
    (i32.const 72)
   )
   (i32.load16_u offset=208
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 56)
   )
   (i64.load offset=192
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store offset=40
   (get_local $3)
   (i64.load offset=176
    (get_local $3)
   )
  )
  (set_local $5
   (call $21
    (i32.add
     (get_local $3)
     (i32.const 76)
    )
    (get_local $8)
   )
  )
  (set_local $7
   (call $21
    (i32.add
     (get_local $3)
     (i32.const 88)
    )
    (get_local $7)
   )
  )
  (set_local $4
   (call $21
    (i32.add
     (get_local $3)
     (i32.const 100)
    )
    (get_local $6)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 128)
   )
   (i64.load offset=264
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 120)
   )
   (i64.load
    (get_local $2)
   )
  )
  (i64.store offset=112
   (get_local $3)
   (i64.load offset=248
    (get_local $3)
   )
  )
  (call $fimport$23
   (i64.const 6112252634376312272)
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (block $label$7
      (block $label$8
       (block $label$9
        (block $label$10
         (br_if $label$10
          (i32.and
           (i32.load8_u
            (get_local $4)
           )
           (i32.const 1)
          )
         )
         (br_if $label$9
          (i32.and
           (i32.load8_u
            (get_local $7)
           )
           (i32.const 1)
          )
         )
         (br $label$8)
        )
        (call $11
         (i32.load
          (i32.add
           (get_local $3)
           (i32.const 108)
          )
         )
        )
        (br_if $label$8
         (i32.eqz
          (i32.and
           (i32.load8_u
            (get_local $7)
           )
           (i32.const 1)
          )
         )
        )
       )
       (call $11
        (i32.load
         (i32.add
          (get_local $3)
          (i32.const 96)
         )
        )
       )
       (set_local $4
        (i32.const 1)
       )
       (br_if $label$7
        (i32.eqz
         (i32.and
          (i32.load8_u
           (get_local $5)
          )
          (i32.const 1)
         )
        )
       )
       (br $label$6)
      )
      (set_local $4
       (i32.const 1)
      )
      (br_if $label$6
       (i32.and
        (i32.load8_u
         (get_local $5)
        )
        (i32.const 1)
       )
      )
     )
     (br_if $label$4
      (i32.eqz
       (i32.and
        (i32.load8_u
         (get_local $9)
        )
        (get_local $4)
       )
      )
     )
     (br $label$5)
    )
    (call $11
     (i32.load
      (i32.add
       (get_local $3)
       (i32.const 84)
      )
     )
    )
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u
        (get_local $9)
       )
       (get_local $4)
      )
     )
    )
   )
   (call $11
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
    )
   )
  )
  (block $label$11
   (br_if $label$11
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $3)
        (i32.const 236)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $11
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 244)
     )
    )
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $3)
        (i32.const 224)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $11
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 232)
     )
    )
   )
  )
  (block $label$13
   (br_if $label$13
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $3)
        (i32.const 212)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $11
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 220)
     )
    )
   )
  )
  (block $label$14
   (br_if $label$14
    (i32.eqz
     (i32.and
      (i32.load8_u
       (i32.add
        (get_local $3)
        (i32.const 160)
       )
      )
      (i32.const 1)
     )
    )
   )
   (call $11
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 168)
     )
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 352)
   )
  )
 )
 (func $28 (; 55 ;) (type $1) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $31
    (i32.load
     (get_local $1)
    )
    (i32.load offset=12
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=16
    (get_local $0)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (tee_local $5
    (i32.add
     (i32.load
      (get_local $5)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i32.gt_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
      (get_local $5)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=20
    (get_local $0)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (tee_local $5
    (i32.add
     (i32.load
      (get_local $5)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.gt_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
      (get_local $5)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=24
    (get_local $0)
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.ne
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (tee_local $5
      (i32.load offset=4
       (get_local $4)
      )
     )
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 1)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 1)
   )
  )
  (set_local $3
   (i32.load offset=28
    (get_local $0)
   )
  )
  (block $label$9
   (br_if $label$9
    (i32.ne
     (i32.load offset=8
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
     (tee_local $5
      (i32.load offset=4
       (get_local $4)
      )
     )
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 1)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 1)
   )
  )
  (drop
   (call $31
    (i32.load
     (get_local $1)
    )
    (i32.load offset=32
     (get_local $0)
    )
   )
  )
  (drop
   (call $31
    (i32.load
     (get_local $1)
    )
    (i32.load offset=36
     (get_local $0)
    )
   )
  )
  (drop
   (call $31
    (i32.load
     (get_local $1)
    )
    (i32.load offset=40
     (get_local $0)
    )
   )
  )
  (set_local $3
   (i32.load offset=44
    (get_local $0)
   )
  )
  (block $label$10
   (br_if $label$10
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (tee_local $5
    (i32.add
     (i32.load
      (get_local $5)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (block $label$11
   (br_if $label$11
    (i32.gt_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
      (get_local $5)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $4
   (i32.load offset=48
    (get_local $0)
   )
  )
  (block $label$12
   (br_if $label$12
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $0
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $1
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $4)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $0)
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
 (func $29 (; 56 ;) (type $17) (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 96)
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
      (br_if $label$4
       (i32.eqz
        (tee_local $4
         (call $fimport$24)
        )
       )
      )
      (br_if $label$3
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
    (call $fimport$25
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (i32.store offset=52
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=48
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=56
   (get_local $3)
   (i32.add
    (get_local $2)
    (get_local $4)
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=24
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=64
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
  )
  (i32.store offset=76
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store offset=80
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (i32.store offset=84
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
  )
  (i32.store offset=88
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 40)
   )
  )
  (i32.store offset=72
   (get_local $3)
   (get_local $3)
  )
  (call $30
   (i32.add
    (get_local $3)
    (i32.const 72)
   )
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
  )
  (call $fimport$23
   (i64.const 6112252634376312272)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 96)
   )
  )
 )
 (func $30 (; 57 ;) (type $1) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=8
    (get_local $0)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $3
   (i32.load offset=12
    (get_local $0)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $5
       (i32.load offset=4
        (get_local $4)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $5
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (tee_local $5
    (i32.add
     (i32.load
      (get_local $5)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i32.gt_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
      (get_local $5)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $5)
    (i32.const 8)
   )
  )
  (i64.store offset=8
   (get_local $3)
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $4)
    )
    (i32.const 8)
   )
  )
  (set_local $4
   (i32.load offset=16
    (get_local $0)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (tee_local $0
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $1
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $1
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $4)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $0)
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
 (func $31 (; 58 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (call $32
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
         (call $9
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
       (call $22
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
     (call $22
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
    (call $20
     (get_local $2)
    )
    (unreachable)
   )
   (i32.store offset=20
    (get_local $2)
    (get_local $3)
   )
   (call $11
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
 (func $32 (; 59 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i64.const 0)
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
  )
  (set_local $6
   (i32.const 0)
  )
  (loop $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (get_local $2)
      (i32.load
       (get_local $4)
      )
     )
    )
    (call $fimport$1
     (i32.const 0)
     (i32.const 8603)
    )
    (set_local $2
     (i32.load
      (get_local $5)
     )
    )
   )
   (set_local $7
    (i32.load8_u
     (get_local $2)
    )
   )
   (i32.store
    (get_local $5)
    (tee_local $8
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
   )
   (set_local $3
    (i64.or
     (get_local $3)
     (i64.extend_u/i32
      (i32.shl
       (i32.and
        (get_local $7)
        (i32.const 127)
       )
       (tee_local $2
        (i32.and
         (get_local $6)
         (i32.const 255)
        )
       )
      )
     )
    )
   )
   (set_local $6
    (i32.add
     (get_local $2)
     (i32.const 7)
    )
   )
   (set_local $2
    (get_local $8)
   )
   (br_if $label$1
    (i32.and
     (get_local $7)
     (i32.const 128)
    )
   )
  )
  (block $label$3
   (block $label$4
    (br_if $label$4
     (i32.ge_u
      (tee_local $5
       (i32.sub
        (tee_local $7
         (i32.load offset=4
          (get_local $1)
         )
        )
        (tee_local $2
         (i32.load
          (get_local $1)
         )
        )
       )
      )
      (tee_local $6
       (i32.wrap/i64
        (get_local $3)
       )
      )
     )
    )
    (call $33
     (get_local $1)
     (i32.sub
      (get_local $6)
      (get_local $5)
     )
    )
    (set_local $8
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
    (set_local $7
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 4)
      )
     )
    )
    (set_local $2
     (i32.load
      (get_local $1)
     )
    )
    (br $label$3)
   )
   (br_if $label$3
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
    (tee_local $7
     (i32.add
      (get_local $2)
      (get_local $6)
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.ge_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $8)
     )
     (tee_local $7
      (i32.sub
       (get_local $7)
       (get_local $2)
      )
     )
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8598)
   )
   (set_local $8
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$3
    (get_local $2)
    (get_local $8)
    (get_local $7)
   )
  )
  (i32.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (i32.add
    (i32.load
     (get_local $2)
    )
    (get_local $7)
   )
  )
  (get_local $0)
 )
 (func $33 (; 60 ;) (type $1) (param $0 i32) (param $1 i32)
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
        (call $9
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
    (call $25
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
   (call $11
    (get_local $1)
   )
   (return)
  )
 )
 (func $34 (; 61 ;) (type $0)
  (local $0 i32)
  (local $1 i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (set_local $0
   (i32.const 0)
  )
  (i64.store offset=8504
   (i32.const 0)
   (i64.const 1397703940)
  )
  (i64.store offset=8496
   (i32.const 0)
   (i64.const 0)
  )
  (set_local $1
   (i64.const 5459781)
  )
  (block $label$1
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (set_local $2
      (i64.shr_u
       (get_local $1)
       (i64.const 8)
      )
     )
     (block $label$4
      (br_if $label$4
       (i64.eq
        (i64.and
         (get_local $1)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $1
       (get_local $2)
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.lt_s
        (get_local $3)
        (i32.const 6)
       )
      )
      (br $label$1)
     )
     (set_local $1
      (get_local $2)
     )
     (loop $label$5
      (br_if $label$2
       (i64.ne
        (i64.and
         (get_local $1)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $1
       (i64.shr_u
        (get_local $1)
        (i64.const 8)
       )
      )
      (set_local $3
       (i32.lt_s
        (get_local $0)
        (i32.const 6)
       )
      )
      (set_local $0
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (br_if $label$5
       (get_local $3)
      )
     )
     (set_local $0
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $4)
       (i32.const 6)
      )
     )
     (br $label$1)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8578)
   )
  )
  (set_local $0
   (i32.const 0)
  )
  (i64.store offset=8520
   (i32.const 0)
   (i64.const 5522692)
  )
  (i64.store offset=8512
   (i32.const 0)
   (i64.const 0)
  )
  (set_local $1
   (i64.const 21573)
  )
  (block $label$6
   (block $label$7
    (loop $label$8
     (br_if $label$7
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $1)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (set_local $2
      (i64.shr_u
       (get_local $1)
       (i64.const 8)
      )
     )
     (block $label$9
      (br_if $label$9
       (i64.eq
        (i64.and
         (get_local $1)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $1
       (get_local $2)
      )
      (set_local $0
       (i32.add
        (tee_local $3
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (br_if $label$8
       (i32.lt_s
        (get_local $3)
        (i32.const 6)
       )
      )
      (br $label$6)
     )
     (set_local $1
      (get_local $2)
     )
     (loop $label$10
      (br_if $label$7
       (i64.ne
        (i64.and
         (get_local $1)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $1
       (i64.shr_u
        (get_local $1)
        (i64.const 8)
       )
      )
      (set_local $3
       (i32.lt_s
        (get_local $0)
        (i32.const 6)
       )
      )
      (set_local $0
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (br_if $label$10
       (get_local $3)
      )
     )
     (set_local $0
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (br_if $label$8
      (i32.lt_s
       (get_local $4)
       (i32.const 6)
      )
     )
     (br $label$6)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8578)
   )
  )
  (i64.store offset=8528 align=4
   (i32.const 0)
   (i64.const 0)
  )
  (i32.store offset=8536
   (i32.const 0)
   (i32.const 0)
  )
  (block $label$11
   (br_if $label$11
    (i32.ge_u
     (tee_local $0
      (call $17
       (i32.const 8565)
      )
     )
     (i32.const -16)
    )
   )
   (block $label$12
    (block $label$13
     (block $label$14
      (br_if $label$14
       (i32.ge_u
        (get_local $0)
        (i32.const 11)
       )
      )
      (i32.store8 offset=8528
       (i32.const 0)
       (i32.shl
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $3
       (i32.const 8529)
      )
      (br_if $label$13
       (get_local $0)
      )
      (br $label$12)
     )
     (set_local $3
      (call $9
       (tee_local $4
        (i32.and
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
         (i32.const -16)
        )
       )
      )
     )
     (i32.store offset=8528
      (i32.const 0)
      (i32.or
       (get_local $4)
       (i32.const 1)
      )
     )
     (i32.store offset=8536
      (i32.const 0)
      (get_local $3)
     )
     (i32.store offset=8532
      (i32.const 0)
      (get_local $0)
     )
    )
    (drop
     (call $fimport$3
      (get_local $3)
      (i32.const 8565)
      (get_local $0)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (get_local $0)
    )
    (i32.const 0)
   )
   (drop
    (call $24
     (i32.const 1)
     (i32.const 0)
     (i32.const 8192)
    )
   )
   (return)
  )
  (call $20
   (i32.const 8528)
  )
  (unreachable)
 )
)

