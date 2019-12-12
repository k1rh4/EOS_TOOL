(module
 (type $0 (func))
 (type $1 (func (param i32 i32)))
 (type $2 (func (param i32 i32 i32) (result i32)))
 (type $3 (func (param i64)))
 (type $4 (func (param i32 f32)))
 (type $5 (func (param i32 i64 i64 i64 i64)))
 (type $6 (func (param i32 f64)))
 (type $7 (func (param i64 i64 i64 i64) (result i32)))
 (type $8 (func (param i64 i64) (result f64)))
 (type $9 (func (param i64 i64) (result f32)))
 (type $10 (func (param i64 i64) (result i32)))
 (type $11 (func (result i32)))
 (type $12 (func (param i32 i32) (result i32)))
 (type $13 (func (param i32) (result i32)))
 (type $14 (func (param i32)))
 (type $15 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $16 (func (param i64 i64 i64)))
 (type $17 (func (param i32 i64 i64)))
 (import "env" "eosio_assert" (func $fimport$0 (param i32 i32)))
 (import "env" "memset" (func $fimport$1 (param i32 i32 i32) (result i32)))
 (import "env" "require_auth" (func $fimport$2 (param i64)))
 (import "env" "abort" (func $fimport$3))
 (import "env" "memcpy" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $fimport$5 (param i32 i32 i32) (result i32)))
 (import "env" "__extendsftf2" (func $fimport$6 (param i32 f32)))
 (import "env" "__floatsitf" (func $fimport$7 (param i32 i32)))
 (import "env" "__multf3" (func $fimport$8 (param i32 i64 i64 i64 i64)))
 (import "env" "__floatunsitf" (func $fimport$9 (param i32 i32)))
 (import "env" "__divtf3" (func $fimport$10 (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $fimport$11 (param i32 i64 i64 i64 i64)))
 (import "env" "__extenddftf2" (func $fimport$12 (param i32 f64)))
 (import "env" "__eqtf2" (func $fimport$13 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__letf2" (func $fimport$14 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__netf2" (func $fimport$15 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__subtf3" (func $fimport$16 (param i32 i64 i64 i64 i64)))
 (import "env" "__trunctfdf2" (func $fimport$17 (param i64 i64) (result f64)))
 (import "env" "__getf2" (func $fimport$18 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfsf2" (func $fimport$19 (param i64 i64) (result f32)))
 (import "env" "prints_l" (func $fimport$20 (param i32 i32)))
 (import "env" "__unordtf2" (func $fimport$21 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__fixunstfsi" (func $fimport$22 (param i64 i64) (result i32)))
 (import "env" "__fixtfsi" (func $fimport$23 (param i64 i64) (result i32)))
 (import "env" "action_data_size" (func $fimport$24 (result i32)))
 (import "env" "read_action_data" (func $fimport$25 (param i32 i32) (result i32)))
 (import "env" "send_inline" (func $fimport$26 (param i32 i32)))
 (memory $0 1)
 (data (i32.const 8220) "failed to allocate pages\00Invalid quantity\00")
 (data (i32.const 8262) "#TO#\00")
 (data (i32.const 8267) "memo must be empty or to in exchange\00")
 (data (i32.const 8304) "Exchange\00")
 (data (i32.const 8313) ",\00")
 (data (i32.const 8315) "Invalid symbol1\00")
 (data (i32.const 8331) "Invalid symbol2\00")
 (data (i32.const 8347) "get\00")
 (data (i32.const 8351) "read\00")
 (data (i32.const 8356) "string is too long to be a valid name\00")
 (data (i32.const 8394) "thirteenth character in name cannot be a letter that comes after j\00")
 (data (i32.const 8461) "character is not in allowed character set for names\00")
 (data (i32.const 8513) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 8562) "invalid symbol name\00")
 (data (i32.const 8582) "write\00")
 (data (i32.const 0) "\90!\00\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 8588))
 (global $global$2 i32 (i32.const 8588))
 (export "apply" (func $24))
 (func $0 (; 27 ;) (type $0)
  (call $3)
 )
 (func $1 (; 28 ;) (type $13) (param $0 i32) (result i32)
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
   (call $fimport$0
    (i32.const 0)
    (i32.const 8220)
   )
   (return
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $2 (; 29 ;) (type $14) (param $0 i32)
 )
 (func $3 (; 30 ;) (type $0)
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
 (func $4 (; 31 ;) (type $14) (param $0 i32)
 )
 (func $5 (; 32 ;) (type $11) (result i32)
  (i32.const 8208)
 )
 (func $6 (; 33 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $1
      (get_local $1)
     )
    )
   )
   (i32.store
    (call $5)
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
        (call $1
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
     (call $2
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
 (func $7 (; 34 ;) (type $2) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
       (call $6
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
   (call $5)
  )
 )
 (func $8 (; 35 ;) (type $13) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (tee_local $0
     (call $1
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
       (call $1
        (get_local $1)
       )
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $9 (; 36 ;) (type $13) (param $0 i32) (result i32)
  (call $8
   (get_local $0)
  )
 )
 (func $10 (; 37 ;) (type $14) (param $0 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $2
    (get_local $0)
   )
  )
 )
 (func $11 (; 38 ;) (type $14) (param $0 i32)
  (call $10
   (get_local $0)
  )
 )
 (func $12 (; 39 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $7
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
      (call $7
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
 (func $13 (; 40 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (call $12
   (get_local $0)
   (get_local $1)
  )
 )
 (func $14 (; 41 ;) (type $1) (param $0 i32) (param $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $0)
    )
   )
   (call $2
    (get_local $0)
   )
  )
 )
 (func $15 (; 42 ;) (type $1) (param $0 i32) (param $1 i32)
  (call $14
   (get_local $0)
   (get_local $1)
  )
 )
 (func $16 (; 43 ;) (type $13) (param $0 i32) (result i32)
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
 (func $17 (; 44 ;) (type $2) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i32.ne
    (get_local $2)
    (i32.const 0)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (get_local $2)
        )
       )
       (br_if $label$5
        (i32.eqz
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
       )
       (set_local $3
        (i32.and
         (get_local $1)
         (i32.const 255)
        )
       )
       (loop $label$6
        (br_if $label$4
         (i32.eq
          (i32.load8_u
           (get_local $0)
          )
          (get_local $3)
         )
        )
        (block $label$7
         (set_local $4
          (i32.ne
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $5
          (i32.add
           (get_local $2)
           (i32.const -1)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
         (br_if $label$7
          (i32.eq
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $2
          (get_local $5)
         )
         (br_if $label$6
          (i32.and
           (get_local $0)
           (i32.const 3)
          )
         )
        )
       )
       (br_if $label$3
        (get_local $4)
       )
       (br $label$2)
      )
      (set_local $5
       (get_local $2)
      )
      (br_if $label$3
       (get_local $3)
      )
      (br $label$2)
     )
     (set_local $5
      (get_local $2)
     )
    )
    (block $label$8
     (br_if $label$8
      (i32.ne
       (i32.load8_u
        (get_local $0)
       )
       (i32.and
        (get_local $1)
        (i32.const 255)
       )
      )
     )
     (br_if $label$1
      (get_local $5)
     )
     (br $label$2)
    )
    (block $label$9
     (block $label$10
      (br_if $label$10
       (i32.lt_u
        (get_local $5)
        (i32.const 4)
       )
      )
      (set_local $3
       (i32.mul
        (i32.and
         (get_local $1)
         (i32.const 255)
        )
        (i32.const 16843009)
       )
      )
      (loop $label$11
       (br_if $label$9
        (i32.and
         (i32.and
          (i32.xor
           (tee_local $2
            (i32.xor
             (i32.load
              (get_local $0)
             )
             (get_local $3)
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
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (br_if $label$11
        (i32.gt_u
         (tee_local $5
          (i32.add
           (get_local $5)
           (i32.const -4)
          )
         )
         (i32.const 3)
        )
       )
      )
     )
     (br_if $label$2
      (i32.eqz
       (get_local $5)
      )
     )
    )
    (set_local $2
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
    (loop $label$12
     (br_if $label$1
      (i32.eq
       (i32.load8_u
        (get_local $0)
       )
       (get_local $2)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$12
      (tee_local $5
       (i32.add
        (get_local $5)
        (i32.const -1)
       )
      )
     )
    )
   )
   (set_local $0
    (i32.const 0)
   )
  )
  (get_local $0)
 )
 (func $18 (; 45 ;) (type $2) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $19 (; 46 ;) (type $14) (param $0 i32)
  (call $fimport$3)
  (unreachable)
 )
 (func $20 (; 47 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
     (call $8
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
  (call $fimport$3)
  (unreachable)
 )
 (func $21 (; 48 ;) (type $15) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
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
     (call $8
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
    (call $fimport$4
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
  (call $fimport$3)
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
          (call $8
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
     (call $fimport$3)
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
   (call $10
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
 (func $23 (; 50 ;) (type $14) (param $0 i32)
  (call $fimport$3)
  (unreachable)
 )
 (func $24 (; 51 ;) (type $16) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (call $0)
  (block $label$1
   (br_if $label$1
    (i64.ne
     (get_local $2)
     (i64.const -3617168760277827584)
    )
   )
   (call $25
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (get_local $0)
    (get_local $1)
   )
  )
  (call $4
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $25 (; 52 ;) (type $17) (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 320)
    )
   )
  )
  (call $26
   (i32.add
    (get_local $3)
    (i32.const 256)
   )
  )
  (block $label$1
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i64.eq
       (tee_local $4
        (i64.load offset=256
         (get_local $3)
        )
       )
       (get_local $1)
      )
     )
     (br_if $label$3
      (i64.eq
       (get_local $4)
       (i64.const 6138894238293890416)
      )
     )
     (br_if $label$3
      (i64.ne
       (i64.load offset=264
        (get_local $3)
       )
       (get_local $1)
      )
     )
     (call $fimport$2
      (get_local $4)
     )
     (set_local $5
      (i32.const 0)
     )
     (block $label$4
      (br_if $label$4
       (i64.gt_u
        (i64.add
         (i64.load offset=272
          (get_local $3)
         )
         (i64.const 4611686018427387903)
        )
        (i64.const 9223372036854775806)
       )
      )
      (set_local $6
       (i64.shr_u
        (i64.load
         (i32.add
          (i32.add
           (get_local $3)
           (i32.const 256)
          )
          (i32.const 24)
         )
        )
        (i64.const 8)
       )
      )
      (set_local $7
       (i32.const 0)
      )
      (block $label$5
       (loop $label$6
        (br_if $label$5
         (i32.gt_u
          (i32.add
           (i32.shl
            (i32.wrap/i64
             (get_local $6)
            )
            (i32.const 24)
           )
           (i32.const -1073741825)
          )
          (i32.const 452984830)
         )
        )
        (set_local $8
         (i64.shr_u
          (get_local $6)
          (i64.const 8)
         )
        )
        (block $label$7
         (br_if $label$7
          (i64.eq
           (i64.and
            (get_local $6)
            (i64.const 65280)
           )
           (i64.const 0)
          )
         )
         (set_local $6
          (get_local $8)
         )
         (set_local $5
          (i32.const 1)
         )
         (set_local $7
          (i32.add
           (tee_local $9
            (get_local $7)
           )
           (i32.const 1)
          )
         )
         (br_if $label$6
          (i32.lt_s
           (get_local $9)
           (i32.const 6)
          )
         )
         (br $label$4)
        )
        (set_local $6
         (get_local $8)
        )
        (loop $label$8
         (br_if $label$5
          (i64.ne
           (i64.and
            (get_local $6)
            (i64.const 65280)
           )
           (i64.const 0)
          )
         )
         (set_local $6
          (i64.shr_u
           (get_local $6)
           (i64.const 8)
          )
         )
         (set_local $5
          (i32.lt_s
           (get_local $7)
           (i32.const 6)
          )
         )
         (set_local $7
          (tee_local $9
           (i32.add
            (get_local $7)
            (i32.const 1)
           )
          )
         )
         (br_if $label$8
          (get_local $5)
         )
        )
        (set_local $5
         (i32.const 1)
        )
        (set_local $7
         (i32.add
          (get_local $9)
          (i32.const 1)
         )
        )
        (br_if $label$6
         (i32.lt_s
          (get_local $9)
          (i32.const 6)
         )
        )
        (br $label$4)
       )
      )
      (set_local $5
       (i32.const 0)
      )
     )
     (call $fimport$0
      (get_local $5)
      (i32.const 8245)
     )
     (set_local $11
      (call $20
       (i32.add
        (get_local $3)
        (i32.const 224)
       )
       (tee_local $10
        (call $20
         (i32.add
          (get_local $3)
          (i32.const 240)
         )
         (i32.add
          (get_local $3)
          (i32.const 288)
         )
        )
       )
      )
     )
     (i32.store
      (i32.add
       (get_local $3)
       (i32.const 216)
      )
      (i32.const 0)
     )
     (i64.store offset=208
      (get_local $3)
      (i64.const 0)
     )
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (block $label$13
          (br_if $label$13
           (i32.ge_u
            (tee_local $7
             (call $16
              (i32.const 8262)
             )
            )
            (i32.const -16)
           )
          )
          (block $label$14
           (block $label$15
            (block $label$16
             (br_if $label$16
              (i32.ge_u
               (get_local $7)
               (i32.const 11)
              )
             )
             (i32.store8 offset=208
              (get_local $3)
              (i32.shl
               (get_local $7)
               (i32.const 1)
              )
             )
             (set_local $5
              (tee_local $12
               (i32.or
                (i32.add
                 (get_local $3)
                 (i32.const 208)
                )
                (i32.const 1)
               )
              )
             )
             (br_if $label$15
              (get_local $7)
             )
             (br $label$14)
            )
            (set_local $5
             (call $8
              (tee_local $9
               (i32.and
                (i32.add
                 (get_local $7)
                 (i32.const 16)
                )
                (i32.const -16)
               )
              )
             )
            )
            (i32.store offset=208
             (get_local $3)
             (i32.or
              (get_local $9)
              (i32.const 1)
             )
            )
            (i32.store offset=216
             (get_local $3)
             (get_local $5)
            )
            (i32.store offset=212
             (get_local $3)
             (get_local $7)
            )
            (set_local $12
             (i32.or
              (i32.add
               (get_local $3)
               (i32.const 208)
              )
              (i32.const 1)
             )
            )
           )
           (drop
            (call $fimport$4
             (get_local $5)
             (i32.const 8262)
             (get_local $7)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $5)
            (get_local $7)
           )
           (i32.const 0)
          )
          (set_local $9
           (i32.const 1)
          )
          (block $label$17
           (br_if $label$17
            (i32.eqz
             (tee_local $7
              (select
               (i32.load offset=212
                (get_local $3)
               )
               (i32.shr_u
                (tee_local $7
                 (i32.load8_u offset=208
                  (get_local $3)
                 )
                )
                (i32.const 1)
               )
               (tee_local $13
                (i32.and
                 (get_local $7)
                 (i32.const 1)
                )
               )
              )
             )
            )
           )
           (block $label$18
            (br_if $label$18
             (i32.lt_s
              (tee_local $5
               (select
                (i32.load offset=4
                 (get_local $11)
                )
                (i32.shr_u
                 (tee_local $5
                  (i32.load8_u
                   (get_local $11)
                  )
                 )
                 (i32.const 1)
                )
                (tee_local $9
                 (i32.and
                  (get_local $5)
                  (i32.const 1)
                 )
                )
               )
              )
              (get_local $7)
             )
            )
            (set_local $15
             (i32.add
              (tee_local $14
               (select
                (i32.load offset=8
                 (get_local $11)
                )
                (i32.add
                 (get_local $11)
                 (i32.const 1)
                )
                (get_local $9)
               )
              )
              (get_local $5)
             )
            )
            (set_local $12
             (i32.load8_u
              (tee_local $13
               (select
                (i32.load offset=216
                 (get_local $3)
                )
                (get_local $12)
                (get_local $13)
               )
              )
             )
            )
            (set_local $9
             (get_local $14)
            )
            (loop $label$19
             (br_if $label$18
              (i32.eqz
               (tee_local $5
                (i32.add
                 (i32.sub
                  (get_local $5)
                  (get_local $7)
                 )
                 (i32.const 1)
                )
               )
              )
             )
             (br_if $label$18
              (i32.eqz
               (tee_local $5
                (call $17
                 (get_local $9)
                 (get_local $12)
                 (get_local $5)
                )
               )
              )
             )
             (block $label$20
              (br_if $label$20
               (i32.eqz
                (call $18
                 (get_local $5)
                 (get_local $13)
                 (get_local $7)
                )
               )
              )
              (br_if $label$19
               (i32.ge_s
                (tee_local $5
                 (i32.sub
                  (get_local $15)
                  (tee_local $9
                   (i32.add
                    (get_local $5)
                    (i32.const 1)
                   )
                  )
                 )
                )
                (get_local $7)
               )
              )
              (br $label$18)
             )
            )
            (br_if $label$18
             (i32.ne
              (get_local $5)
              (get_local $14)
             )
            )
            (set_local $9
             (i32.const 1)
            )
            (br_if $label$17
             (i32.ne
              (get_local $5)
              (get_local $15)
             )
            )
           )
           (set_local $9
            (i32.eqz
             (select
              (i32.load offset=4
               (get_local $10)
              )
              (i32.shr_u
               (tee_local $7
                (i32.load8_u offset=240
                 (get_local $3)
                )
               )
               (i32.const 1)
              )
              (i32.and
               (get_local $7)
               (i32.const 1)
              )
             )
            )
           )
          )
          (call $fimport$0
           (get_local $9)
           (i32.const 8267)
          )
          (block $label$21
           (br_if $label$21
            (i32.eqz
             (i32.and
              (i32.load8_u offset=208
               (get_local $3)
              )
              (i32.const 1)
             )
            )
           )
           (call $10
            (i32.load
             (i32.add
              (get_local $3)
              (i32.const 216)
             )
            )
           )
          )
          (block $label$22
           (br_if $label$22
            (i32.eqz
             (i32.and
              (i32.load8_u
               (get_local $11)
              )
              (i32.const 1)
             )
            )
           )
           (call $10
            (i32.load
             (i32.add
              (get_local $11)
              (i32.const 8)
             )
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 200)
           )
           (i32.const 0)
          )
          (i64.store offset=192
           (get_local $3)
           (i64.const 0)
          )
          (br_if $label$12
           (i32.ge_u
            (tee_local $7
             (call $16
              (i32.const 8304)
             )
            )
            (i32.const -16)
           )
          )
          (block $label$23
           (block $label$24
            (block $label$25
             (br_if $label$25
              (i32.ge_u
               (get_local $7)
               (i32.const 11)
              )
             )
             (i32.store8 offset=192
              (get_local $3)
              (i32.shl
               (get_local $7)
               (i32.const 1)
              )
             )
             (set_local $5
              (i32.or
               (i32.add
                (get_local $3)
                (i32.const 192)
               )
               (i32.const 1)
              )
             )
             (br_if $label$24
              (get_local $7)
             )
             (br $label$23)
            )
            (set_local $5
             (call $8
              (tee_local $9
               (i32.and
                (i32.add
                 (get_local $7)
                 (i32.const 16)
                )
                (i32.const -16)
               )
              )
             )
            )
            (i32.store offset=192
             (get_local $3)
             (i32.or
              (get_local $9)
              (i32.const 1)
             )
            )
            (i32.store offset=200
             (get_local $3)
             (get_local $5)
            )
            (i32.store offset=196
             (get_local $3)
             (get_local $7)
            )
           )
           (drop
            (call $fimport$4
             (get_local $5)
             (i32.const 8304)
             (get_local $7)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $5)
            (get_local $7)
           )
           (i32.const 0)
          )
          (set_local $11
           (call $20
            (i32.add
             (get_local $3)
             (i32.const 176)
            )
            (get_local $10)
           )
          )
          (i32.store
           (i32.add
            (get_local $3)
            (i32.const 168)
           )
           (i32.const 0)
          )
          (i64.store offset=160
           (get_local $3)
           (i64.const 0)
          )
          (br_if $label$11
           (i32.ge_u
            (tee_local $7
             (call $16
              (i32.const 8262)
             )
            )
            (i32.const -16)
           )
          )
          (block $label$26
           (block $label$27
            (block $label$28
             (br_if $label$28
              (i32.ge_u
               (get_local $7)
               (i32.const 11)
              )
             )
             (i32.store8 offset=160
              (get_local $3)
              (i32.shl
               (get_local $7)
               (i32.const 1)
              )
             )
             (set_local $5
              (tee_local $13
               (i32.or
                (i32.add
                 (get_local $3)
                 (i32.const 160)
                )
                (i32.const 1)
               )
              )
             )
             (br_if $label$27
              (get_local $7)
             )
             (br $label$26)
            )
            (set_local $5
             (call $8
              (tee_local $9
               (i32.and
                (i32.add
                 (get_local $7)
                 (i32.const 16)
                )
                (i32.const -16)
               )
              )
             )
            )
            (i32.store offset=160
             (get_local $3)
             (i32.or
              (get_local $9)
              (i32.const 1)
             )
            )
            (i32.store offset=168
             (get_local $3)
             (get_local $5)
            )
            (i32.store offset=164
             (get_local $3)
             (get_local $7)
            )
            (set_local $13
             (i32.or
              (i32.add
               (get_local $3)
               (i32.const 160)
              )
              (i32.const 1)
             )
            )
           )
           (drop
            (call $fimport$4
             (get_local $5)
             (i32.const 8262)
             (get_local $7)
            )
           )
          )
          (i32.store8
           (i32.add
            (get_local $5)
            (get_local $7)
           )
           (i32.const 0)
          )
          (set_local $7
           (i32.const 1)
          )
          (block $label$29
           (br_if $label$29
            (i32.eqz
             (tee_local $5
              (select
               (i32.load offset=164
                (get_local $3)
               )
               (i32.shr_u
                (tee_local $5
                 (i32.load8_u offset=160
                  (get_local $3)
                 )
                )
                (i32.const 1)
               )
               (tee_local $9
                (i32.and
                 (get_local $5)
                 (i32.const 1)
                )
               )
              )
             )
            )
           )
           (set_local $12
            (i32.add
             (tee_local $14
              (select
               (i32.load offset=8
                (get_local $11)
               )
               (i32.add
                (get_local $11)
                (i32.const 1)
               )
               (tee_local $12
                (i32.and
                 (tee_local $7
                  (i32.load8_u
                   (get_local $11)
                  )
                 )
                 (i32.const 1)
                )
               )
              )
             )
             (tee_local $7
              (select
               (i32.load offset=4
                (get_local $11)
               )
               (i32.shr_u
                (get_local $7)
                (i32.const 1)
               )
               (get_local $12)
              )
             )
            )
           )
           (block $label$30
            (block $label$31
             (br_if $label$31
              (i32.lt_s
               (get_local $7)
               (get_local $5)
              )
             )
             (set_local $13
              (i32.load8_u
               (tee_local $15
                (select
                 (i32.load offset=168
                  (get_local $3)
                 )
                 (get_local $13)
                 (get_local $9)
                )
               )
              )
             )
             (set_local $9
              (get_local $14)
             )
             (loop $label$32
              (br_if $label$31
               (i32.eqz
                (tee_local $7
                 (i32.add
                  (i32.sub
                   (get_local $7)
                   (get_local $5)
                  )
                  (i32.const 1)
                 )
                )
               )
              )
              (br_if $label$31
               (i32.eqz
                (tee_local $7
                 (call $17
                  (get_local $9)
                  (get_local $13)
                  (get_local $7)
                 )
                )
               )
              )
              (br_if $label$30
               (i32.eqz
                (call $18
                 (get_local $7)
                 (get_local $15)
                 (get_local $5)
                )
               )
              )
              (br_if $label$32
               (i32.ge_s
                (tee_local $7
                 (i32.sub
                  (get_local $12)
                  (tee_local $9
                   (i32.add
                    (get_local $7)
                    (i32.const 1)
                   )
                  )
                 )
                )
                (get_local $5)
               )
              )
             )
            )
            (set_local $7
             (get_local $12)
            )
           )
           (set_local $7
            (i32.and
             (i32.eq
              (get_local $7)
              (get_local $14)
             )
             (i32.ne
              (get_local $7)
              (get_local $12)
             )
            )
           )
           (set_local $9
            (i32.and
             (i32.load8_u offset=160
              (get_local $3)
             )
             (i32.const 1)
            )
           )
          )
          (block $label$33
           (br_if $label$33
            (i32.eqz
             (get_local $9)
            )
           )
           (call $10
            (i32.load
             (i32.add
              (get_local $3)
              (i32.const 168)
             )
            )
           )
          )
          (block $label$34
           (br_if $label$34
            (i32.eqz
             (i32.and
              (i32.load8_u
               (get_local $11)
              )
              (i32.const 1)
             )
            )
           )
           (call $10
            (i32.load
             (i32.add
              (get_local $11)
              (i32.const 8)
             )
            )
           )
          )
          (br_if $label$9
           (i32.eqz
            (get_local $7)
           )
          )
          (set_local $5
           (i32.load8_u offset=240
            (get_local $3)
           )
          )
          (set_local $11
           (i32.load offset=8
            (get_local $10)
           )
          )
          (set_local $9
           (i32.load offset=4
            (get_local $10)
           )
          )
          (block $label$35
           (block $label$36
            (block $label$37
             (br_if $label$37
              (i32.eqz
               (tee_local $7
                (call $16
                 (i32.const 8313)
                )
               )
              )
             )
             (br_if $label$35
              (i32.lt_s
               (tee_local $5
                (select
                 (get_local $9)
                 (i32.shr_u
                  (get_local $5)
                  (i32.const 1)
                 )
                 (tee_local $12
                  (i32.and
                   (get_local $5)
                   (i32.const 1)
                  )
                 )
                )
               )
               (get_local $7)
              )
             )
             (set_local $11
              (i32.add
               (tee_local $12
                (select
                 (get_local $11)
                 (i32.add
                  (get_local $10)
                  (i32.const 1)
                 )
                 (get_local $12)
                )
               )
               (get_local $5)
              )
             )
             (set_local $9
              (get_local $12)
             )
             (loop $label$38
              (br_if $label$35
               (i32.eqz
                (tee_local $5
                 (i32.add
                  (i32.sub
                   (get_local $5)
                   (get_local $7)
                  )
                  (i32.const 1)
                 )
                )
               )
              )
              (br_if $label$35
               (i32.eqz
                (tee_local $5
                 (call $17
                  (get_local $9)
                  (i32.const 44)
                  (get_local $5)
                 )
                )
               )
              )
              (br_if $label$36
               (i32.eqz
                (call $18
                 (get_local $5)
                 (i32.const 8313)
                 (get_local $7)
                )
               )
              )
              (br_if $label$38
               (i32.ge_s
                (tee_local $5
                 (i32.sub
                  (get_local $11)
                  (tee_local $9
                   (i32.add
                    (get_local $5)
                    (i32.const 1)
                   )
                  )
                 )
                )
                (get_local $7)
               )
              )
              (br $label$35)
             )
            )
            (set_local $5
             (i32.const 0)
            )
            (br $label$10)
           )
           (br_if $label$35
            (i32.eq
             (get_local $5)
             (get_local $11)
            )
           )
           (br_if $label$10
            (i32.ne
             (tee_local $5
              (i32.sub
               (get_local $5)
               (get_local $12)
              )
             )
             (i32.const -1)
            )
           )
          )
          (i32.store offset=152
           (get_local $3)
           (select
            (i32.load offset=8
             (tee_local $7
              (call $21
               (i32.add
                (get_local $3)
                (i32.const 136)
               )
               (get_local $10)
               (i32.const 4)
               (i32.const -1)
               (get_local $10)
              )
             )
            )
            (i32.add
             (get_local $7)
             (i32.const 1)
            )
            (tee_local $9
             (i32.and
              (tee_local $5
               (i32.load8_u
                (get_local $7)
               )
              )
              (i32.const 1)
             )
            )
           )
          )
          (i32.store offset=156
           (get_local $3)
           (select
            (i32.load offset=4
             (get_local $7)
            )
            (i32.shr_u
             (get_local $5)
             (i32.const 1)
            )
            (get_local $9)
           )
          )
          (i64.store offset=16
           (get_local $3)
           (i64.load offset=152
            (get_local $3)
           )
          )
          (set_local $4
           (i64.load
            (call $27
             (i32.add
              (get_local $3)
              (i32.const 24)
             )
             (i32.add
              (get_local $3)
              (i32.const 16)
             )
            )
           )
          )
          (br_if $label$9
           (i32.eqz
            (i32.and
             (i32.load8_u
              (get_local $7)
             )
             (i32.const 1)
            )
           )
          )
          (call $10
           (i32.load
            (i32.add
             (get_local $7)
             (i32.const 8)
            )
           )
          )
          (br $label$9)
         )
         (call $19
          (i32.add
           (get_local $3)
           (i32.const 208)
          )
         )
         (unreachable)
        )
        (call $19
         (i32.add
          (get_local $3)
          (i32.const 192)
         )
        )
        (unreachable)
       )
       (call $19
        (i32.add
         (get_local $3)
         (i32.const 160)
        )
       )
       (unreachable)
      )
      (i32.store offset=128
       (get_local $3)
       (select
        (i32.load offset=8
         (tee_local $7
          (call $21
           (i32.add
            (get_local $3)
            (i32.const 112)
           )
           (get_local $10)
           (i32.const 4)
           (i32.add
            (get_local $5)
            (i32.const -4)
           )
           (get_local $10)
          )
         )
        )
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
        (tee_local $11
         (i32.and
          (tee_local $9
           (i32.load8_u
            (get_local $7)
           )
          )
          (i32.const 1)
         )
        )
       )
      )
      (i32.store offset=132
       (get_local $3)
       (select
        (i32.load offset=4
         (get_local $7)
        )
        (i32.shr_u
         (get_local $9)
         (i32.const 1)
        )
        (get_local $11)
       )
      )
      (i64.store offset=8
       (get_local $3)
       (i64.load offset=128
        (get_local $3)
       )
      )
      (set_local $4
       (i64.load
        (call $27
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
      (block $label$39
       (br_if $label$39
        (i32.eqz
         (i32.and
          (i32.load8_u
           (get_local $7)
          )
          (i32.const 1)
         )
        )
       )
       (call $10
        (i32.load
         (i32.add
          (get_local $7)
          (i32.const 8)
         )
        )
       )
      )
      (drop
       (call $21
        (i32.add
         (get_local $3)
         (i32.const 24)
        )
        (get_local $10)
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
        (i32.const -1)
        (get_local $10)
       )
      )
      (block $label$40
       (block $label$41
        (br_if $label$41
         (i32.and
          (i32.load8_u offset=192
           (get_local $3)
          )
          (i32.const 1)
         )
        )
        (i32.store16 offset=192
         (get_local $3)
         (i32.const 0)
        )
        (br $label$40)
       )
       (i32.store8
        (i32.load offset=200
         (get_local $3)
        )
        (i32.const 0)
       )
       (i32.store offset=196
        (get_local $3)
        (i32.const 0)
       )
      )
      (call $22
       (i32.add
        (get_local $3)
        (i32.const 192)
       )
       (i32.const 0)
      )
      (i32.store
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 192)
        )
        (i32.const 8)
       )
       (i32.load
        (i32.add
         (i32.add
          (get_local $3)
          (i32.const 24)
         )
         (i32.const 8)
        )
       )
      )
      (i64.store offset=192
       (get_local $3)
       (i64.load offset=24
        (get_local $3)
       )
      )
     )
     (set_local $6
      (i64.load
       (i32.add
        (get_local $3)
        (i32.const 280)
       )
      )
     )
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
                 (br_if $label$53
                  (i64.ne
                   (get_local $2)
                   (i64.const 6138894366021054848)
                  )
                 )
                 (call $fimport$0
                  (i64.eq
                   (get_local $6)
                   (i64.const 1381385476)
                  )
                  (i32.const 8315)
                 )
                 (block $label$54
                  (br_if $label$54
                   (i64.lt_u
                    (i64.add
                     (tee_local $8
                      (i64.load
                       (i32.add
                        (get_local $3)
                        (i32.const 272)
                       )
                      )
                     )
                     (i64.const 4611686018427387903)
                    )
                    (i64.const 9223372036854775807)
                   )
                  )
                  (call $fimport$0
                   (i32.const 0)
                   (i32.const 8513)
                  )
                 )
                 (set_local $6
                  (i64.const 4478533)
                 )
                 (set_local $7
                  (i32.const 0)
                 )
                 (loop $label$55
                  (br_if $label$52
                   (i32.gt_u
                    (i32.add
                     (i32.shl
                      (i32.wrap/i64
                       (get_local $6)
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
                    (get_local $6)
                    (i64.const 8)
                   )
                  )
                  (block $label$56
                   (br_if $label$56
                    (i64.eq
                     (i64.and
                      (get_local $6)
                      (i64.const 65280)
                     )
                     (i64.const 0)
                    )
                   )
                   (set_local $6
                    (get_local $2)
                   )
                   (set_local $7
                    (i32.add
                     (tee_local $5
                      (get_local $7)
                     )
                     (i32.const 1)
                    )
                   )
                   (br_if $label$55
                    (i32.lt_s
                     (get_local $5)
                     (i32.const 6)
                    )
                   )
                   (br $label$51)
                  )
                  (set_local $6
                   (get_local $2)
                  )
                  (loop $label$57
                   (br_if $label$52
                    (i64.ne
                     (i64.and
                      (get_local $6)
                      (i64.const 65280)
                     )
                     (i64.const 0)
                    )
                   )
                   (set_local $6
                    (i64.shr_u
                     (get_local $6)
                     (i64.const 8)
                    )
                   )
                   (set_local $5
                    (i32.lt_s
                     (get_local $7)
                     (i32.const 6)
                    )
                   )
                   (set_local $7
                    (tee_local $9
                     (i32.add
                      (get_local $7)
                      (i32.const 1)
                     )
                    )
                   )
                   (br_if $label$57
                    (get_local $5)
                   )
                  )
                  (set_local $7
                   (i32.add
                    (get_local $9)
                    (i32.const 1)
                   )
                  )
                  (br_if $label$55
                   (i32.lt_s
                    (get_local $9)
                    (i32.const 6)
                   )
                  )
                  (br $label$51)
                 )
                )
                (call $fimport$0
                 (i64.eq
                  (get_local $6)
                  (i64.const 1146504452)
                 )
                 (i32.const 8331)
                )
                (block $label$58
                 (br_if $label$58
                  (i64.lt_u
                   (i64.add
                    (tee_local $8
                     (i64.load
                      (i32.add
                       (get_local $3)
                       (i32.const 272)
                      )
                     )
                    )
                    (i64.const 4611686018427387903)
                   )
                   (i64.const 9223372036854775807)
                  )
                 )
                 (call $fimport$0
                  (i32.const 0)
                  (i32.const 8513)
                 )
                )
                (set_local $6
                 (i64.const 5396037)
                )
                (set_local $7
                 (i32.const 0)
                )
                (loop $label$59
                 (br_if $label$50
                  (i32.gt_u
                   (i32.add
                    (i32.shl
                     (i32.wrap/i64
                      (get_local $6)
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
                   (get_local $6)
                   (i64.const 8)
                  )
                 )
                 (block $label$60
                  (br_if $label$60
                   (i64.eq
                    (i64.and
                     (get_local $6)
                     (i64.const 65280)
                    )
                    (i64.const 0)
                   )
                  )
                  (set_local $6
                   (get_local $2)
                  )
                  (set_local $7
                   (i32.add
                    (tee_local $5
                     (get_local $7)
                    )
                    (i32.const 1)
                   )
                  )
                  (br_if $label$59
                   (i32.lt_s
                    (get_local $5)
                    (i32.const 6)
                   )
                  )
                  (br $label$49)
                 )
                 (set_local $6
                  (get_local $2)
                 )
                 (loop $label$61
                  (br_if $label$50
                   (i64.ne
                    (i64.and
                     (get_local $6)
                     (i64.const 65280)
                    )
                    (i64.const 0)
                   )
                  )
                  (set_local $6
                   (i64.shr_u
                    (get_local $6)
                    (i64.const 8)
                   )
                  )
                  (set_local $5
                   (i32.lt_s
                    (get_local $7)
                    (i32.const 6)
                   )
                  )
                  (set_local $7
                   (tee_local $9
                    (i32.add
                     (get_local $7)
                     (i32.const 1)
                    )
                   )
                  )
                  (br_if $label$61
                   (get_local $5)
                  )
                 )
                 (set_local $7
                  (i32.add
                   (get_local $9)
                   (i32.const 1)
                  )
                 )
                 (br_if $label$59
                  (i32.lt_s
                   (get_local $9)
                   (i32.const 6)
                  )
                 )
                 (br $label$49)
                )
               )
               (call $fimport$0
                (i32.const 0)
                (i32.const 8562)
               )
              )
              (i64.store
               (i32.add
                (i32.add
                 (get_local $3)
                 (i32.const 24)
                )
                (i32.const 24)
               )
               (i64.const 1146504452)
              )
              (i64.store offset=32
               (get_local $3)
               (get_local $4)
              )
              (i64.store offset=24
               (get_local $3)
               (get_local $1)
              )
              (i64.store offset=40
               (get_local $3)
               (get_local $8)
              )
              (set_local $5
               (call $20
                (i32.add
                 (i32.add
                  (get_local $3)
                  (i32.const 24)
                 )
                 (i32.const 32)
                )
                (i32.add
                 (get_local $3)
                 (i32.const 192)
                )
               )
              )
              (i64.store offset=80
               (get_local $3)
               (i64.const -3617168760277827584)
              )
              (i64.store offset=72
               (get_local $3)
               (i64.const 6138716500844090672)
              )
              (i64.store
               (tee_local $7
                (call $8
                 (i32.const 16)
                )
               )
               (get_local $1)
              )
              (i64.store offset=8
               (get_local $7)
               (i64.const 3617214756542218240)
              )
              (i32.store
               (i32.add
                (i32.add
                 (get_local $3)
                 (i32.const 72)
                )
                (i32.const 36)
               )
               (i32.const 0)
              )
              (i32.store
               (i32.add
                (i32.add
                 (get_local $3)
                 (i32.const 72)
                )
                (i32.const 24)
               )
               (tee_local $9
                (i32.add
                 (get_local $7)
                 (i32.const 16)
                )
               )
              )
              (i32.store
               (i32.add
                (get_local $3)
                (i32.const 92)
               )
               (get_local $9)
              )
              (i32.store offset=88
               (get_local $3)
               (get_local $7)
              )
              (i64.store offset=100 align=4
               (get_local $3)
               (i64.const 0)
              )
              (set_local $7
               (i32.add
                (tee_local $9
                 (select
                  (i32.load
                   (i32.add
                    (i32.add
                     (get_local $3)
                     (i32.const 24)
                    )
                    (i32.const 36)
                   )
                  )
                  (i32.shr_u
                   (tee_local $7
                    (i32.load8_u
                     (get_local $5)
                    )
                   )
                   (i32.const 1)
                  )
                  (i32.and
                   (get_local $7)
                   (i32.const 1)
                  )
                 )
                )
                (i32.const 32)
               )
              )
              (set_local $6
               (i64.extend_u/i32
                (get_local $9)
               )
              )
              (set_local $9
               (i32.add
                (get_local $3)
                (i32.const 100)
               )
              )
              (loop $label$62
               (set_local $7
                (i32.add
                 (get_local $7)
                 (i32.const 1)
                )
               )
               (br_if $label$62
                (i64.ne
                 (tee_local $6
                  (i64.shr_u
                   (get_local $6)
                   (i64.const 7)
                  )
                 )
                 (i64.const 0)
                )
               )
              )
              (br_if $label$48
               (i32.eqz
                (get_local $7)
               )
              )
              (call $28
               (get_local $9)
               (get_local $7)
              )
              (set_local $9
               (i32.load
                (i32.add
                 (get_local $3)
                 (i32.const 104)
                )
               )
              )
              (set_local $7
               (i32.load
                (i32.add
                 (get_local $3)
                 (i32.const 100)
                )
               )
              )
              (br $label$47)
             )
             (call $fimport$0
              (i32.const 0)
              (i32.const 8562)
             )
            )
            (i64.store
             (i32.add
              (i32.add
               (get_local $3)
               (i32.const 24)
              )
              (i32.const 24)
             )
             (i64.const 1381385476)
            )
            (i64.store offset=32
             (get_local $3)
             (get_local $4)
            )
            (i64.store offset=24
             (get_local $3)
             (get_local $1)
            )
            (i64.store offset=40
             (get_local $3)
             (get_local $8)
            )
            (set_local $5
             (call $20
              (i32.add
               (i32.add
                (get_local $3)
                (i32.const 24)
               )
               (i32.const 32)
              )
              (i32.add
               (get_local $3)
               (i32.const 192)
              )
             )
            )
            (i64.store offset=80
             (get_local $3)
             (i64.const -3617168760277827584)
            )
            (i64.store offset=72
             (get_local $3)
             (i64.const 6138894366021054848)
            )
            (i64.store
             (tee_local $7
              (call $8
               (i32.const 16)
              )
             )
             (get_local $1)
            )
            (i64.store offset=8
             (get_local $7)
             (i64.const 3617214756542218240)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $3)
               (i32.const 72)
              )
              (i32.const 36)
             )
             (i32.const 0)
            )
            (i32.store
             (i32.add
              (i32.add
               (get_local $3)
               (i32.const 72)
              )
              (i32.const 24)
             )
             (tee_local $9
              (i32.add
               (get_local $7)
               (i32.const 16)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $3)
              (i32.const 92)
             )
             (get_local $9)
            )
            (i32.store offset=88
             (get_local $3)
             (get_local $7)
            )
            (i64.store offset=100 align=4
             (get_local $3)
             (i64.const 0)
            )
            (set_local $7
             (i32.add
              (tee_local $9
               (select
                (i32.load
                 (i32.add
                  (i32.add
                   (get_local $3)
                   (i32.const 24)
                  )
                  (i32.const 36)
                 )
                )
                (i32.shr_u
                 (tee_local $7
                  (i32.load8_u
                   (get_local $5)
                  )
                 )
                 (i32.const 1)
                )
                (i32.and
                 (get_local $7)
                 (i32.const 1)
                )
               )
              )
              (i32.const 32)
             )
            )
            (set_local $6
             (i64.extend_u/i32
              (get_local $9)
             )
            )
            (set_local $9
             (i32.add
              (get_local $3)
              (i32.const 100)
             )
            )
            (loop $label$63
             (set_local $7
              (i32.add
               (get_local $7)
               (i32.const 1)
              )
             )
             (br_if $label$63
              (i64.ne
               (tee_local $6
                (i64.shr_u
                 (get_local $6)
                 (i64.const 7)
                )
               )
               (i64.const 0)
              )
             )
            )
            (br_if $label$46
             (i32.eqz
              (get_local $7)
             )
            )
            (call $28
             (get_local $9)
             (get_local $7)
            )
            (set_local $9
             (i32.load
              (i32.add
               (get_local $3)
               (i32.const 104)
              )
             )
            )
            (set_local $7
             (i32.load
              (i32.add
               (get_local $3)
               (i32.const 100)
              )
             )
            )
            (br $label$45)
           )
           (set_local $9
            (i32.const 0)
           )
           (set_local $7
            (i32.const 0)
           )
          )
          (i32.store offset=308
           (get_local $3)
           (get_local $7)
          )
          (i32.store offset=304
           (get_local $3)
           (get_local $7)
          )
          (i32.store offset=312
           (get_local $3)
           (get_local $9)
          )
          (drop
           (call $29
            (i32.add
             (get_local $3)
             (i32.const 304)
            )
            (i32.add
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (call $30
           (i32.add
            (get_local $3)
            (i32.const 72)
           )
          )
          (block $label$64
           (br_if $label$64
            (i32.eqz
             (tee_local $7
              (i32.load offset=100
               (get_local $3)
              )
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 104)
            )
            (get_local $7)
           )
           (call $10
            (get_local $7)
           )
          )
          (block $label$65
           (br_if $label$65
            (i32.eqz
             (tee_local $7
              (i32.load offset=88
               (get_local $3)
              )
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $3)
             (i32.const 92)
            )
            (get_local $7)
           )
           (call $10
            (get_local $7)
           )
          )
          (br_if $label$44
           (i32.eqz
            (i32.and
             (i32.load8_u
              (get_local $5)
             )
             (i32.const 1)
            )
           )
          )
          (call $10
           (i32.load
            (i32.add
             (get_local $3)
             (i32.const 64)
            )
           )
          )
          (set_local $7
           (i32.const 1)
          )
          (br_if $label$43
           (i32.and
            (i32.load8_u offset=192
             (get_local $3)
            )
            (i32.const 1)
           )
          )
          (br $label$42)
         )
         (set_local $9
          (i32.const 0)
         )
         (set_local $7
          (i32.const 0)
         )
        )
        (i32.store offset=308
         (get_local $3)
         (get_local $7)
        )
        (i32.store offset=304
         (get_local $3)
         (get_local $7)
        )
        (i32.store offset=312
         (get_local $3)
         (get_local $9)
        )
        (drop
         (call $29
          (i32.add
           (get_local $3)
           (i32.const 304)
          )
          (i32.add
           (get_local $3)
           (i32.const 24)
          )
         )
        )
        (call $30
         (i32.add
          (get_local $3)
          (i32.const 72)
         )
        )
        (block $label$66
         (br_if $label$66
          (i32.eqz
           (tee_local $7
            (i32.load offset=100
             (get_local $3)
            )
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 104)
          )
          (get_local $7)
         )
         (call $10
          (get_local $7)
         )
        )
        (block $label$67
         (br_if $label$67
          (i32.eqz
           (tee_local $7
            (i32.load offset=88
             (get_local $3)
            )
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $3)
           (i32.const 92)
          )
          (get_local $7)
         )
         (call $10
          (get_local $7)
         )
        )
        (br_if $label$44
         (i32.eqz
          (i32.and
           (i32.load8_u
            (get_local $5)
           )
           (i32.const 1)
          )
         )
        )
        (call $10
         (i32.load
          (i32.add
           (get_local $3)
           (i32.const 64)
          )
         )
        )
       )
       (set_local $7
        (i32.const 1)
       )
       (br_if $label$42
        (i32.eqz
         (i32.and
          (i32.load8_u offset=192
           (get_local $3)
          )
          (i32.const 1)
         )
        )
       )
      )
      (call $10
       (i32.load offset=200
        (get_local $3)
       )
      )
     )
     (br_if $label$3
      (i32.eqz
       (i32.and
        (i32.load8_u offset=240
         (get_local $3)
        )
        (get_local $7)
       )
      )
     )
     (call $10
      (i32.load offset=8
       (get_local $10)
      )
     )
     (br_if $label$2
      (i32.and
       (i32.load8_u offset=288
        (get_local $3)
       )
       (i32.const 1)
      )
     )
     (br $label$1)
    )
    (br_if $label$1
     (i32.eqz
      (i32.and
       (i32.load8_u offset=288
        (get_local $3)
       )
       (i32.const 1)
      )
     )
    )
   )
   (call $10
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 296)
     )
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 320)
   )
  )
 )
 (func $26 (; 53 ;) (type $14) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (tee_local $1
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_global $global$0
   (get_local $1)
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.lt_u
      (tee_local $3
       (call $fimport$24)
      )
      (i32.const 513)
     )
    )
    (set_local $1
     (call $1
      (get_local $3)
     )
    )
    (br $label$1)
   )
   (set_global $global$0
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.and
       (i32.add
        (get_local $3)
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
    (get_local $1)
    (get_local $3)
   )
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $0)
   (i64.const 0)
  )
  (i64.store offset=32 align=4
   (get_local $0)
   (i64.const 0)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $2)
   (get_local $1)
  )
  (i32.store
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $2)
   (i32.add
    (get_local $1)
    (get_local $3)
   )
  )
  (drop
   (call $31
    (get_local $2)
    (get_local $0)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $2)
    (i32.const 16)
   )
  )
 )
 (func $27 (; 54 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
      (block $label$5
       (br_if $label$5
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
        (i32.const 8356)
       )
       (set_local $3
        (i32.const 12)
       )
       (br $label$4)
      )
      (br_if $label$1
       (i32.eqz
        (get_local $2)
       )
      )
      (br_if $label$3
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
     (loop $label$6
      (i64.store
       (get_local $0)
       (tee_local $4
        (i64.shl
         (get_local $4)
         (i64.const 5)
        )
       )
      )
      (block $label$7
       (block $label$8
        (br_if $label$8
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
        (br $label$7)
       )
       (block $label$9
        (br_if $label$9
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
        (br $label$7)
       )
       (block $label$10
        (br_if $label$10
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
        (br $label$7)
       )
       (set_local $7
        (i32.const 0)
       )
       (call $fimport$0
        (i32.const 0)
        (i32.const 8461)
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
      (br_if $label$6
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
      (br $label$2)
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
   (br_if $label$1
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
      (i32.const 8394)
     )
     (br $label$11)
    )
    (call $fimport$0
     (i32.const 0)
     (i32.const 8461)
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
 (func $28 (; 55 ;) (type $1) (param $0 i32) (param $1 i32)
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
        (call $8
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
    (call $23
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
   (call $10
    (get_local $1)
   )
   (return)
  )
 )
 (func $29 (; 56 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    (i32.gt_s
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
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
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (set_local $5
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
       (tee_local $6
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
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
   )
   (set_local $4
    (i32.load
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $4)
    (get_local $5)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $3)
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.gt_s
     (i32.sub
      (i32.load
       (get_local $6)
      )
      (get_local $4)
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
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
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.load
    (i32.add
     (get_local $1)
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
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $4)
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
   )
   (set_local $4
    (i32.load
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $4)
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $3)
   (i32.add
    (i32.load
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (call $35
    (get_local $0)
    (i32.add
     (get_local $1)
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
  (get_local $0)
 )
 (func $30 (; 57 ;) (type $14) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (set_global $global$0
   (tee_local $1
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.const 0)
  )
  (i64.store
   (get_local $1)
   (i64.const 0)
  )
  (set_local $5
   (i64.extend_u/i32
    (i32.shr_s
     (tee_local $4
      (i32.sub
       (tee_local $2
        (i32.load
         (i32.add
          (get_local $0)
          (i32.const 20)
         )
        )
       )
       (tee_local $3
        (i32.load offset=16
         (get_local $0)
        )
       )
      )
     )
     (i32.const 4)
    )
   )
  )
  (set_local $6
   (i32.const 16)
  )
  (loop $label$1
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 1)
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
  (block $label$2
   (br_if $label$2
    (i32.eq
     (get_local $3)
     (get_local $2)
    )
   )
   (set_local $6
    (i32.add
     (i32.and
      (get_local $4)
      (i32.const -16)
     )
     (get_local $6)
    )
   )
  )
  (set_local $6
   (i32.sub
    (i32.add
     (get_local $6)
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 32)
       )
      )
     )
    )
    (tee_local $3
     (i32.load offset=28
      (get_local $0)
     )
    )
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (i32.sub
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (loop $label$3
   (set_local $6
    (i32.add
     (get_local $6)
     (i32.const 1)
    )
   )
   (br_if $label$3
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
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $6)
     )
    )
    (call $28
     (get_local $1)
     (get_local $6)
    )
    (set_local $2
     (i32.load offset=4
      (get_local $1)
     )
    )
    (set_local $6
     (i32.load
      (get_local $1)
     )
    )
    (br $label$4)
   )
   (set_local $2
    (i32.const 0)
   )
   (set_local $6
    (i32.const 0)
   )
  )
  (i32.store offset=20
   (get_local $1)
   (get_local $6)
  )
  (i32.store offset=16
   (get_local $1)
   (get_local $6)
  )
  (i32.store offset=24
   (get_local $1)
   (get_local $2)
  )
  (drop
   (call $32
    (i32.add
     (get_local $1)
     (i32.const 16)
    )
    (get_local $0)
   )
  )
  (call $fimport$26
   (tee_local $6
    (i32.load
     (get_local $1)
    )
   )
   (i32.sub
    (i32.load offset=4
     (get_local $1)
    )
    (get_local $6)
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.eqz
     (tee_local $6
      (i32.load
       (get_local $1)
      )
     )
    )
   )
   (i32.store offset=4
    (get_local $1)
    (get_local $6)
   )
   (call $10
    (get_local $6)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $1)
    (i32.const 32)
   )
  )
 )
 (func $31 (; 58 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
    (i32.gt_u
     (i32.sub
      (i32.load offset=8
       (get_local $0)
      )
      (tee_local $3
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8351)
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
    (get_local $1)
    (get_local $3)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (set_local $5
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (block $label$2
   (br_if $label$2
    (i32.gt_u
     (i32.sub
      (i32.load
       (tee_local $6
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
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8351)
   )
   (set_local $4
    (i32.load
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (get_local $5)
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store
   (get_local $3)
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (block $label$3
   (br_if $label$3
    (i32.gt_u
     (i32.sub
      (i32.load
       (get_local $6)
      )
      (get_local $4)
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8351)
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
    (get_local $3)
    (get_local $4)
    (i32.const 8)
   )
  )
  (i32.store
   (tee_local $3
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
   )
   (tee_local $4
    (i32.add
     (i32.load
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (i64.store offset=8
   (get_local $2)
   (i64.const 0)
  )
  (block $label$4
   (br_if $label$4
    (i32.gt_u
     (i32.sub
      (i32.load
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (get_local $4)
     )
     (i32.const 7)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8351)
   )
   (set_local $4
    (i32.load
     (get_local $3)
    )
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (get_local $4)
    (i32.const 8)
   )
  )
  (i64.store
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
   (i64.load offset=8
    (get_local $2)
   )
  )
  (i32.store
   (get_local $3)
   (i32.add
    (i32.load
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (set_local $0
   (call $33
    (get_local $0)
    (i32.add
     (get_local $1)
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
  (get_local $0)
 )
 (func $32 (; 59 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
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
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
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
  (call $37
   (call $36
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
 (func $33 (; 60 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
   (call $34
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
         (call $8
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
    (call $19
     (get_local $2)
    )
    (unreachable)
   )
   (i32.store offset=20
    (get_local $2)
    (get_local $3)
   )
   (call $10
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
 (func $34 (; 61 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
    (call $fimport$0
     (i32.const 0)
     (i32.const 8347)
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
    (call $28
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
   (call $fimport$0
    (i32.const 0)
    (i32.const 8351)
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
 (func $35 (; 62 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
    (call $fimport$0
     (i32.const 0)
     (i32.const 8582)
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
    (call $fimport$0
     (i32.const 0)
     (i32.const 8582)
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
 (func $36 (; 63 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
    (call $fimport$0
     (i32.const 0)
     (i32.const 8582)
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
     (call $fimport$0
      (i32.const 0)
      (i32.const 8582)
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
     (call $fimport$0
      (i32.const 0)
      (i32.const 8582)
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
 (func $37 (; 64 ;) (type $12) (param $0 i32) (param $1 i32) (result i32)
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
    (call $fimport$0
     (i32.const 0)
     (i32.const 8582)
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
   (call $fimport$0
    (i32.const 0)
    (i32.const 8582)
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
)

