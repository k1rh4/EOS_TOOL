(module
 (type $0 (func (result i64)))
 (type $1 (func (param i64)))
 (type $2 (func))
 (type $3 (func (param i64 i64 i64)))
 (import "env" "publication_time" (func $publication_time (result i64)))
 (import "env" "printui" (func $printui (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (memory $0 16)
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 1048576))
 (global $global$1 i32 (i32.const 1048576))
 (global $global$2 i32 (i32.const 1048576))
 (export "memory" (memory $0))
 (export "__indirect_function_table" (table $0))
 (export "__heap_base" (global $global$1))
 (export "__data_end" (global $global$2))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $__wasm_call_ctors (; 3 ;) (type $2)
 )
 (func $init (; 4 ;) (type $2)
 )
 (func $apply (; 5 ;) (type $3) (param $0 i64) (param $1 i64) (param $2 i64)
  (block $label$1
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i64.gt_s
        (get_local $2)
        (i64.const -3792734573687734273)
       )
      )
      (br_if $label$2
       (i64.eq
        (get_local $2)
        (i64.const -7890306547153108992)
       )
      )
      (br_if $label$3
       (i64.ne
        (get_local $2)
        (i64.const -7117939211059068928)
       )
      )
      (call $printui
       (call $publication_time)
      )
      (return)
     )
     (br_if $label$1
      (i64.eq
       (get_local $2)
       (i64.const -3792734573687734272)
      )
     )
     (br_if $label$3
      (i64.ne
       (get_local $2)
       (i64.const 7684013976526520320)
      )
     )
     (call $printn
      (i64.const 7684013989323751424)
     )
     (return)
    )
    (call $printui
     (get_local $2)
    )
    (return)
   )
   (call $printn
    (get_local $0)
   )
   (return)
  )
  (call $printn
   (get_local $1)
  )
  (call $printn
   (i64.const -3792734573687734272)
  )
 )
)

