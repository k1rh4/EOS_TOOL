(module
 (type $0 (func (param i32 i64 i32 i32)))
 (type $1 (func (param i32 i64 i32)))
 (type $2 (func))
 (type $3 (func (param i32 i32)))
 (type $4 (func (result i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32)))
 (type $8 (func (param i64)))
 (type $9 (func (param i64 i64 i64 i64) (result i32)))
 (type $10 (func (result i64)))
 (type $11 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $12 (func (param i32 i64 i64 i64 i64)))
 (type $13 (func (param i64 i64) (result i32)))
 (type $14 (func (param i32 f64)))
 (type $15 (func (param i32 f32)))
 (type $16 (func (param i64 i64) (result f64)))
 (type $17 (func (param i64 i64) (result f32)))
 (type $18 (func (param i64 i64 i64)))
 (type $19 (func (param i32 i32 i64 i32)))
 (type $20 (func (param i32 i32 i32 i32)))
 (type $21 (func (param i32) (result i32)))
 (type $22 (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
 (import "env" "eosio_assert" (func $fimport$0 (param i32 i32)))
 (import "env" "action_data_size" (func $fimport$1 (result i32)))
 (import "env" "read_action_data" (func $fimport$2 (param i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "prints" (func $fimport$4 (param i32)))
 (import "env" "printui" (func $fimport$5 (param i64)))
 (import "env" "db_find_i64" (func $fimport$6 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_next_i64" (func $fimport$7 (param i32 i32) (result i32)))
 (import "env" "current_receiver" (func $fimport$8 (result i64)))
 (import "env" "db_store_i64" (func $fimport$9 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_get_i64" (func $fimport$10 (param i32 i32 i32) (result i32)))
 (import "env" "db_update_i64" (func $fimport$11 (param i32 i64 i32 i32)))
 (import "env" "db_remove_i64" (func $fimport$12 (param i32)))
 (import "env" "abort" (func $fimport$13))
 (import "env" "memset" (func $fimport$14 (param i32 i32 i32) (result i32)))
 (import "env" "memmove" (func $fimport$15 (param i32 i32 i32) (result i32)))
 (import "env" "__unordtf2" (func $fimport$16 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__eqtf2" (func $fimport$17 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__multf3" (func $fimport$18 (param i32 i64 i64 i64 i64)))
 (import "env" "__addtf3" (func $fimport$19 (param i32 i64 i64 i64 i64)))
 (import "env" "__subtf3" (func $fimport$20 (param i32 i64 i64 i64 i64)))
 (import "env" "__netf2" (func $fimport$21 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__fixunstfsi" (func $fimport$22 (param i64 i64) (result i32)))
 (import "env" "__floatunsitf" (func $fimport$23 (param i32 i32)))
 (import "env" "__fixtfsi" (func $fimport$24 (param i64 i64) (result i32)))
 (import "env" "__floatsitf" (func $fimport$25 (param i32 i32)))
 (import "env" "__extenddftf2" (func $fimport$26 (param i32 f64)))
 (import "env" "__extendsftf2" (func $fimport$27 (param i32 f32)))
 (import "env" "__divtf3" (func $fimport$28 (param i32 i64 i64 i64 i64)))
 (import "env" "__letf2" (func $fimport$29 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfdf2" (func $fimport$30 (param i64 i64) (result f64)))
 (import "env" "__getf2" (func $fimport$31 (param i64 i64 i64 i64) (result i32)))
 (import "env" "__trunctfsf2" (func $fimport$32 (param i64 i64) (result f32)))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$33 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$34 (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 8256) "todo#\00")
 (data (i32.const 8262) " created\00")
 (data (i32.const 8271) "cannot create objects in table of another contract\00")
 (data (i32.const 8322) "write\00")
 (data (i32.const 8328) "Todo does not exist\00")
 (data (i32.const 8348) " marked as complete\00")
 (data (i32.const 8368) "object passed to iterator_to is not in multi_index\00")
 (data (i32.const 8419) "error reading iterator\00")
 (data (i32.const 8442) "read\00")
 (data (i32.const 8447) "get\00")
 (data (i32.const 8451) "cannot pass end iterator to modify\00")
 (data (i32.const 8486) "object passed to modify is not in multi_index\00")
 (data (i32.const 8532) "cannot modify objects in table of another contract\00")
 (data (i32.const 8583) "updater cannot change primary key when modifying an object\00")
 (data (i32.const 8642) " destroyed\00")
 (data (i32.const 8653) "cannot pass end iterator to erase\00")
 (data (i32.const 8687) "cannot increment end iterator\00")
 (data (i32.const 8717) "object passed to erase is not in multi_index\00")
 (data (i32.const 8762) "cannot erase objects in table of another contract\00")
 (data (i32.const 8812) "attempt to remove object that was not in multi_index\00")
 (data (i32.const 17276) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (table $0 4 4 anyfunc)
 (elem (i32.const 1) $2 $4 $6)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 17362))
 (global $global$2 i32 (i32.const 17362))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (export "_ZdlPv" (func $19))
 (export "_Znwj" (func $17))
 (export "_Znaj" (func $18))
 (export "_ZdaPv" (func $20))
 (func $0 (; 35 ;) (type $2)
 )
 (func $1 (; 36 ;) (type $18) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 96)
    )
   )
  )
  (call $0)
  (set_local $4
   (i64.const 7)
  )
  (loop $label$1
   (br_if $label$1
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const 1)
      )
     )
     (i64.const 13)
    )
   )
  )
  (block $label$2
   (br_if $label$2
    (i64.ne
     (i64.const -6569208335818555392)
     (get_local $2)
    )
   )
   (set_local $4
    (i64.const 5)
   )
   (loop $label$3
    (br_if $label$3
     (i64.ne
      (tee_local $4
       (i64.add
        (get_local $4)
        (i64.const 1)
       )
      )
      (i64.const 13)
     )
    )
   )
   (call $fimport$0
    (i64.eq
     (i64.const 6138663577826885632)
     (get_local $1)
    )
    (i32.const 8192)
   )
  )
  (block $label$4
   (block $label$5
    (br_if $label$5
     (i64.eq
      (get_local $1)
      (get_local $0)
     )
    )
    (set_local $4
     (i64.const 7)
    )
    (loop $label$6
     (br_if $label$6
      (i64.ne
       (tee_local $4
        (i64.add
         (get_local $4)
         (i64.const 1)
        )
       )
       (i64.const 13)
      )
     )
    )
    (br_if $label$4
     (i64.ne
      (i64.const -6569208335818555392)
      (get_local $2)
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $3)
     (i32.const 64)
    )
    (get_local $0)
   )
   (i64.store
    (i32.add
     (get_local $3)
     (i32.const 72)
    )
    (i64.const -1)
   )
   (i64.store
    (i32.add
     (get_local $3)
     (i32.const 80)
    )
    (i64.const 0)
   )
   (i32.store
    (i32.add
     (get_local $3)
     (i32.const 88)
    )
    (i32.const 0)
   )
   (i64.store offset=56
    (get_local $3)
    (get_local $0)
   )
   (i64.store offset=48
    (get_local $3)
    (get_local $0)
   )
   (block $label$7
    (block $label$8
     (block $label$9
      (br_if $label$9
       (i64.eq
        (get_local $2)
        (i64.const 4982486054922616832)
       )
      )
      (br_if $label$8
       (i64.eq
        (get_local $2)
        (i64.const 5382254363446083584)
       )
      )
      (block $label$10
       (br_if $label$10
        (i64.ne
         (get_local $2)
         (i64.const 5031766152489992192)
        )
       )
       (i32.store offset=44
        (get_local $3)
        (i32.const 0)
       )
       (i32.store offset=40
        (get_local $3)
        (i32.const 1)
       )
       (i64.store
        (get_local $3)
        (i64.load offset=40
         (get_local $3)
        )
       )
       (drop
        (call $3
         (i32.add
          (get_local $3)
          (i32.const 48)
         )
         (get_local $3)
        )
       )
      )
      (br_if $label$4
       (i32.eqz
        (tee_local $5
         (i32.load
          (i32.add
           (get_local $3)
           (i32.const 80)
          )
         )
        )
       )
      )
      (br $label$7)
     )
     (i32.store offset=36
      (get_local $3)
      (i32.const 0)
     )
     (i32.store offset=32
      (get_local $3)
      (i32.const 2)
     )
     (i64.store offset=8
      (get_local $3)
      (i64.load offset=32
       (get_local $3)
      )
     )
     (drop
      (call $5
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
     (br_if $label$7
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 80)
        )
       )
      )
     )
     (br $label$4)
    )
    (i32.store offset=28
     (get_local $3)
     (i32.const 0)
    )
    (i32.store offset=24
     (get_local $3)
     (i32.const 3)
    )
    (i64.store offset=16
     (get_local $3)
     (i64.load offset=24
      (get_local $3)
     )
    )
    (drop
     (call $5
      (i32.add
       (get_local $3)
       (i32.const 48)
      )
      (i32.add
       (get_local $3)
       (i32.const 16)
      )
     )
    )
    (br_if $label$4
     (i32.eqz
      (tee_local $5
       (i32.load
        (i32.add
         (get_local $3)
         (i32.const 80)
        )
       )
      )
     )
    )
   )
   (block $label$11
    (block $label$12
     (br_if $label$12
      (i32.eq
       (tee_local $7
        (i32.load
         (tee_local $6
          (i32.add
           (get_local $3)
           (i32.const 84)
          )
         )
        )
       )
       (get_local $5)
      )
     )
     (loop $label$13
      (set_local $8
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
      (block $label$14
       (br_if $label$14
        (i32.eqz
         (get_local $8)
        )
       )
       (block $label$15
        (br_if $label$15
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $8)
           )
           (i32.const 1)
          )
         )
        )
        (call $19
         (i32.load
          (i32.add
           (get_local $8)
           (i32.const 16)
          )
         )
        )
       )
       (call $19
        (get_local $8)
       )
      )
      (br_if $label$13
       (i32.ne
        (get_local $5)
        (get_local $7)
       )
      )
     )
     (set_local $7
      (i32.load
       (i32.add
        (get_local $3)
        (i32.const 80)
       )
      )
     )
     (br $label$11)
    )
    (set_local $7
     (get_local $5)
    )
   )
   (i32.store
    (get_local $6)
    (get_local $5)
   )
   (call $19
    (get_local $7)
   )
  )
  (call $27
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 96)
   )
  )
 )
 (func $2 (; 37 ;) (type $0) (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (set_global $global$0
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
    )
   )
  )
  (i32.store offset=28
   (get_local $4)
   (get_local $2)
  )
  (i32.store offset=20
   (get_local $4)
   (get_local $3)
  )
  (i32.store offset=16
   (get_local $4)
   (i32.add
    (get_local $4)
    (i32.const 28)
   )
  )
  (call $8
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
   (i32.add
    (get_local $4)
    (i32.const 16)
   )
  )
  (call $fimport$4
   (i32.const 8256)
  )
  (call $fimport$5
   (i64.load32_u offset=28
    (get_local $4)
   )
  )
  (call $fimport$4
   (i32.const 8262)
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 32)
   )
  )
 )
 (func $3 (; 38 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
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
       (call $28
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
  (i64.store
   (i32.add
    (get_local $3)
    (i32.const 24)
   )
   (i64.const 0)
  )
  (i64.store offset=8
   (get_local $3)
   (i64.const 0)
  )
  (i64.store offset=16
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=40
   (get_local $3)
   (i32.add
    (get_local $1)
    (get_local $6)
   )
  )
  (i32.store offset=32
   (get_local $3)
   (get_local $1)
  )
  (call $fimport$0
   (i32.gt_u
    (get_local $6)
    (i32.const 7)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (get_local $1)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.ne
    (i32.and
     (get_local $6)
     (i32.const -4)
    )
    (i32.const 8)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (tee_local $2
     (i32.add
      (i32.add
       (get_local $3)
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 8)
    )
    (i32.const 4)
   )
  )
  (i32.store offset=36
   (get_local $3)
   (i32.add
    (get_local $1)
    (i32.const 12)
   )
  )
  (drop
   (call $7
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
    (tee_local $7
     (i32.add
      (i32.add
       (get_local $3)
       (i32.const 8)
      )
      (i32.const 12)
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_u
     (get_local $6)
     (i32.const 513)
    )
   )
   (call $31
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
  (set_local $2
   (i32.load
    (get_local $2)
   )
  )
  (set_local $8
   (i64.load offset=8
    (get_local $3)
   )
  )
  (set_local $6
   (call $22
    (i32.add
     (get_local $3)
     (i32.const 32)
    )
    (get_local $7)
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
   (get_local $8)
   (get_local $2)
   (get_local $6)
   (get_local $5)
  )
  (block $label$7
   (br_if $label$7
    (i32.eqz
     (i32.and
      (i32.load8_u offset=32
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (call $19
    (i32.load offset=8
     (get_local $6)
    )
   )
  )
  (block $label$8
   (br_if $label$8
    (i32.eqz
     (i32.and
      (i32.load8_u offset=20
       (get_local $3)
      )
      (i32.const 1)
     )
    )
   )
   (call $19
    (i32.load
     (i32.add
      (get_local $3)
      (i32.const 28)
     )
    )
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
  )
  (i32.const 1)
 )
 (func $4 (; 39 ;) (type $1) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (get_local $2)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 36)
        )
       )
      )
     )
    )
    (block $label$3
     (loop $label$4
      (br_if $label$3
       (i64.eq
        (i64.load
         (tee_local $8
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $7)
             (i32.const -24)
            )
           )
          )
         )
        )
        (get_local $5)
       )
      )
      (set_local $7
       (get_local $2)
      )
      (br_if $label$4
       (i32.ne
        (get_local $6)
        (get_local $2)
       )
      )
      (br $label$2)
     )
    )
    (br_if $label$2
     (i32.eq
      (get_local $6)
      (get_local $7)
     )
    )
    (call $fimport$0
     (i32.eq
      (i32.load offset=32
       (get_local $8)
      )
      (get_local $4)
     )
     (i32.const 8368)
    )
    (br $label$1)
   )
   (set_local $8
    (i32.const 0)
   )
   (br_if $label$1
    (i32.lt_s
     (tee_local $2
      (call $fimport$6
       (i64.load
        (get_local $4)
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (i64.const -3669505708493111296)
       (get_local $5)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$0
    (i32.eq
     (i32.load offset=32
      (tee_local $8
       (call $9
        (get_local $4)
        (get_local $2)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 8368)
   )
  )
  (call $fimport$0
   (tee_local $2
    (i32.ne
     (get_local $8)
     (i32.const 0)
    )
   )
   (i32.const 8328)
  )
  (call $fimport$0
   (get_local $2)
   (i32.const 8451)
  )
  (call $10
   (get_local $4)
   (get_local $8)
   (get_local $1)
   (i32.add
    (get_local $3)
    (i32.const 8)
   )
  )
  (call $fimport$4
   (i32.const 8256)
  )
  (call $fimport$5
   (get_local $5)
  )
  (call $fimport$4
   (i32.const 8348)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $5 (; 40 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
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
  (set_local $6
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $1
      (call $fimport$1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.lt_u
       (get_local $1)
       (i32.const 513)
      )
     )
     (set_local $6
      (call $28
       (get_local $1)
      )
     )
     (br $label$2)
    )
    (set_global $global$0
     (tee_local $6
      (i32.sub
       (get_local $2)
       (i32.and
        (i32.add
         (get_local $1)
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
     (get_local $6)
     (get_local $1)
    )
   )
  )
  (i32.store offset=8
   (get_local $3)
   (i32.const 0)
  )
  (i64.store
   (get_local $3)
   (i64.const 0)
  )
  (call $fimport$0
   (i32.gt_u
    (get_local $1)
    (i32.const 7)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (get_local $3)
    (get_local $6)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.ne
    (i32.and
     (get_local $1)
     (i32.const -4)
    )
    (i32.const 8)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (tee_local $2
     (i32.add
      (get_local $3)
      (i32.const 8)
     )
    )
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.const 4)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $1)
     (i32.const 513)
    )
   )
   (call $31
    (get_local $6)
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
  (set_local $6
   (i32.load
    (get_local $2)
   )
  )
  (set_local $7
   (i64.load
    (get_local $3)
   )
  )
  (block $label$5
   (br_if $label$5
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
  (call_indirect (type $1)
   (get_local $1)
   (get_local $7)
   (get_local $6)
   (get_local $5)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
  (i32.const 1)
 )
 (func $6 (; 41 ;) (type $1) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $4
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
  )
  (set_local $5
   (i64.extend_u/i32
    (get_local $2)
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.eq
      (tee_local $6
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const 36)
        )
       )
      )
     )
    )
    (block $label$3
     (loop $label$4
      (br_if $label$3
       (i64.eq
        (i64.load
         (tee_local $8
          (i32.load
           (tee_local $2
            (i32.add
             (get_local $7)
             (i32.const -24)
            )
           )
          )
         )
        )
        (get_local $5)
       )
      )
      (set_local $7
       (get_local $2)
      )
      (br_if $label$4
       (i32.ne
        (get_local $6)
        (get_local $2)
       )
      )
      (br $label$2)
     )
    )
    (br_if $label$2
     (i32.eq
      (get_local $6)
      (get_local $7)
     )
    )
    (call $fimport$0
     (i32.eq
      (i32.load offset=32
       (get_local $8)
      )
      (get_local $4)
     )
     (i32.const 8368)
    )
    (br $label$1)
   )
   (set_local $8
    (i32.const 0)
   )
   (br_if $label$1
    (i32.lt_s
     (tee_local $2
      (call $fimport$6
       (i64.load
        (get_local $4)
       )
       (i64.load
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (i64.const -3669505708493111296)
       (get_local $5)
      )
     )
     (i32.const 0)
    )
   )
   (call $fimport$0
    (i32.eq
     (i32.load offset=32
      (tee_local $8
       (call $9
        (get_local $4)
        (get_local $2)
       )
      )
     )
     (get_local $4)
    )
    (i32.const 8368)
   )
  )
  (call $fimport$0
   (tee_local $2
    (i32.ne
     (get_local $8)
     (i32.const 0)
    )
   )
   (i32.const 8653)
  )
  (call $fimport$0
   (get_local $2)
   (i32.const 8687)
  )
  (block $label$5
   (br_if $label$5
    (i32.lt_s
     (tee_local $2
      (call $fimport$7
       (i32.load offset=36
        (get_local $8)
       )
       (i32.add
        (get_local $3)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $9
     (get_local $4)
     (get_local $2)
    )
   )
  )
  (call $11
   (get_local $4)
   (get_local $8)
  )
  (call $fimport$4
   (i32.const 8256)
  )
  (call $fimport$5
   (get_local $5)
  )
  (call $fimport$4
   (i32.const 8642)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $7 (; 42 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
   (call $15
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
         (call $17
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
       (call $25
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
     (call $25
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
    (call $21
     (get_local $2)
    )
    (unreachable)
   )
   (i32.store offset=20
    (get_local $2)
    (get_local $3)
   )
   (call $19
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
 (func $8 (; 43 ;) (type $19) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
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
  (call $fimport$0
   (i64.eq
    (i64.load
     (get_local $1)
    )
    (call $fimport$8)
   )
   (i32.const 8271)
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
  (i32.store offset=16
   (tee_local $3
    (call $17
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8 align=4
   (get_local $3)
   (i64.const 0)
  )
  (i32.store offset=32
   (get_local $3)
   (get_local $1)
  )
  (call $12
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
   (call $13
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
  (set_local $3
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
     (get_local $3)
    )
   )
   (block $label$4
    (br_if $label$4
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $3)
       )
       (i32.const 1)
      )
     )
    )
    (call $19
     (i32.load
      (i32.add
       (get_local $3)
       (i32.const 16)
      )
     )
    )
   )
   (call $19
    (get_local $3)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $4)
    (i32.const 48)
   )
  )
 )
 (func $9 (; 44 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 48)
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
     (i32.const 48)
    )
   )
   (return
    (get_local $5)
   )
  )
  (call $fimport$0
   (i32.xor
    (i32.shr_u
     (tee_local $4
      (call $fimport$10
       (get_local $1)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.const 31)
    )
    (i32.const 1)
   )
   (i32.const 8419)
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
     (call $28
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
   (call $fimport$10
    (get_local $1)
    (get_local $2)
    (get_local $4)
   )
  )
  (i32.store offset=40
   (get_local $3)
   (i32.add
    (get_local $2)
    (get_local $4)
   )
  )
  (i32.store offset=32
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=16
   (tee_local $5
    (call $17
     (i32.const 48)
    )
   )
   (i32.const 0)
  )
  (i64.store offset=8 align=4
   (get_local $5)
   (i64.const 0)
  )
  (i32.store offset=32
   (get_local $5)
   (get_local $0)
  )
  (call $fimport$0
   (i32.gt_u
    (get_local $4)
    (i32.const 7)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (get_local $5)
    (get_local $2)
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $3)
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $6
       (call $7
        (i32.add
         (get_local $3)
         (i32.const 32)
        )
        (i32.add
         (get_local $5)
         (i32.const 8)
        )
       )
      )
     )
     (i32.load offset=4
      (get_local $6)
     )
    )
    (i32.const 7)
   )
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
    (i32.add
     (get_local $5)
     (i32.const 24)
    )
    (i32.load offset=4
     (get_local $6)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $5)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $6)
   (i32.add
    (i32.load offset=4
     (get_local $6)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=24
   (get_local $3)
   (get_local $5)
  )
  (i64.store offset=16
   (get_local $3)
   (tee_local $7
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
       (tee_local $6
        (i32.load
         (tee_local $8
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
      (get_local $6)
      (get_local $7)
     )
     (i32.store offset=16
      (get_local $6)
      (get_local $1)
     )
     (i32.store offset=24
      (get_local $3)
      (i32.const 0)
     )
     (i32.store
      (get_local $6)
      (get_local $5)
     )
     (i32.store
      (get_local $8)
      (i32.add
       (get_local $6)
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
    (call $13
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
   (call $31
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
   (block $label$10
    (br_if $label$10
     (i32.eqz
      (i32.and
       (i32.load8_u offset=8
        (get_local $1)
       )
       (i32.const 1)
      )
     )
    )
    (call $19
     (i32.load
      (i32.add
       (get_local $1)
       (i32.const 16)
      )
     )
    )
   )
   (call $19
    (get_local $1)
   )
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 48)
   )
  )
  (get_local $5)
 )
 (func $10 (; 45 ;) (type $19) (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (set_local $5
   (tee_local $4
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_global $global$0
   (get_local $4)
  )
  (call $fimport$0
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 8486)
  )
  (call $fimport$0
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $fimport$8)
   )
   (i32.const 8532)
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 1)
  )
  (set_local $6
   (i64.load
    (get_local $1)
   )
  )
  (call $fimport$0
   (i32.const 1)
   (i32.const 8583)
  )
  (set_local $7
   (i32.add
    (tee_local $8
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.shr_u
       (tee_local $7
        (i32.load8_u offset=8
         (get_local $1)
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
    (i32.const 16)
   )
  )
  (set_local $9
   (i64.extend_u/i32
    (get_local $8)
   )
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (i32.const 8)
   )
  )
  (set_local $10
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (loop $label$1
   (set_local $7
    (i32.add
     (get_local $7)
     (i32.const 1)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $9
      (i64.shr_u
       (get_local $9)
       (i64.const 7)
      )
     )
     (i64.const 0)
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
    (set_local $4
     (call $28
      (get_local $7)
     )
    )
    (br $label$2)
   )
   (set_global $global$0
    (tee_local $4
     (i32.sub
      (get_local $4)
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
  (i32.store
   (get_local $5)
   (get_local $4)
  )
  (i32.store offset=8
   (get_local $5)
   (i32.add
    (get_local $4)
    (get_local $7)
   )
  )
  (call $fimport$0
   (i32.gt_s
    (get_local $7)
    (i32.const 7)
   )
   (i32.const 8322)
  )
  (drop
   (call $fimport$3
    (get_local $4)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $5)
   (i32.add
    (get_local $4)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $8
       (call $14
        (get_local $5)
        (get_local $8)
       )
      )
     )
     (i32.load offset=4
      (get_local $8)
     )
    )
    (i32.const 7)
   )
   (i32.const 8322)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $8)
    )
    (get_local $10)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $8)
   (i32.add
    (i32.load offset=4
     (get_local $8)
    )
    (i32.const 8)
   )
  )
  (call $fimport$11
   (i32.load offset=36
    (get_local $1)
   )
   (get_local $2)
   (get_local $4)
   (get_local $7)
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.ge_u
       (get_local $7)
       (i32.const 513)
      )
     )
     (br_if $label$5
      (i64.ge_u
       (get_local $6)
       (i64.load offset=16
        (get_local $0)
       )
      )
     )
     (br $label$4)
    )
    (call $31
     (get_local $4)
    )
    (br_if $label$4
     (i64.lt_u
      (get_local $6)
      (i64.load offset=16
       (get_local $0)
      )
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
      (get_local $6)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $6)
      (i64.const -3)
     )
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $5)
    (i32.const 16)
   )
  )
 )
 (func $11 (; 46 ;) (type $3) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $fimport$0
   (i32.eq
    (i32.load offset=32
     (get_local $1)
    )
    (get_local $0)
   )
   (i32.const 8717)
  )
  (call $fimport$0
   (i64.eq
    (i64.load
     (get_local $0)
    )
    (call $fimport$8)
   )
   (i32.const 8762)
  )
  (set_local $3
   (tee_local $2
    (i32.load offset=24
     (get_local $0)
    )
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.eq
     (get_local $2)
     (tee_local $5
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 28)
        )
       )
      )
     )
    )
   )
   (block $label$2
    (br_if $label$2
     (i64.ne
      (i64.load
       (i32.load
        (i32.add
         (get_local $5)
         (i32.const -24)
        )
       )
      )
      (tee_local $6
       (i64.load
        (get_local $1)
       )
      )
     )
    )
    (set_local $3
     (get_local $5)
    )
    (br $label$1)
   )
   (set_local $7
    (i32.add
     (get_local $2)
     (i32.const 24)
    )
   )
   (block $label$3
    (loop $label$4
     (br_if $label$3
      (i32.eq
       (get_local $7)
       (get_local $5)
      )
     )
     (set_local $8
      (i32.add
       (get_local $5)
       (i32.const -48)
      )
     )
     (set_local $5
      (tee_local $3
       (i32.add
        (get_local $5)
        (i32.const -24)
       )
      )
     )
     (br_if $label$4
      (i64.ne
       (i64.load
        (i32.load
         (get_local $8)
        )
       )
       (get_local $6)
      )
     )
     (br $label$1)
    )
   )
   (set_local $3
    (get_local $2)
   )
  )
  (call $fimport$0
   (i32.ne
    (get_local $3)
    (get_local $2)
   )
   (i32.const 8812)
  )
  (block $label$5
   (block $label$6
    (block $label$7
     (br_if $label$7
      (i32.eq
       (get_local $3)
       (tee_local $2
        (i32.load
         (get_local $4)
        )
       )
      )
     )
     (set_local $5
      (get_local $3)
     )
     (loop $label$8
      (set_local $8
       (i32.load
        (get_local $5)
       )
      )
      (i32.store
       (get_local $5)
       (i32.const 0)
      )
      (set_local $3
       (i32.load
        (tee_local $7
         (i32.add
          (get_local $5)
          (i32.const -24)
         )
        )
       )
      )
      (i32.store
       (get_local $7)
       (get_local $8)
      )
      (block $label$9
       (br_if $label$9
        (i32.eqz
         (get_local $3)
        )
       )
       (block $label$10
        (br_if $label$10
         (i32.eqz
          (i32.and
           (i32.load8_u offset=8
            (get_local $3)
           )
           (i32.const 1)
          )
         )
        )
        (call $19
         (i32.load
          (i32.add
           (get_local $3)
           (i32.const 16)
          )
         )
        )
       )
       (call $19
        (get_local $3)
       )
      )
      (i32.store
       (i32.add
        (get_local $5)
        (i32.const -8)
       )
       (i32.load
        (i32.add
         (get_local $5)
         (i32.const 16)
        )
       )
      )
      (i64.store
       (i32.add
        (get_local $5)
        (i32.const -16)
       )
       (i64.load
        (i32.add
         (get_local $5)
         (i32.const 8)
        )
       )
      )
      (br_if $label$8
       (i32.ne
        (get_local $2)
        (tee_local $5
         (i32.add
          (get_local $5)
          (i32.const 24)
         )
        )
       )
      )
     )
     (set_local $8
      (i32.add
       (get_local $5)
       (i32.const -24)
      )
     )
     (br_if $label$6
      (i32.ne
       (i32.add
        (tee_local $3
         (i32.load
          (i32.add
           (get_local $0)
           (i32.const 28)
          )
         )
        )
        (i32.const 24)
       )
       (get_local $5)
      )
     )
     (br $label$5)
    )
    (set_local $8
     (i32.add
      (get_local $3)
      (i32.const -24)
     )
    )
   )
   (loop $label$11
    (set_local $5
     (i32.load
      (tee_local $3
       (i32.add
        (get_local $3)
        (i32.const -24)
       )
      )
     )
    )
    (i32.store
     (get_local $3)
     (i32.const 0)
    )
    (block $label$12
     (br_if $label$12
      (i32.eqz
       (get_local $5)
      )
     )
     (block $label$13
      (br_if $label$13
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $5)
         )
         (i32.const 1)
        )
       )
      )
      (call $19
       (i32.load
        (i32.add
         (get_local $5)
         (i32.const 16)
        )
       )
      )
     )
     (call $19
      (get_local $5)
     )
    )
    (br_if $label$11
     (i32.ne
      (get_local $8)
      (get_local $3)
     )
    )
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 28)
   )
   (get_local $8)
  )
  (call $fimport$12
   (i32.load offset=36
    (get_local $1)
   )
  )
 )
 (func $12 (; 47 ;) (type $3) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
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
  (i64.store
   (get_local $1)
   (i64.load32_u
    (i32.load
     (tee_local $4
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (drop
   (call $23
    (tee_local $6
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
    (i32.load offset=4
     (get_local $4)
    )
   )
  )
  (i64.store offset=24
   (get_local $1)
   (i64.const 0)
  )
  (set_local $4
   (i32.add
    (tee_local $7
     (select
      (i32.load
       (i32.add
        (get_local $1)
        (i32.const 12)
       )
      )
      (i32.shr_u
       (tee_local $4
        (i32.load8_u offset=8
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
    (i32.const 16)
   )
  )
  (set_local $8
   (i64.extend_u/i32
    (get_local $7)
   )
  )
  (set_local $7
   (i32.add
    (get_local $1)
    (i32.const 24)
   )
  )
  (loop $label$1
   (set_local $4
    (i32.add
     (get_local $4)
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
   (block $label$3
    (br_if $label$3
     (i32.lt_u
      (get_local $4)
      (i32.const 513)
     )
    )
    (set_local $2
     (call $28
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
  (i32.store
   (get_local $3)
   (get_local $2)
  )
  (i32.store offset=8
   (get_local $3)
   (i32.add
    (get_local $2)
    (get_local $4)
   )
  )
  (call $fimport$0
   (i32.gt_s
    (get_local $4)
    (i32.const 7)
   )
   (i32.const 8322)
  )
  (drop
   (call $fimport$3
    (get_local $2)
    (get_local $1)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
  )
  (call $fimport$0
   (i32.gt_s
    (i32.sub
     (i32.load offset=8
      (tee_local $6
       (call $14
        (get_local $3)
        (get_local $6)
       )
      )
     )
     (i32.load offset=4
      (get_local $6)
     )
    )
    (i32.const 7)
   )
   (i32.const 8322)
  )
  (drop
   (call $fimport$3
    (i32.load offset=4
     (get_local $6)
    )
    (get_local $7)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $6)
   (i32.add
    (i32.load offset=4
     (get_local $6)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=36
   (get_local $1)
   (call $fimport$9
    (i64.load offset=8
     (get_local $5)
    )
    (i64.const -3669505708493111296)
    (i64.load
     (i32.load offset=8
      (get_local $0)
     )
    )
    (tee_local $8
     (i64.load
      (get_local $1)
     )
    )
    (get_local $2)
    (get_local $4)
   )
  )
  (block $label$4
   (block $label$5
    (block $label$6
     (br_if $label$6
      (i32.ge_u
       (get_local $4)
       (i32.const 513)
      )
     )
     (br_if $label$5
      (i64.ge_u
       (get_local $8)
       (i64.load offset=16
        (get_local $5)
       )
      )
     )
     (br $label$4)
    )
    (call $31
     (get_local $2)
    )
    (br_if $label$4
     (i64.lt_u
      (get_local $8)
      (i64.load offset=16
       (get_local $5)
      )
     )
    )
   )
   (i64.store
    (i32.add
     (get_local $5)
     (i32.const 16)
    )
    (select
     (i64.const -2)
     (i64.add
      (get_local $8)
      (i64.const 1)
     )
     (i64.gt_u
      (get_local $8)
      (i64.const -3)
     )
    )
   )
   (set_global $global$0
    (i32.add
     (get_local $3)
     (i32.const 16)
    )
   )
   (return)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 16)
   )
  )
 )
 (func $13 (; 48 ;) (type $20) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
      (call $17
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
   (call $26
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
     (block $label$11
      (br_if $label$11
       (i32.eqz
        (i32.and
         (i32.load8_u offset=8
          (get_local $1)
         )
         (i32.const 1)
        )
       )
      )
      (call $19
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
      )
     )
     (call $19
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
  (block $label$12
   (br_if $label$12
    (i32.eqz
     (get_local $2)
    )
   )
   (call $19
    (get_local $2)
   )
  )
 )
 (func $14 (; 49 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 8322)
   )
   (drop
    (call $fimport$3
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
    (i32.const 8322)
   )
   (drop
    (call $fimport$3
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
 (func $15 (; 50 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 8447)
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
    (call $16
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
   (i32.const 8442)
  )
  (drop
   (call $fimport$3
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
 (func $16 (; 51 ;) (type $3) (param $0 i32) (param $1 i32)
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
        (call $17
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
    (call $26
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
   (call $19
    (get_local $1)
   )
   (return)
  )
 )
 (func $17 (; 52 ;) (type $21) (param $0 i32) (result i32)
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
       (i32.load offset=8868
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
 (func $18 (; 53 ;) (type $21) (param $0 i32) (result i32)
  (call $17
   (get_local $0)
  )
 )
 (func $19 (; 54 ;) (type $7) (param $0 i32)
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
 (func $20 (; 55 ;) (type $7) (param $0 i32)
  (call $19
   (get_local $0)
  )
 )
 (func $21 (; 56 ;) (type $7) (param $0 i32)
  (call $fimport$13)
  (unreachable)
 )
 (func $22 (; 57 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
     (call $17
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
  (call $fimport$13)
  (unreachable)
 )
 (func $23 (; 58 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
      (br_if $label$4
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (set_local $2
       (select
        (i32.load offset=4
         (get_local $1)
        )
        (i32.shr_u
         (tee_local $2
          (i32.load8_u
           (get_local $1)
          )
         )
         (i32.const 1)
        )
        (tee_local $3
         (i32.and
          (get_local $2)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $4
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (set_local $5
       (i32.load offset=8
        (get_local $1)
       )
      )
      (set_local $1
       (i32.const 10)
      )
      (block $label$5
       (br_if $label$5
        (i32.eqz
         (tee_local $7
          (i32.and
           (tee_local $6
            (i32.load8_u
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
        )
       )
       (set_local $1
        (i32.add
         (i32.and
          (i32.load
           (get_local $0)
          )
          (i32.const -2)
         )
         (i32.const -1)
        )
       )
      )
      (set_local $3
       (select
        (get_local $5)
        (get_local $4)
        (get_local $3)
       )
      )
      (block $label$6
       (block $label$7
        (block $label$8
         (br_if $label$8
          (i32.le_u
           (get_local $2)
           (get_local $1)
          )
         )
         (br_if $label$7
          (get_local $7)
         )
         (set_local $4
          (i32.shr_u
           (get_local $6)
           (i32.const 1)
          )
         )
         (br $label$6)
        )
        (br_if $label$3
         (get_local $7)
        )
        (set_local $1
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (br_if $label$2
         (get_local $2)
        )
        (br $label$1)
       )
       (set_local $4
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
      (call $24
       (get_local $0)
       (get_local $1)
       (i32.sub
        (get_local $2)
        (get_local $1)
       )
       (get_local $4)
       (i32.const 0)
       (get_local $4)
       (get_local $2)
       (get_local $3)
      )
     )
     (return
      (get_local $0)
     )
    )
    (set_local $1
     (i32.load offset=8
      (get_local $0)
     )
    )
    (br_if $label$1
     (i32.eqz
      (get_local $2)
     )
    )
   )
   (drop
    (call $fimport$15
     (get_local $1)
     (get_local $3)
     (get_local $2)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $1)
    (get_local $2)
   )
   (i32.const 0)
  )
  (block $label$9
   (br_if $label$9
    (i32.and
     (i32.load8_u
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (i32.store8
    (get_local $0)
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (return
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $2)
  )
  (get_local $0)
 )
 (func $24 (; 59 ;) (type $22) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (block $label$1
   (br_if $label$1
    (i32.lt_u
     (i32.sub
      (i32.const -18)
      (get_local $1)
     )
     (get_local $2)
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.and
        (i32.load8_u
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (set_local $8
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (set_local $9
       (i32.const -17)
      )
      (br_if $label$3
       (i32.le_u
        (get_local $1)
        (i32.const 2147483622)
       )
      )
      (br $label$2)
     )
     (set_local $8
      (i32.load offset=8
       (get_local $0)
      )
     )
     (set_local $9
      (i32.const -17)
     )
     (br_if $label$2
      (i32.gt_u
       (get_local $1)
       (i32.const 2147483622)
      )
     )
    )
    (set_local $9
     (i32.const 11)
    )
    (br_if $label$2
     (i32.lt_u
      (tee_local $2
       (select
        (tee_local $10
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (tee_local $2
         (i32.add
          (get_local $2)
          (get_local $1)
         )
        )
        (i32.lt_u
         (get_local $2)
         (get_local $10)
        )
       )
      )
      (i32.const 11)
     )
    )
    (set_local $9
     (i32.and
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
      (i32.const -16)
     )
    )
   )
   (set_local $2
    (call $17
     (get_local $9)
    )
   )
   (block $label$5
    (br_if $label$5
     (i32.eqz
      (get_local $4)
     )
    )
    (drop
     (call $fimport$3
      (get_local $2)
      (get_local $8)
      (get_local $4)
     )
    )
   )
   (block $label$6
    (br_if $label$6
     (i32.eqz
      (get_local $6)
     )
    )
    (drop
     (call $fimport$3
      (i32.add
       (get_local $2)
       (get_local $4)
      )
      (get_local $7)
      (get_local $6)
     )
    )
   )
   (block $label$7
    (br_if $label$7
     (i32.eqz
      (tee_local $7
       (i32.sub
        (tee_local $3
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (drop
     (call $fimport$3
      (i32.add
       (i32.add
        (get_local $2)
        (get_local $4)
       )
       (get_local $6)
      )
      (i32.add
       (i32.add
        (get_local $8)
        (get_local $4)
       )
       (get_local $5)
      )
      (get_local $7)
     )
    )
   )
   (block $label$8
    (br_if $label$8
     (i32.eq
      (get_local $1)
      (i32.const 10)
     )
    )
    (call $19
     (get_local $8)
    )
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (get_local $9)
     (i32.const 1)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (tee_local $4
     (i32.add
      (get_local $3)
      (get_local $6)
     )
    )
   )
   (i32.store8
    (i32.add
     (get_local $2)
     (get_local $4)
    )
    (i32.const 0)
   )
   (return)
  )
  (call $fimport$13)
  (unreachable)
 )
 (func $25 (; 60 ;) (type $3) (param $0 i32) (param $1 i32)
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
          (call $17
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
     (call $fimport$13)
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
   (call $19
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
 (func $26 (; 61 ;) (type $7) (param $0 i32)
  (call $fimport$13)
  (unreachable)
 )
 (func $27 (; 62 ;) (type $7) (param $0 i32)
 )
 (func $28 (; 63 ;) (type $21) (param $0 i32) (result i32)
  (call $29
   (i32.const 8880)
   (get_local $0)
  )
 )
 (func $29 (; 64 ;) (type $5) (param $0 i32) (param $1 i32) (result i32)
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
       (i32.const 17276)
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
 (func $30 (; 65 ;) (type $21) (param $0 i32) (result i32)
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
      (i32.load8_u offset=8872
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8876
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8872
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8876
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
       (i32.load offset=8876
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8876
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
       (i32.load8_u offset=8872
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8872
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8876
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
       (i32.load offset=8876
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8876
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
 (func $31 (; 66 ;) (type $7) (param $0 i32)
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
       (i32.load offset=17264
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 17072)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 17072)
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

