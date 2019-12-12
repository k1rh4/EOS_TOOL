(module
 (type $0 (func))
 (type $1 (func (param i64)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32 i32 i32) (result i32)))
 (type $4 (func (param i32 f32)))
 (type $5 (func (param i32 i64 i64 i64 i64)))
 (type $6 (func (param i32 f64)))
 (type $7 (func (param i64 i64 i64 i64) (result i32)))
 (type $8 (func (param i64 i64) (result f64)))
 (type $9 (func (param i64 i64) (result f32)))
 (type $10 (func (param i64 i64) (result i32)))
 (type $11 (func (result i32)))
 (type $12 (func (param i32 i32) (result i32)))
 (type $13 (func (param i32 i64)))
 (type $14 (func (param i64 i64 i64)))
 (type $15 (func (param i32) (result i32)))
 (type $16 (func (param i32)))
 (type $17 (func (param i32 i64 i64 i32 i32)))
 (type $18 (func (param i64 i64)))
 (import "env" "require_auth" (func $fimport$0 (param i64)))
 (import "env" "eosio_assert" (func $fimport$1 (param i32 i32)))
 (import "env" "abort" (func $fimport$2))
 (import "env" "memset" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "send_inline" (func $fimport$5 (param i32 i32)))
 (import "env" "memmove" (func $fimport$6 (param i32 i32 i32) (result i32)))
 (import "env" "__extendsftf2" (func $fimport$7 (param i32 f32)))
 (import "env" "__floatsitf" (func $fimport$8 (param i32 i32)))
 (import "env" "__multf3" (func $fimport$9 (param i32 i64 i64 i64 i64)))
 (import "env" "__floatunsitf" (func $fimport$10 (param i32 i32)))
 (import "env" "__divtf3" (func $fimport$11 (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $fimport$12 (param i32 i64 i64 i64 i64)))
 (import "env" "__extenddftf2" (func $fimport$13 (param i32 f64)))
 (import "env" "__eqtf2" (func $fimport$14 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__letf2" (func $fimport$15 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__netf2" (func $fimport$16 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__subtf3" (func $fimport$17 (param i32 i64 i64 i64 i64)))
 (import "env" "__trunctfdf2" (func $fimport$18 (param i64 i64) (result f64)))
 (import "env" "__getf2" (func $fimport$19 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfsf2" (func $fimport$20 (param i64 i64) (result f32)))
 (import "env" "prints_l" (func $fimport$21 (param i32 i32)))
 (import "env" "__unordtf2" (func $fimport$22 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__fixunstfsi" (func $fimport$23 (param i64 i64) (result i32)))
 (import "env" "__fixtfsi" (func $fimport$24 (param i64 i64) (result i32)))
 (import "env" "action_data_size" (func $fimport$25 (result i32)))
 (import "env" "read_action_data" (func $fimport$26 (param i32 i32) (result i32)))
 (import "env" "eosio_assert_code" (func $fimport$27 (param i32 i64)))
 (memory $0 1)
 (data (i32.const 8220) "failed to allocate pages\00EOS\00")
 (data (i32.const 8250) "string is too long to be a valid symbol_code\00")
 (data (i32.const 8295) "only uppercase letters allowed in symbol_code string\00")
 (data (i32.const 8348) "invalid symbol name\00")
 (data (i32.const 8368) "write\00")
 (data (i32.const 8374) "read\00")
 (data (i32.const 8379) "get\00")
 (data (i32.const 0) "\c0 \00\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8383))
 (global $global$2 i32 (i32.const 8383))
 (export "apply" (func $1))
 (func $0 (; 28 ;) (type $0)
  (call $5)
 )
 (func $1 (; 29 ;) (type $14) (param $0 i64) (param $1 i64) (param $2 i64)
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
    (call $26
     (get_local $0)
     (get_local $1)
    )
    (if
     (i64.ne
      (get_local $0)
      (i64.const 6138663577826885632)
     )
     (call $fimport$27
      (i32.const 0)
      (i64.const 8000000000000000000)
     )
    )
   )
   (block
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
      (call $fimport$27
       (i32.const 0)
       (i64.const 8000000000000000001)
      )
     )
    )
    (if
     (i64.eq
      (i64.const 6138663591592764928)
      (get_local $1)
     )
     (if
      (i64.eq
       (i64.const -3617168760277827584)
       (get_local $2)
      )
      (call $27
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (call $20
     (i32.const 0)
    )
   )
  )
 )
 (func $2 (; 30 ;) (type $15) (param $0 i32) (result i32)
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
 (func $3 (; 31 ;) (type $15) (param $0 i32) (result i32)
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
    (i32.const 8220)
   )
   (return
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $4 (; 32 ;) (type $16) (param $0 i32)
 )
 (func $5 (; 33 ;) (type $0)
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
 (func $6 (; 34 ;) (type $11) (result i32)
  (i32.const 8208)
 )
 (func $7 (; 35 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $3
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
        (call $3
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
 (func $8 (; 36 ;) (type $3) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $9 (; 37 ;) (type $15) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $3
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
       (call $3
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $10 (; 38 ;) (type $15) (param $0 i32) (result i32)
  (call $9
   (get_local $0)
  )
 )
 (func $11 (; 39 ;) (type $16) (param $0 i32)
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
 (func $12 (; 40 ;) (type $16) (param $0 i32)
  (call $11
   (get_local $0)
  )
 )
 (func $13 (; 41 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
 (func $14 (; 42 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (call $13
   (get_local $0)
   (get_local $1)
  )
 )
 (func $15 (; 43 ;) (type $2) (param $0 i32) (param $1 i32)
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
 (func $16 (; 44 ;) (type $2) (param $0 i32) (param $1 i32)
  (call $15
   (get_local $0)
   (get_local $1)
  )
 )
 (func $17 (; 45 ;) (type $16) (param $0 i32)
  (call $fimport$2)
  (unreachable)
 )
 (func $18 (; 46 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
    (call $fimport$4
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
  (call $fimport$2)
  (unreachable)
 )
 (func $19 (; 47 ;) (type $2) (param $0 i32) (param $1 i32)
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
     (call $fimport$2)
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
    (call $fimport$4
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
 (func $20 (; 48 ;) (type $16) (param $0 i32)
 )
 (func $21 (; 49 ;) (type $16) (param $0 i32)
  (call $fimport$2)
  (unreachable)
 )
 (func $22 (; 50 ;) (type $17) (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (set_global $global$0
   (tee_local $5
    (i32.sub
     (get_global $global$0)
     (i32.const 144)
    )
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i64.ne
        (get_local $1)
        (i64.const 6138663588137709568)
       )
      )
      (br_if $label$3
       (i64.eq
        (tee_local $6
         (i64.load
          (get_local $0)
         )
        )
        (get_local $1)
       )
      )
      (br_if $label$2
       (i64.ne
        (get_local $6)
        (get_local $2)
       )
      )
      (set_local $7
       (i32.add
        (get_local $5)
        (i32.const 92)
       )
      )
      (set_local $8
       (i32.add
        (i32.add
         (get_local $5)
         (i32.const 16)
        )
        (i32.const 32)
       )
      )
      (set_local $9
       (i32.or
        (get_local $5)
        (i32.const 1)
       )
      )
      (set_local $10
       (i32.add
        (get_local $5)
        (i32.const 84)
       )
      )
      (set_local $11
       (i32.add
        (get_local $5)
        (i32.const 56)
       )
      )
      (set_local $12
       (i32.const 0)
      )
      (block $label$5
       (br_if $label$5
        (i32.lt_u
         (tee_local $13
          (call $2
           (i32.const 8245)
          )
         )
         (i32.const 8)
        )
       )
       (set_local $14
        (i32.const 35)
       )
       (br $label$1)
      )
      (set_local $14
       (i32.const 0)
      )
      (br $label$1)
     )
     (set_local $14
      (i32.const 33)
     )
     (br $label$1)
    )
    (set_local $14
     (i32.const 33)
    )
    (br $label$1)
   )
   (set_local $14
    (i32.const 33)
   )
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (block $label$13
          (block $label$14
           (block $label$15
            (block $label$16
             (block $label$17
              (block $label$18
               (block $label$19
                (block $label$20
                 (block $label$21
                  (block $label$22
                   (block $label$23
                    (block $label$24
                     (block $label$25
                      (block $label$26
                       (block $label$27
                        (block $label$28
                         (block $label$29
                          (block $label$30
                           (block $label$31
                            (block $label$32
                             (block $label$33
                              (block $label$34
                               (block $label$35
                                (block $label$36
                                 (block $label$37
                                  (block $label$38
                                   (block $label$39
                                    (block $label$40
                                     (block $label$41
                                      (block $label$42
                                       (block $label$43
                                        (block $label$44
                                         (block $label$45
                                          (block $label$46
                                           (block $label$47
                                            (block $label$48
                                             (block $label$49
                                              (block $label$50
                                               (block $label$51
                                                (block $label$52
                                                 (block $label$53
                                                  (block $label$54
                                                   (block $label$55
                                                    (block $label$56
                                                     (block $label$57
                                                      (block $label$58
                                                       (block $label$59
                                                        (block $label$60
                                                         (block $label$61
                                                          (block $label$62
                                                           (block $label$63
                                                            (block $label$64
                                                             (block $label$65
                                                              (block $label$66
                                                               (block $label$67
                                                                (block $label$68
                                                                 (block $label$69
                                                                  (block $label$70
                                                                   (block $label$71
                                                                    (block $label$72
                                                                     (block $label$73
                                                                      (block $label$74
                                                                       (block $label$75
                                                                        (block $label$76
                                                                         (block $label$77
                                                                          (block $label$78
                                                                           (block $label$79
                                                                            (block $label$80
                                                                             (block $label$81
                                                                              (block $label$82
                                                                               (block $label$83
                                                                                (block $label$84
                                                                                 (block $label$85
                                                                                  (block $label$86
                                                                                   (block $label$87
                                                                                    (block $label$88
                                                                                     (block $label$89
                                                                                      (block $label$90
                                                                                       (block $label$91
                                                                                        (block $label$92
                                                                                         (br_table $label$90 $label$89 $label$88 $label$86 $label$85 $label$84 $label$83 $label$76 $label$75 $label$74 $label$72 $label$71 $label$70 $label$69 $label$68 $label$67 $label$65 $label$64 $label$63 $label$62 $label$61 $label$60 $label$59 $label$58 $label$56 $label$55 $label$54 $label$53 $label$52 $label$51 $label$50 $label$47 $label$46 $label$44 $label$92 $label$91 $label$48 $label$49 $label$57 $label$66 $label$73 $label$43 $label$82 $label$81 $label$80 $label$79 $label$78 $label$77 $label$87 $label$45 $label$45
                                                                                          (get_local $14)
                                                                                         )
                                                                                        )
                                                                                        (set_local $2
                                                                                         (i64.load
                                                                                          (get_local $0)
                                                                                         )
                                                                                        )
                                                                                        (br_if $label$42
                                                                                         (i32.lt_u
                                                                                          (tee_local $13
                                                                                           (call $2
                                                                                            (i32.const 8245)
                                                                                           )
                                                                                          )
                                                                                          (i32.const 8)
                                                                                         )
                                                                                        )
                                                                                        (set_local $14
                                                                                         (i32.const 35)
                                                                                        )
                                                                                        (br $label$6)
                                                                                       )
                                                                                       (call $fimport$1
                                                                                        (i32.const 0)
                                                                                        (i32.const 8250)
                                                                                       )
                                                                                       (br $label$39)
                                                                                      )
                                                                                      (br_if $label$40
                                                                                       (i32.eqz
                                                                                        (get_local $13)
                                                                                       )
                                                                                      )
                                                                                      (set_local $14
                                                                                       (i32.const 1)
                                                                                      )
                                                                                      (br $label$6)
                                                                                     )
                                                                                     (set_local $1
                                                                                      (i64.const 0)
                                                                                     )
                                                                                     (set_local $14
                                                                                      (i32.const 2)
                                                                                     )
                                                                                     (br $label$6)
                                                                                    )
                                                                                    (br_if $label$37
                                                                                     (i32.lt_u
                                                                                      (i32.and
                                                                                       (i32.add
                                                                                        (tee_local $15
                                                                                         (i32.load8_u
                                                                                          (i32.add
                                                                                           (get_local $13)
                                                                                           (i32.const 8244)
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
                                                                                    (set_local $14
                                                                                     (i32.const 48)
                                                                                    )
                                                                                    (br $label$6)
                                                                                   )
                                                                                   (call $fimport$1
                                                                                    (i32.const 0)
                                                                                    (i32.const 8295)
                                                                                   )
                                                                                   (set_local $14
                                                                                    (i32.const 3)
                                                                                   )
                                                                                   (br $label$6)
                                                                                  )
                                                                                  (set_local $1
                                                                                   (i64.or
                                                                                    (i64.shl
                                                                                     (get_local $1)
                                                                                     (i64.const 8)
                                                                                    )
                                                                                    (i64.shr_s
                                                                                     (i64.shl
                                                                                      (i64.extend_u/i32
                                                                                       (get_local $15)
                                                                                      )
                                                                                      (i64.const 56)
                                                                                     )
                                                                                     (i64.const 56)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (br_if $label$38
                                                                                   (tee_local $13
                                                                                    (i32.add
                                                                                     (get_local $13)
                                                                                     (i32.const -1)
                                                                                    )
                                                                                   )
                                                                                  )
                                                                                  (set_local $14
                                                                                   (i32.const 4)
                                                                                  )
                                                                                  (br $label$6)
                                                                                 )
                                                                                 (set_local $6
                                                                                  (i64.shl
                                                                                   (get_local $1)
                                                                                   (i64.const 8)
                                                                                  )
                                                                                 )
                                                                                 (set_local $14
                                                                                  (i32.const 5)
                                                                                 )
                                                                                 (br $label$6)
                                                                                )
                                                                                (set_local $1
                                                                                 (i64.shr_u
                                                                                  (get_local $6)
                                                                                  (i64.const 8)
                                                                                 )
                                                                                )
                                                                                (set_local $16
                                                                                 (i64.or
                                                                                  (get_local $6)
                                                                                  (i64.const 4)
                                                                                 )
                                                                                )
                                                                                (set_local $13
                                                                                 (i32.const 0)
                                                                                )
                                                                                (set_local $14
                                                                                 (i32.const 6)
                                                                                )
                                                                                (br $label$6)
                                                                               )
                                                                               (br_if $label$32
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
                                                                               (set_local $14
                                                                                (i32.const 42)
                                                                               )
                                                                               (br $label$6)
                                                                              )
                                                                              (set_local $6
                                                                               (i64.shr_u
                                                                                (get_local $1)
                                                                                (i64.const 8)
                                                                               )
                                                                              )
                                                                              (br_if $label$8
                                                                               (i64.eq
                                                                                (i64.and
                                                                                 (get_local $1)
                                                                                 (i64.const 65280)
                                                                                )
                                                                                (i64.const 0)
                                                                               )
                                                                              )
                                                                              (set_local $14
                                                                               (i32.const 43)
                                                                              )
                                                                              (br $label$6)
                                                                             )
                                                                             (set_local $1
                                                                              (get_local $6)
                                                                             )
                                                                             (set_local $13
                                                                              (i32.add
                                                                               (tee_local $15
                                                                                (get_local $13)
                                                                               )
                                                                               (i32.const 1)
                                                                              )
                                                                             )
                                                                             (br_if $label$34
                                                                              (i32.lt_s
                                                                               (get_local $15)
                                                                               (i32.const 6)
                                                                              )
                                                                             )
                                                                             (br $label$33)
                                                                            )
                                                                            (set_local $1
                                                                             (get_local $6)
                                                                            )
                                                                            (set_local $14
                                                                             (i32.const 45)
                                                                            )
                                                                            (br $label$6)
                                                                           )
                                                                           (br_if $label$31
                                                                            (i64.ne
                                                                             (i64.and
                                                                              (get_local $1)
                                                                              (i64.const 65280)
                                                                             )
                                                                             (i64.const 0)
                                                                            )
                                                                           )
                                                                           (set_local $14
                                                                            (i32.const 46)
                                                                           )
                                                                           (br $label$6)
                                                                          )
                                                                          (set_local $1
                                                                           (i64.shr_u
                                                                            (get_local $1)
                                                                            (i64.const 8)
                                                                           )
                                                                          )
                                                                          (set_local $15
                                                                           (i32.lt_s
                                                                            (get_local $13)
                                                                            (i32.const 6)
                                                                           )
                                                                          )
                                                                          (set_local $13
                                                                           (tee_local $17
                                                                            (i32.add
                                                                             (get_local $13)
                                                                             (i32.const 1)
                                                                            )
                                                                           )
                                                                          )
                                                                          (br_if $label$7
                                                                           (get_local $15)
                                                                          )
                                                                          (set_local $14
                                                                           (i32.const 47)
                                                                          )
                                                                          (br $label$6)
                                                                         )
                                                                         (set_local $13
                                                                          (i32.add
                                                                           (get_local $17)
                                                                           (i32.const 1)
                                                                          )
                                                                         )
                                                                         (br_if $label$36
                                                                          (i32.lt_s
                                                                           (get_local $17)
                                                                           (i32.const 6)
                                                                          )
                                                                         )
                                                                         (br $label$35)
                                                                        )
                                                                        (call $fimport$1
                                                                         (i32.const 0)
                                                                         (i32.const 8348)
                                                                        )
                                                                        (set_local $14
                                                                         (i32.const 8)
                                                                        )
                                                                        (br $label$6)
                                                                       )
                                                                       (i32.store
                                                                        (tee_local $15
                                                                         (i32.add
                                                                          (get_local $5)
                                                                          (i32.const 8)
                                                                         )
                                                                        )
                                                                        (i32.const 0)
                                                                       )
                                                                       (i64.store
                                                                        (get_local $5)
                                                                        (i64.const 0)
                                                                       )
                                                                       (br_if $label$30
                                                                        (i32.ge_u
                                                                         (tee_local $13
                                                                          (call $2
                                                                           (i32.const 8249)
                                                                          )
                                                                         )
                                                                         (i32.const -16)
                                                                        )
                                                                       )
                                                                       (set_local $14
                                                                        (i32.const 9)
                                                                       )
                                                                       (br $label$6)
                                                                      )
                                                                      (br_if $label$29
                                                                       (i32.ge_u
                                                                        (get_local $13)
                                                                        (i32.const 11)
                                                                       )
                                                                      )
                                                                      (set_local $14
                                                                       (i32.const 40)
                                                                      )
                                                                      (br $label$6)
                                                                     )
                                                                     (i32.store8
                                                                      (get_local $5)
                                                                      (i32.shl
                                                                       (get_local $13)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                     (set_local $17
                                                                      (get_local $9)
                                                                     )
                                                                     (br_if $label$27
                                                                      (get_local $13)
                                                                     )
                                                                     (br $label$28)
                                                                    )
                                                                    (i32.store
                                                                     (get_local $15)
                                                                     (tee_local $17
                                                                      (call $9
                                                                       (tee_local $18
                                                                        (i32.and
                                                                         (i32.add
                                                                          (get_local $13)
                                                                          (i32.const 16)
                                                                         )
                                                                         (i32.const -16)
                                                                        )
                                                                       )
                                                                      )
                                                                     )
                                                                    )
                                                                    (i32.store
                                                                     (get_local $5)
                                                                     (i32.or
                                                                      (get_local $18)
                                                                      (i32.const 1)
                                                                     )
                                                                    )
                                                                    (i32.store offset=4
                                                                     (get_local $5)
                                                                     (get_local $13)
                                                                    )
                                                                    (set_local $14
                                                                     (i32.const 11)
                                                                    )
                                                                    (br $label$6)
                                                                   )
                                                                   (drop
                                                                    (call $fimport$4
                                                                     (get_local $17)
                                                                     (i32.const 8249)
                                                                     (get_local $13)
                                                                    )
                                                                   )
                                                                   (set_local $14
                                                                    (i32.const 12)
                                                                   )
                                                                   (br $label$6)
                                                                  )
                                                                  (i32.store8
                                                                   (i32.add
                                                                    (get_local $17)
                                                                    (get_local $13)
                                                                   )
                                                                   (i32.const 0)
                                                                  )
                                                                  (i64.store
                                                                   (i32.add
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 16)
                                                                    )
                                                                    (i32.const 8)
                                                                   )
                                                                   (i64.const 6022241043578428720)
                                                                  )
                                                                  (i64.store
                                                                   (i32.add
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 16)
                                                                    )
                                                                    (i32.const 16)
                                                                   )
                                                                   (i64.const 1)
                                                                  )
                                                                  (i64.store
                                                                   (i32.add
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 16)
                                                                    )
                                                                    (i32.const 24)
                                                                   )
                                                                   (get_local $16)
                                                                  )
                                                                  (i64.store
                                                                   (i32.add
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 64)
                                                                    )
                                                                    (i32.const 8)
                                                                   )
                                                                   (i64.const -3617168760277827584)
                                                                  )
                                                                  (i64.store
                                                                   (tee_local $17
                                                                    (i32.add
                                                                     (i32.add
                                                                      (get_local $5)
                                                                      (i32.const 64)
                                                                     )
                                                                     (i32.const 16)
                                                                    )
                                                                   )
                                                                   (i64.const 0)
                                                                  )
                                                                  (i32.store
                                                                   (tee_local $18
                                                                    (i32.add
                                                                     (i32.add
                                                                      (get_local $5)
                                                                      (i32.const 64)
                                                                     )
                                                                     (i32.const 24)
                                                                    )
                                                                   )
                                                                   (i32.const 0)
                                                                  )
                                                                  (i64.store align=4
                                                                   (get_local $8)
                                                                   (i64.load
                                                                    (get_local $5)
                                                                   )
                                                                  )
                                                                  (i32.store
                                                                   (i32.add
                                                                    (get_local $8)
                                                                    (i32.const 8)
                                                                   )
                                                                   (i32.load
                                                                    (get_local $15)
                                                                   )
                                                                  )
                                                                  (i32.store
                                                                   (get_local $15)
                                                                   (i32.const 0)
                                                                  )
                                                                  (i64.store offset=16
                                                                   (get_local $5)
                                                                   (get_local $2)
                                                                  )
                                                                  (i64.store offset=64
                                                                   (get_local $5)
                                                                   (i64.const 6138663591592764928)
                                                                  )
                                                                  (i64.store
                                                                   (get_local $5)
                                                                   (i64.const 0)
                                                                  )
                                                                  (i32.store
                                                                   (get_local $17)
                                                                   (tee_local $13
                                                                    (call $9
                                                                     (i32.const 16)
                                                                    )
                                                                   )
                                                                  )
                                                                  (i64.store
                                                                   (get_local $13)
                                                                   (get_local $2)
                                                                  )
                                                                  (i64.store offset=8
                                                                   (get_local $13)
                                                                   (i64.const 3617214756542218240)
                                                                  )
                                                                  (i64.store align=4
                                                                   (get_local $7)
                                                                   (i64.const 0)
                                                                  )
                                                                  (i32.store
                                                                   (i32.add
                                                                    (i32.add
                                                                     (get_local $5)
                                                                     (i32.const 64)
                                                                    )
                                                                    (i32.const 36)
                                                                   )
                                                                   (i32.const 0)
                                                                  )
                                                                  (i32.store
                                                                   (get_local $18)
                                                                   (tee_local $13
                                                                    (i32.add
                                                                     (get_local $13)
                                                                     (i32.const 16)
                                                                    )
                                                                   )
                                                                  )
                                                                  (i32.store
                                                                   (get_local $10)
                                                                   (get_local $13)
                                                                  )
                                                                  (set_local $13
                                                                   (i32.add
                                                                    (tee_local $18
                                                                     (select
                                                                      (i32.load
                                                                       (i32.add
                                                                        (i32.add
                                                                         (get_local $5)
                                                                         (i32.const 16)
                                                                        )
                                                                        (i32.const 36)
                                                                       )
                                                                      )
                                                                      (i32.shr_u
                                                                       (tee_local $13
                                                                        (i32.load8_u
                                                                         (get_local $8)
                                                                        )
                                                                       )
                                                                       (i32.const 1)
                                                                      )
                                                                      (i32.and
                                                                       (get_local $13)
                                                                       (i32.const 1)
                                                                      )
                                                                     )
                                                                    )
                                                                    (i32.const 32)
                                                                   )
                                                                  )
                                                                  (set_local $1
                                                                   (i64.extend_u/i32
                                                                    (get_local $18)
                                                                   )
                                                                  )
                                                                  (set_local $14
                                                                   (i32.const 13)
                                                                  )
                                                                  (br $label$6)
                                                                 )
                                                                 (set_local $13
                                                                  (i32.add
                                                                   (get_local $13)
                                                                   (i32.const 1)
                                                                  )
                                                                 )
                                                                 (br_if $label$26
                                                                  (i64.ne
                                                                   (tee_local $1
                                                                    (i64.shr_u
                                                                     (get_local $1)
                                                                     (i64.const 7)
                                                                    )
                                                                   )
                                                                   (i64.const 0)
                                                                  )
                                                                 )
                                                                 (set_local $14
                                                                  (i32.const 14)
                                                                 )
                                                                 (br $label$6)
                                                                )
                                                                (br_if $label$25
                                                                 (i32.eqz
                                                                  (get_local $13)
                                                                 )
                                                                )
                                                                (set_local $14
                                                                 (i32.const 15)
                                                                )
                                                                (br $label$6)
                                                               )
                                                               (call $23
                                                                (get_local $7)
                                                                (get_local $13)
                                                               )
                                                               (set_local $18
                                                                (i32.load
                                                                 (i32.add
                                                                  (i32.add
                                                                   (get_local $5)
                                                                   (i32.const 64)
                                                                  )
                                                                  (i32.const 32)
                                                                 )
                                                                )
                                                               )
                                                               (set_local $13
                                                                (i32.load
                                                                 (get_local $7)
                                                                )
                                                               )
                                                               (br $label$24)
                                                              )
                                                              (set_local $18
                                                               (i32.const 0)
                                                              )
                                                              (set_local $13
                                                               (i32.const 0)
                                                              )
                                                              (set_local $14
                                                               (i32.const 16)
                                                              )
                                                              (br $label$6)
                                                             )
                                                             (i32.store
                                                              (tee_local $19
                                                               (i32.add
                                                                (i32.add
                                                                 (get_local $5)
                                                                 (i32.const 120)
                                                                )
                                                                (i32.const 8)
                                                               )
                                                              )
                                                              (get_local $18)
                                                             )
                                                             (i32.store offset=124
                                                              (get_local $5)
                                                              (get_local $13)
                                                             )
                                                             (i32.store offset=120
                                                              (get_local $5)
                                                              (get_local $13)
                                                             )
                                                             (i32.store offset=136
                                                              (get_local $5)
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 120)
                                                              )
                                                             )
                                                             (i32.store offset=104
                                                              (get_local $5)
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 16)
                                                              )
                                                             )
                                                             (call $24
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 104)
                                                              )
                                                              (i32.add
                                                               (get_local $5)
                                                               (i32.const 136)
                                                              )
                                                             )
                                                             (i32.store
                                                              (i32.add
                                                               (i32.add
                                                                (get_local $5)
                                                                (i32.const 104)
                                                               )
                                                               (i32.const 8)
                                                              )
                                                              (i32.const 0)
                                                             )
                                                             (i64.store offset=104
                                                              (get_local $5)
                                                              (i64.const 0)
                                                             )
                                                             (set_local $13
                                                              (i32.const 16)
                                                             )
                                                             (set_local $1
                                                              (i64.extend_u/i32
                                                               (i32.shr_s
                                                                (tee_local $21
                                                                 (i32.sub
                                                                  (tee_local $18
                                                                   (i32.load
                                                                    (get_local $10)
                                                                   )
                                                                  )
                                                                  (tee_local $20
                                                                   (i32.load
                                                                    (i32.add
                                                                     (i32.add
                                                                      (get_local $5)
                                                                      (i32.const 64)
                                                                     )
                                                                     (i32.const 16)
                                                                    )
                                                                   )
                                                                  )
                                                                 )
                                                                )
                                                                (i32.const 4)
                                                               )
                                                              )
                                                             )
                                                             (set_local $14
                                                              (i32.const 17)
                                                             )
                                                             (br $label$6)
                                                            )
                                                            (set_local $13
                                                             (i32.add
                                                              (get_local $13)
                                                              (i32.const 1)
                                                             )
                                                            )
                                                            (br_if $label$23
                                                             (i64.ne
                                                              (tee_local $1
                                                               (i64.shr_u
                                                                (get_local $1)
                                                                (i64.const 7)
                                                               )
                                                              )
                                                              (i64.const 0)
                                                             )
                                                            )
                                                            (set_local $14
                                                             (i32.const 18)
                                                            )
                                                            (br $label$6)
                                                           )
                                                           (br_if $label$22
                                                            (i32.eq
                                                             (get_local $20)
                                                             (get_local $18)
                                                            )
                                                           )
                                                           (set_local $14
                                                            (i32.const 19)
                                                           )
                                                           (br $label$6)
                                                          )
                                                          (set_local $13
                                                           (i32.add
                                                            (i32.and
                                                             (get_local $21)
                                                             (i32.const -16)
                                                            )
                                                            (get_local $13)
                                                           )
                                                          )
                                                          (set_local $14
                                                           (i32.const 20)
                                                          )
                                                          (br $label$6)
                                                         )
                                                         (set_local $13
                                                          (i32.sub
                                                           (i32.add
                                                            (get_local $13)
                                                            (tee_local $18
                                                             (i32.load
                                                              (tee_local $21
                                                               (i32.add
                                                                (i32.add
                                                                 (get_local $5)
                                                                 (i32.const 64)
                                                                )
                                                                (i32.const 32)
                                                               )
                                                              )
                                                             )
                                                            )
                                                           )
                                                           (tee_local $20
                                                            (i32.load
                                                             (get_local $7)
                                                            )
                                                           )
                                                          )
                                                         )
                                                         (set_local $1
                                                          (i64.extend_u/i32
                                                           (i32.sub
                                                            (get_local $18)
                                                            (get_local $20)
                                                           )
                                                          )
                                                         )
                                                         (set_local $14
                                                          (i32.const 21)
                                                         )
                                                         (br $label$6)
                                                        )
                                                        (set_local $13
                                                         (i32.add
                                                          (get_local $13)
                                                          (i32.const 1)
                                                         )
                                                        )
                                                        (br_if $label$21
                                                         (i64.ne
                                                          (tee_local $1
                                                           (i64.shr_u
                                                            (get_local $1)
                                                            (i64.const 7)
                                                           )
                                                          )
                                                          (i64.const 0)
                                                         )
                                                        )
                                                        (set_local $14
                                                         (i32.const 22)
                                                        )
                                                        (br $label$6)
                                                       )
                                                       (br_if $label$20
                                                        (i32.eqz
                                                         (get_local $13)
                                                        )
                                                       )
                                                       (set_local $14
                                                        (i32.const 23)
                                                       )
                                                       (br $label$6)
                                                      )
                                                      (call $23
                                                       (i32.add
                                                        (get_local $5)
                                                        (i32.const 104)
                                                       )
                                                       (get_local $13)
                                                      )
                                                      (set_local $18
                                                       (i32.load offset=108
                                                        (get_local $5)
                                                       )
                                                      )
                                                      (set_local $13
                                                       (i32.load offset=104
                                                        (get_local $5)
                                                       )
                                                      )
                                                      (br $label$19)
                                                     )
                                                     (set_local $18
                                                      (i32.const 0)
                                                     )
                                                     (set_local $13
                                                      (i32.const 0)
                                                     )
                                                     (set_local $14
                                                      (i32.const 24)
                                                     )
                                                     (br $label$6)
                                                    )
                                                    (i32.store
                                                     (get_local $19)
                                                     (get_local $18)
                                                    )
                                                    (i32.store offset=124
                                                     (get_local $5)
                                                     (get_local $13)
                                                    )
                                                    (i32.store offset=120
                                                     (get_local $5)
                                                     (get_local $13)
                                                    )
                                                    (drop
                                                     (call $25
                                                      (i32.add
                                                       (get_local $5)
                                                       (i32.const 120)
                                                      )
                                                      (i32.add
                                                       (get_local $5)
                                                       (i32.const 64)
                                                      )
                                                     )
                                                    )
                                                    (call $fimport$5
                                                     (tee_local $13
                                                      (i32.load offset=104
                                                       (get_local $5)
                                                      )
                                                     )
                                                     (i32.sub
                                                      (i32.load offset=108
                                                       (get_local $5)
                                                      )
                                                      (get_local $13)
                                                     )
                                                    )
                                                    (br_if $label$18
                                                     (i32.eqz
                                                      (tee_local $13
                                                       (i32.load offset=104
                                                        (get_local $5)
                                                       )
                                                      )
                                                     )
                                                    )
                                                    (set_local $14
                                                     (i32.const 25)
                                                    )
                                                    (br $label$6)
                                                   )
                                                   (i32.store offset=108
                                                    (get_local $5)
                                                    (get_local $13)
                                                   )
                                                   (call $11
                                                    (get_local $13)
                                                   )
                                                   (set_local $14
                                                    (i32.const 26)
                                                   )
                                                   (br $label$6)
                                                  )
                                                  (br_if $label$17
                                                   (i32.eqz
                                                    (tee_local $13
                                                     (i32.load
                                                      (get_local $7)
                                                     )
                                                    )
                                                   )
                                                  )
                                                  (set_local $14
                                                   (i32.const 27)
                                                  )
                                                  (br $label$6)
                                                 )
                                                 (i32.store
                                                  (get_local $21)
                                                  (get_local $13)
                                                 )
                                                 (call $11
                                                  (get_local $13)
                                                 )
                                                 (set_local $14
                                                  (i32.const 28)
                                                 )
                                                 (br $label$6)
                                                )
                                                (br_if $label$16
                                                 (i32.eqz
                                                  (tee_local $13
                                                   (i32.load
                                                    (get_local $17)
                                                   )
                                                  )
                                                 )
                                                )
                                                (set_local $14
                                                 (i32.const 29)
                                                )
                                                (br $label$6)
                                               )
                                               (i32.store
                                                (get_local $10)
                                                (get_local $13)
                                               )
                                               (call $11
                                                (get_local $13)
                                               )
                                               (set_local $14
                                                (i32.const 30)
                                               )
                                               (br $label$6)
                                              )
                                              (br_if $label$15
                                               (i32.and
                                                (i32.load8_u
                                                 (get_local $8)
                                                )
                                                (i32.const 1)
                                               )
                                              )
                                              (set_local $14
                                               (i32.const 37)
                                              )
                                              (br $label$6)
                                             )
                                             (br_if $label$14
                                              (i32.and
                                               (i32.load8_u
                                                (get_local $5)
                                               )
                                               (i32.const 1)
                                              )
                                             )
                                             (set_local $14
                                              (i32.const 36)
                                             )
                                             (br $label$6)
                                            )
                                            (br_if $label$12
                                             (i32.le_u
                                              (tee_local $12
                                               (i32.add
                                                (get_local $12)
                                                (i32.const 1)
                                               )
                                              )
                                              (i32.const 199)
                                             )
                                            )
                                            (br $label$11)
                                           )
                                           (call $11
                                            (i32.load
                                             (get_local $11)
                                            )
                                           )
                                           (br_if $label$13
                                            (i32.eqz
                                             (i32.and
                                              (i32.load8_u
                                               (get_local $5)
                                              )
                                              (i32.const 1)
                                             )
                                            )
                                           )
                                           (set_local $14
                                            (i32.const 32)
                                           )
                                           (br $label$6)
                                          )
                                          (call $11
                                           (i32.load
                                            (get_local $15)
                                           )
                                          )
                                          (br_if $label$10
                                           (i32.le_u
                                            (tee_local $12
                                             (i32.add
                                              (get_local $12)
                                              (i32.const 1)
                                             )
                                            )
                                            (i32.const 199)
                                           )
                                          )
                                          (br $label$9)
                                         )
                                         (set_local $6
                                          (i64.const 0)
                                         )
                                         (br $label$41)
                                        )
                                        (set_global $global$0
                                         (i32.add
                                          (get_local $5)
                                          (i32.const 144)
                                         )
                                        )
                                        (return)
                                       )
                                       (call $17
                                        (get_local $5)
                                       )
                                       (unreachable)
                                      )
                                      (set_local $14
                                       (i32.const 0)
                                      )
                                      (br $label$6)
                                     )
                                     (set_local $14
                                      (i32.const 5)
                                     )
                                     (br $label$6)
                                    )
                                    (set_local $14
                                     (i32.const 49)
                                    )
                                    (br $label$6)
                                   )
                                   (set_local $14
                                    (i32.const 1)
                                   )
                                   (br $label$6)
                                  )
                                  (set_local $14
                                   (i32.const 2)
                                  )
                                  (br $label$6)
                                 )
                                 (set_local $14
                                  (i32.const 3)
                                 )
                                 (br $label$6)
                                )
                                (set_local $14
                                 (i32.const 6)
                                )
                                (br $label$6)
                               )
                               (set_local $14
                                (i32.const 8)
                               )
                               (br $label$6)
                              )
                              (set_local $14
                               (i32.const 6)
                              )
                              (br $label$6)
                             )
                             (set_local $14
                              (i32.const 8)
                             )
                             (br $label$6)
                            )
                            (set_local $14
                             (i32.const 7)
                            )
                            (br $label$6)
                           )
                           (set_local $14
                            (i32.const 7)
                           )
                           (br $label$6)
                          )
                          (set_local $14
                           (i32.const 41)
                          )
                          (br $label$6)
                         )
                         (set_local $14
                          (i32.const 10)
                         )
                         (br $label$6)
                        )
                        (set_local $14
                         (i32.const 12)
                        )
                        (br $label$6)
                       )
                       (set_local $14
                        (i32.const 11)
                       )
                       (br $label$6)
                      )
                      (set_local $14
                       (i32.const 13)
                      )
                      (br $label$6)
                     )
                     (set_local $14
                      (i32.const 39)
                     )
                     (br $label$6)
                    )
                    (set_local $14
                     (i32.const 16)
                    )
                    (br $label$6)
                   )
                   (set_local $14
                    (i32.const 17)
                   )
                   (br $label$6)
                  )
                  (set_local $14
                   (i32.const 20)
                  )
                  (br $label$6)
                 )
                 (set_local $14
                  (i32.const 21)
                 )
                 (br $label$6)
                )
                (set_local $14
                 (i32.const 38)
                )
                (br $label$6)
               )
               (set_local $14
                (i32.const 24)
               )
               (br $label$6)
              )
              (set_local $14
               (i32.const 26)
              )
              (br $label$6)
             )
             (set_local $14
              (i32.const 28)
             )
             (br $label$6)
            )
            (set_local $14
             (i32.const 30)
            )
            (br $label$6)
           )
           (set_local $14
            (i32.const 31)
           )
           (br $label$6)
          )
          (set_local $14
           (i32.const 32)
          )
          (br $label$6)
         )
         (set_local $14
          (i32.const 36)
         )
         (br $label$6)
        )
        (set_local $14
         (i32.const 34)
        )
        (br $label$6)
       )
       (set_local $14
        (i32.const 33)
       )
       (br $label$6)
      )
      (set_local $14
       (i32.const 34)
      )
      (br $label$6)
     )
     (set_local $14
      (i32.const 33)
     )
     (br $label$6)
    )
    (set_local $14
     (i32.const 44)
    )
    (br $label$6)
   )
   (set_local $14
    (i32.const 45)
   )
   (br $label$6)
  )
 )
 (func $23 (; 51 ;) (type $2) (param $0 i32) (param $1 i32)
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
    (call $21
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
     (call $fimport$4
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
 (func $24 (; 52 ;) (type $2) (param $0 i32) (param $1 i32)
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
    (i32.gt_s
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
    (i32.const 8368)
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
   (call $fimport$4
    (get_local $5)
    (get_local $3)
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
   (i32.add
    (tee_local $5
     (i32.load
      (get_local $0)
     )
    )
    (i32.const 8)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_s
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $0
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
    (i32.const 8368)
   )
   (set_local $0
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $0)
    (get_local $3)
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
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.gt_s
     (i32.sub
      (i32.load offset=8
       (tee_local $4
        (i32.load
         (get_local $1)
        )
       )
      )
      (tee_local $0
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
    (i32.const 8368)
   )
   (set_local $0
    (i32.load
     (i32.add
      (get_local $4)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $0)
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $4)
     (i32.const 4)
    )
   )
   (tee_local $3
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $5)
     (i32.const 24)
    )
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.gt_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $4)
        (i32.const 8)
       )
      )
      (get_local $3)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8368)
   )
   (set_local $3
    (i32.load
     (get_local $0)
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $3)
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $0)
   (i32.add
    (i32.load
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (drop
   (call $32
    (i32.load
     (get_local $1)
    )
    (i32.add
     (get_local $5)
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
 (func $25 (; 53 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$1
   (br_if $label$1
    (i32.gt_s
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $2
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
    (i32.const 8368)
   )
   (set_local $2
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $2
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (tee_local $3
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 8)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_s
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $3)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8368)
   )
   (set_local $3
    (i32.load
     (get_local $2)
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $3)
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $2)
   (i32.add
    (i32.load
     (get_local $2)
    )
    (i32.const 8)
   )
  )
  (call $31
   (call $30
    (get_local $0)
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
   )
   (i32.add
    (get_local $1)
    (i32.const 28)
   )
  )
 )
 (func $26 (; 54 ;) (type $18) (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (tee_local $2
    (get_global $global$0)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $4
      (call $fimport$25)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.lt_u
       (get_local $4)
       (i32.const 512)
      )
     )
     (set_local $2
      (call $3
       (get_local $4)
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
    (call $fimport$26
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (call $fimport$0
   (get_local $0)
  )
  (set_global $global$0
   (get_local $3)
  )
 )
 (func $27 (; 55 ;) (type $18) (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 192)
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
         (call $fimport$25)
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
       (call $3
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
    (call $fimport$26
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (i32.store offset=148
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=144
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=152
   (get_local $3)
   (tee_local $5
    (i32.add
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (i64.store offset=136
   (get_local $3)
   (i64.const 0)
  )
  (block $label$5
   (br_if $label$5
    (i32.gt_u
     (get_local $4)
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8374)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 152)
     )
    )
   )
   (set_local $2
    (i32.load offset=148
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 136)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=148
   (get_local $3)
   (tee_local $2
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=128
   (get_local $3)
   (i64.const 0)
  )
  (block $label$6
   (br_if $label$6
    (i32.gt_u
     (i32.sub
      (get_local $5)
      (get_local $2)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8374)
   )
   (set_local $5
    (i32.load
     (i32.add
      (i32.add
       (get_local $3)
       (i32.const 144)
      )
      (i32.const 8)
     )
    )
   )
   (set_local $2
    (i32.load offset=148
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 128)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=148
   (get_local $3)
   (tee_local $2
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=120
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=112
   (get_local $3)
   (i64.const 0)
  )
  (block $label$7
   (br_if $label$7
    (i32.gt_u
     (i32.sub
      (get_local $5)
      (get_local $2)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8374)
   )
   (set_local $5
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 152)
     )
    )
   )
   (set_local $2
    (i32.load offset=148
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 112)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=148
   (get_local $3)
   (tee_local $2
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
   )
  )
  (i64.store offset=64
   (get_local $3)
   (i64.const 0)
  )
  (block $label$8
   (br_if $label$8
    (i32.gt_u
     (i32.sub
      (get_local $5)
      (get_local $2)
     )
     (i32.const 7)
    )
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8374)
   )
   (set_local $2
    (i32.load offset=148
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 64)
    )
    (get_local $2)
    (i32.const 8)
   )
  )
  (i64.store
   (tee_local $5
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 112)
     )
     (i32.const 8)
    )
   )
   (i64.load offset=64
    (get_local $3)
   )
  )
  (i32.store offset=148
   (get_local $3)
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=104
   (get_local $3)
   (i32.const 0)
  )
  (i64.store offset=96
   (get_local $3)
   (i64.const 0)
  )
  (drop
   (call $28
    (i32.add
     (get_local $3)
     (i32.const 144)
    )
    (i32.add
     (get_local $3)
     (i32.const 96)
    )
   )
  )
  (i32.store
   (tee_local $2
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 48)
     )
     (i32.const 8)
    )
   )
   (i32.load
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 144)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=48
   (get_local $3)
   (i64.load offset=144
    (get_local $3)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 160)
     )
     (i32.const 8)
    )
   )
   (i32.load
    (get_local $2)
   )
  )
  (i64.store offset=160
   (get_local $3)
   (i64.load offset=48
    (get_local $3)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $3)
     (i32.const 176)
    )
    (i32.const 8)
   )
   (tee_local $2
    (i32.load
     (get_local $4)
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $3)
    (i32.const 88)
   )
   (get_local $2)
  )
  (i64.store offset=64
   (get_local $3)
   (get_local $0)
  )
  (i64.store offset=72
   (get_local $3)
   (get_local $1)
  )
  (i64.store offset=80
   (get_local $3)
   (tee_local $0
    (i64.load offset=160
     (get_local $3)
    )
   )
  )
  (i64.store offset=176
   (get_local $3)
   (get_local $0)
  )
  (i64.store
   (tee_local $4
    (i32.add
     (i32.add
      (get_local $3)
      (i32.const 32)
     )
     (i32.const 8)
    )
   )
   (i64.load
    (get_local $5)
   )
  )
  (i64.store offset=32
   (get_local $3)
   (i64.load offset=112
    (get_local $3)
   )
  )
  (set_local $0
   (i64.load offset=128
    (get_local $3)
   )
  )
  (set_local $1
   (i64.load offset=136
    (get_local $3)
   )
  )
  (set_local $2
   (call $18
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
    (i32.add
     (get_local $3)
     (i32.const 96)
    )
   )
  )
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
   (i64.load
    (get_local $4)
   )
  )
  (i64.store
   (get_local $3)
   (i64.load offset=32
    (get_local $3)
   )
  )
  (call $22
   (i32.add
    (get_local $3)
    (i32.const 64)
   )
   (get_local $1)
   (get_local $0)
   (get_local $3)
   (get_local $3)
  )
  (block $label$9
   (block $label$10
    (block $label$11
     (br_if $label$11
      (i32.and
       (i32.load8_u
        (get_local $2)
       )
       (i32.const 1)
      )
     )
     (br_if $label$10
      (i32.and
       (i32.load8_u offset=96
        (get_local $3)
       )
       (i32.const 1)
      )
     )
     (br $label$9)
    )
    (call $11
     (i32.load offset=8
      (get_local $2)
     )
    )
    (br_if $label$9
     (i32.eqz
      (i32.and
       (i32.load8_u offset=96
        (get_local $3)
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
      (i32.const 104)
     )
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 192)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 192)
   )
  )
 )
 (func $28 (; 56 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (call $29
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
       (call $19
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
     (call $19
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
    (call $17
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
 (func $29 (; 57 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 8379)
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
    (call $23
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
    (i32.const 8374)
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
   (call $fimport$4
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
 (func $30 (; 58 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $5)
       )
       (get_local $4)
      )
      (i32.const 0)
     )
    )
    (call $fimport$1
     (i32.const 0)
     (i32.const 8368)
    )
    (set_local $4
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
   )
   (drop
    (call $fimport$4
     (get_local $4)
     (i32.add
      (get_local $2)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (tee_local $4
     (i32.add
      (get_local $0)
      (i32.const 4)
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
   (br_if $label$1
    (get_local $7)
   )
  )
  (block $label$3
   (br_if $label$3
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
   (loop $label$4
    (block $label$5
     (br_if $label$5
      (i32.gt_s
       (i32.sub
        (i32.load
         (get_local $5)
        )
        (get_local $4)
       )
       (i32.const 7)
      )
     )
     (call $fimport$1
      (i32.const 0)
      (i32.const 8368)
     )
     (set_local $4
      (i32.load
       (get_local $6)
      )
     )
    )
    (drop
     (call $fimport$4
      (get_local $4)
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
    (block $label$6
     (br_if $label$6
      (i32.gt_s
       (i32.sub
        (i32.load
         (get_local $5)
        )
        (get_local $4)
       )
       (i32.const 7)
      )
     )
     (call $fimport$1
      (i32.const 0)
      (i32.const 8368)
     )
     (set_local $4
      (i32.load
       (get_local $6)
      )
     )
    )
    (drop
     (call $fimport$4
      (get_local $4)
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
    (br_if $label$4
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
 (func $31 (; 59 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $5)
       )
       (get_local $4)
      )
      (i32.const 0)
     )
    )
    (call $fimport$1
     (i32.const 0)
     (i32.const 8368)
    )
    (set_local $4
     (i32.load
      (get_local $6)
     )
    )
   )
   (drop
    (call $fimport$4
     (get_local $4)
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
  (block $label$3
   (br_if $label$3
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
   )
   (call $fimport$1
    (i32.const 0)
    (i32.const 8368)
   )
   (set_local $4
    (i32.load
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $4)
    (get_local $7)
    (get_local $6)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
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
 (func $32 (; 60 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
  (set_local $3
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
   (block $label$2
    (br_if $label$2
     (i32.gt_s
      (i32.sub
       (i32.load
        (get_local $5)
       )
       (get_local $3)
      )
      (i32.const 0)
     )
    )
    (call $fimport$1
     (i32.const 0)
     (i32.const 8368)
    )
    (set_local $3
     (i32.load
      (get_local $6)
     )
    )
   )
   (drop
    (call $fimport$4
     (get_local $3)
     (i32.add
      (get_local $2)
      (i32.const 15)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (get_local $6)
    (tee_local $3
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
  (block $label$3
   (br_if $label$3
    (i32.eqz
     (tee_local $6
      (select
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.shr_u
        (tee_local $6
         (i32.load8_u
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (tee_local $7
        (i32.and
         (get_local $6)
         (i32.const 1)
        )
       )
      )
     )
    )
   )
   (set_local $7
    (select
     (i32.load offset=8
      (get_local $1)
     )
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
     (get_local $7)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.ge_s
      (i32.sub
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
       )
       (get_local $3)
      )
      (get_local $6)
     )
    )
    (call $fimport$1
     (i32.const 0)
     (i32.const 8368)
    )
    (set_local $3
     (i32.load
      (i32.add
       (get_local $0)
       (i32.const 4)
      )
     )
    )
   )
   (drop
    (call $fimport$4
     (get_local $3)
     (get_local $7)
     (get_local $6)
    )
   )
   (i32.store
    (tee_local $3
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
    )
    (i32.add
     (i32.load
      (get_local $3)
     )
     (get_local $6)
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
)

