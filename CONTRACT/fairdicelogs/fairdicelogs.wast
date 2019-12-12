(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32) (result i32)))
 (type $4 (func (param i64)))
 (type $5 (func))
 (type $6 (func (param i64 i64 i64)))
 (type $7 (func (param i32) (result i32)))
 (type $8 (func (param i32)))
 (import "env" "eosio_assert" (func $fimport$0 (param i32 i32)))
 (import "env" "action_data_size" (func $fimport$1 (result i32)))
 (import "env" "read_action_data" (func $fimport$2 (param i32 i32) (result i32)))
 (import "env" "memset" (func $fimport$3 (param i32 i32 i32) (result i32)))
 (import "env" "memcpy" (func $fimport$4 (param i32 i32 i32) (result i32)))
 (import "env" "require_auth" (func $fimport$5 (param i64)))
 (import "env" "require_recipient" (func $fimport$6 (param i64)))
 (import "env" "set_blockchain_parameters_packed" (func $fimport$7 (param i32 i32)))
 (import "env" "get_blockchain_parameters_packed" (func $fimport$8 (param i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8192) "onerror action\'s are only valid from the \"eosio\" system account\00")
 (data (i32.const 8256) "fairdicegame\00")
 (data (i32.const 8269) "magnitude of asset amount must be less than 2^62\00")
 (data (i32.const 8318) "invalid symbol name\00")
 (data (i32.const 8338) "read\00")
 (data (i32.const 16748) "malloc_from_freed was designed to only be called after _heap was completely allocated\00")
 (table $0 2 2 anyfunc)
 (elem (i32.const 1) $2)
 (global $global$0 (mut i32) (i32.const 8192))
 (global $global$1 i32 (i32.const 16834))
 (global $global$2 i32 (i32.const 16834))
 (export "memory" (memory $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "apply" (func $1))
 (func $0 (; 9 ;) (type $5)
 )
 (func $1 (; 10 ;) (type $6) (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i64)
  (set_global $global$0
   (tee_local $3
    (i32.sub
     (get_global $global$0)
     (i32.const 32)
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
   (i64.store offset=24
    (get_local $3)
    (get_local $0)
   )
   (br_if $label$4
    (i64.ne
     (get_local $2)
     (i64.const -4994024814571159552)
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
  )
  (call $6
   (i32.const 0)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 32)
   )
  )
 )
 (func $2 (; 11 ;) (type $0) (param $0 i32) (param $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (set_local $2
   (i64.const 0)
  )
  (set_local $3
   (i64.const 59)
  )
  (set_local $4
   (i32.const 8256)
  )
  (set_local $5
   (i64.const 0)
  )
  (loop $label$1
   (set_local $6
    (i64.const 0)
   )
   (block $label$2
    (br_if $label$2
     (i64.gt_u
      (get_local $2)
      (i64.const 11)
     )
    )
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.gt_u
        (i32.and
         (i32.add
          (tee_local $7
           (i32.load8_u
            (get_local $4)
           )
          )
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
      (br $label$3)
     )
     (set_local $7
      (select
       (i32.add
        (get_local $7)
        (i32.const -48)
       )
       (i32.const 0)
       (i32.lt_u
        (i32.and
         (i32.add
          (get_local $7)
          (i32.const -49)
         )
         (i32.const 255)
        )
        (i32.const 5)
       )
      )
     )
    )
    (set_local $6
     (i64.shl
      (i64.and
       (i64.extend_u/i32
        (get_local $7)
       )
       (i64.const 31)
      )
      (i64.and
       (get_local $3)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $4
    (i32.add
     (get_local $4)
     (i32.const 1)
    )
   )
   (set_local $2
    (i64.add
     (get_local $2)
     (i64.const 1)
    )
   )
   (set_local $5
    (i64.or
     (get_local $6)
     (get_local $5)
    )
   )
   (br_if $label$1
    (i64.ne
     (tee_local $3
      (i64.add
       (get_local $3)
       (i64.const 4294967291)
      )
     )
     (i64.const 55834574842)
    )
   )
  )
  (call $fimport$5
   (get_local $5)
  )
  (call $fimport$6
   (i64.load offset=8
    (get_local $1)
   )
  )
 )
 (func $3 (; 12 ;) (type $2) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (tee_local $2
    (i32.sub
     (get_global $global$0)
     (i32.const 800)
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
  (set_local $1
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (tee_local $6
      (call $fimport$1)
     )
    )
   )
   (block $label$2
    (block $label$3
     (br_if $label$3
      (i32.lt_u
       (get_local $6)
       (i32.const 513)
      )
     )
     (set_local $1
      (call $7
       (get_local $6)
      )
     )
     (br $label$2)
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
  (drop
   (call $fimport$3
    (i32.add
     (get_local $3)
     (i32.const 160)
    )
    (i32.const 0)
    (i32.const 160)
   )
  )
  (drop
   (call $4
    (i32.add
     (get_local $3)
     (i32.const 160)
    )
   )
  )
  (i32.store offset=484
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=480
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=488
   (get_local $3)
   (i32.add
    (get_local $1)
    (get_local $6)
   )
  )
  (i32.store offset=320
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 480)
   )
  )
  (i32.store offset=644
   (get_local $3)
   (i32.or
    (i32.add
     (get_local $3)
     (i32.const 160)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=648
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 176)
   )
  )
  (i32.store offset=652
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 184)
   )
  )
  (i32.store offset=656
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 200)
   )
  )
  (i32.store offset=660
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 201)
   )
  )
  (i32.store offset=664
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 208)
   )
  )
  (i32.store offset=668
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 240)
   )
  )
  (i32.store offset=672
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 272)
   )
  )
  (i32.store offset=676
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 304)
   )
  )
  (i32.store offset=640
   (get_local $3)
   (i32.add
    (get_local $3)
    (i32.const 160)
   )
  )
  (call $5
   (i32.add
    (get_local $3)
    (i32.const 640)
   )
   (i32.add
    (get_local $3)
    (i32.const 320)
   )
  )
  (block $label$4
   (br_if $label$4
    (i32.lt_u
     (get_local $6)
     (i32.const 513)
    )
   )
   (call $10
    (get_local $1)
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 320)
    )
    (i32.add
     (get_local $3)
     (i32.const 160)
    )
    (i32.const 160)
   )
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 480)
    )
    (i32.add
     (get_local $3)
     (i32.const 320)
    )
    (i32.const 160)
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
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 640)
    )
    (i32.add
     (get_local $3)
     (i32.const 480)
    )
    (i32.const 160)
   )
  )
  (call_indirect (type $0)
   (get_local $1)
   (tee_local $3
    (call $fimport$4
     (get_local $3)
     (i32.add
      (get_local $3)
      (i32.const 640)
     )
     (i32.const 160)
    )
   )
   (get_local $5)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 800)
   )
  )
  (i32.const 1)
 )
 (func $4 (; 13 ;) (type $7) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (i64.store offset=24
   (get_local $0)
   (i64.const 0)
  )
  (i64.store
   (tee_local $1
    (i32.add
     (get_local $0)
     (i32.const 32)
    )
   )
   (i64.const 1397703940)
  )
  (call $fimport$0
   (i32.const 1)
   (i32.const 8269)
  )
  (set_local $2
   (i64.shr_u
    (i64.load
     (get_local $1)
    )
    (i64.const 8)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$1
   (block $label$2
    (loop $label$3
     (br_if $label$2
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (set_local $3
      (i64.shr_u
       (get_local $2)
       (i64.const 8)
      )
     )
     (block $label$4
      (br_if $label$4
       (i64.eq
        (i64.and
         (get_local $2)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $2
       (get_local $3)
      )
      (set_local $4
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (tee_local $5
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (br_if $label$3
       (i32.lt_s
        (get_local $5)
        (i32.const 6)
       )
      )
      (br $label$1)
     )
     (set_local $2
      (get_local $3)
     )
     (loop $label$5
      (br_if $label$2
       (i64.ne
        (i64.and
         (get_local $2)
         (i64.const 65280)
        )
        (i64.const 0)
       )
      )
      (set_local $2
       (i64.shr_u
        (get_local $2)
        (i64.const 8)
       )
      )
      (set_local $4
       (i32.lt_s
        (get_local $1)
        (i32.const 6)
       )
      )
      (set_local $1
       (tee_local $5
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br_if $label$5
       (get_local $4)
      )
     )
     (set_local $4
      (i32.const 1)
     )
     (set_local $1
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (br_if $label$3
      (i32.lt_s
       (get_local $5)
       (i32.const 6)
      )
     )
     (br $label$1)
    )
   )
   (set_local $4
    (i32.const 0)
   )
  )
  (call $fimport$0
   (get_local $4)
   (i32.const 8318)
  )
  (i64.store
   (tee_local $1
    (i32.add
     (get_local $0)
     (i32.const 152)
    )
   )
   (i64.const 1397703940)
  )
  (i64.store offset=144
   (get_local $0)
   (i64.const 0)
  )
  (call $fimport$0
   (i32.const 1)
   (i32.const 8269)
  )
  (set_local $2
   (i64.shr_u
    (i64.load
     (get_local $1)
    )
    (i64.const 8)
   )
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$6
   (block $label$7
    (loop $label$8
     (br_if $label$6
      (i32.gt_u
       (i32.add
        (i32.shl
         (i32.wrap/i64
          (get_local $2)
         )
         (i32.const 24)
        )
        (i32.const -1073741825)
       )
       (i32.const 452984830)
      )
     )
     (block $label$9
      (set_local $3
       (i64.shr_u
        (get_local $2)
        (i64.const 8)
       )
      )
      (block $label$10
       (br_if $label$10
        (i64.eq
         (i64.and
          (get_local $2)
          (i64.const 65280)
         )
         (i64.const 0)
        )
       )
       (set_local $2
        (get_local $3)
       )
       (set_local $6
        (i32.const 1)
       )
       (set_local $1
        (i32.add
         (tee_local $4
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (br_if $label$8
        (i32.lt_s
         (get_local $4)
         (i32.const 6)
        )
       )
       (br $label$9)
      )
      (set_local $2
       (get_local $3)
      )
      (loop $label$11
       (br_if $label$7
        (i64.ne
         (i64.and
          (get_local $2)
          (i64.const 65280)
         )
         (i64.const 0)
        )
       )
       (set_local $2
        (i64.shr_u
         (get_local $2)
         (i64.const 8)
        )
       )
       (set_local $4
        (i32.lt_s
         (get_local $1)
         (i32.const 6)
        )
       )
       (set_local $1
        (tee_local $5
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
       )
       (br_if $label$11
        (get_local $4)
       )
      )
      (set_local $6
       (i32.const 1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (br_if $label$8
       (i32.lt_s
        (get_local $5)
        (i32.const 6)
       )
      )
     )
    )
    (call $fimport$0
     (get_local $6)
     (i32.const 8318)
    )
    (return
     (get_local $0)
    )
   )
   (call $fimport$0
    (i32.const 0)
    (i32.const 8318)
   )
   (return
    (get_local $0)
   )
  )
  (call $fimport$0
   (i32.const 0)
   (i32.const 8318)
  )
  (get_local $0)
 )
 (func $5 (; 14 ;) (type $0) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (call $fimport$0
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
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
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (call $fimport$0
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
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
  (set_local $2
   (i32.load offset=8
    (get_local $0)
   )
  )
  (call $fimport$0
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
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
  (set_local $2
   (i32.load offset=12
    (get_local $0)
   )
  )
  (call $fimport$0
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (tee_local $4
    (i32.add
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 8)
    )
   )
  )
  (call $fimport$0
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $3)
     )
     (get_local $4)
    )
    (i32.const 7)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $2)
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
  (set_local $2
   (i32.load offset=16
    (get_local $0)
   )
  )
  (call $fimport$0
   (i32.ne
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $2
   (i32.load offset=20
    (get_local $0)
   )
  )
  (call $fimport$0
   (i32.ne
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
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (set_local $2
   (i32.load offset=24
    (get_local $0)
   )
  )
  (call $fimport$0
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
    (i32.const 31)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 32)
   )
  )
  (set_local $2
   (i32.load offset=28
    (get_local $0)
   )
  )
  (call $fimport$0
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
    (i32.const 31)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 32)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 32)
   )
  )
  (set_local $2
   (i32.load offset=32
    (get_local $0)
   )
  )
  (call $fimport$0
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
    (i32.const 19)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $2)
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 20)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.add
    (i32.load offset=4
     (get_local $3)
    )
    (i32.const 20)
   )
  )
  (set_local $3
   (i32.load offset=36
    (get_local $0)
   )
  )
  (call $fimport$0
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (tee_local $0
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 7)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (get_local $3)
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (tee_local $1
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 8)
    )
   )
  )
  (call $fimport$0
   (i32.gt_u
    (i32.sub
     (i32.load offset=8
      (get_local $0)
     )
     (get_local $1)
    )
    (i32.const 7)
   )
   (i32.const 8338)
  )
  (drop
   (call $fimport$4
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.add
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 8)
   )
  )
 )
 (func $6 (; 15 ;) (type $8) (param $0 i32)
 )
 (func $7 (; 16 ;) (type $7) (param $0 i32) (result i32)
  (call $8
   (i32.const 8352)
   (get_local $0)
  )
 )
 (func $8 (; 17 ;) (type $2) (param $0 i32) (param $1 i32) (result i32)
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
         (call $9
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
       (i32.const 16748)
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
 (func $9 (; 18 ;) (type $7) (param $0 i32) (result i32)
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
      (i32.load8_u offset=8344
       (i32.const 0)
      )
     )
    )
    (set_local $2
     (i32.load offset=8348
      (i32.const 0)
     )
    )
    (br $label$1)
   )
   (set_local $2
    (current_memory)
   )
   (i32.store8 offset=8344
    (i32.const 0)
    (i32.const 1)
   )
   (i32.store offset=8348
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
       (i32.load offset=8348
        (i32.const 0)
       )
      )
     )
     (set_local $5
      (i32.const 0)
     )
     (i32.store offset=8348
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
       (i32.load8_u offset=8344
        (i32.const 0)
       )
      )
      (set_local $3
       (current_memory)
      )
      (i32.store8 offset=8344
       (i32.const 0)
       (i32.const 1)
      )
      (i32.store offset=8348
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
       (i32.load offset=8348
        (i32.const 0)
       )
      )
     )
     (i32.store offset=8348
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
 (func $10 (; 19 ;) (type $8) (param $0 i32)
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
       (i32.load offset=16736
        (i32.const 0)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.const 16544)
    )
    (set_local $3
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 12)
      )
      (i32.const 16544)
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

