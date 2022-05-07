(module
  (type (;0;) (func))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (func $__wasm_call_ctors (type 0))
  (func $__original_main (type 1) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get 0
        i32.const 32
        i32.sub
        local.tee 0
        local.tee 1
        i32.load offset=12
        i32.const 10
        i32.lt_s
        local.get 1
        i32.load offset=16
        local.tee 2
        i32.const 1
        i32.add
        local.get 2
        i32.mul
        i32.const 1
        i32.and
        i32.const 0
        i32.eq
        i32.or
        i32.const 1
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      i32.const 1
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                br_table 0 (;@6;) 1 (;@5;) 1 (;@5;)
              end
              local.get 1
              local.get 0
              i32.const -16
              i32.add
              local.tee 0
              i32.const -16
              i32.add
              local.tee 2
              i32.store offset=20
              local.get 1
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.store offset=24
              local.get 0
              i32.const 0
              i32.store
              local.get 1
              i32.load offset=20
              i32.const 1
              i32.store
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.const -16
              i32.add
              local.tee 3
              local.set 0
              local.get 3
              i32.load
              i32.const 10
              i32.lt_s
              local.get 2
              i32.load
              local.tee 2
              i32.const 1
              i32.add
              local.get 2
              i32.mul
              i32.const 1
              i32.and
              i32.const 0
              i32.eq
              i32.or
              i32.const 1
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.const -16
              i32.add
              local.tee 0
              i32.const -16
              i32.add
              local.tee 3
              local.set 2
              local.get 3
              i32.load
              i32.const 10
              i32.lt_s
              local.get 0
              i32.load
              local.tee 0
              i32.const 1
              i32.add
              local.get 0
              i32.mul
              i32.const 1
              i32.and
              i32.const 0
              i32.eq
              i32.or
              i32.const 1
              i32.and
              i32.eqz
              br_if 3 (;@2;)
              i32.const 0
              local.set 0
              br 4 (;@1;)
            end
            local.get 1
            local.get 0
            i32.const -16
            i32.add
            local.tee 2
            i32.const -16
            i32.add
            local.tee 0
            i32.store offset=20
            local.get 0
            i32.const -16
            i32.add
            local.tee 3
            local.set 0
            local.get 1
            local.get 3
            i32.store offset=24
            local.get 2
            i32.const 0
            i32.store
            local.get 1
            i32.load offset=20
            i32.const 1
            i32.store
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          i32.const 1
          local.set 2
          br 0 (;@3;)
        end
      end
      i32.const 1
      local.set 0
    end
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            br_table 0 (;@4;) 1 (;@3;) 1 (;@3;)
          end
          local.get 1
          i32.load offset=24
          i32.const 2
          i32.store
          local.get 1
          local.get 1
          i32.load offset=20
          i32.load
          local.get 1
          i32.load offset=24
          i32.load
          i32.add
          i32.store offset=28
          local.get 2
          i32.const -16
          i32.add
          local.tee 0
          i32.const -16
          i32.add
          local.tee 3
          local.set 2
          local.get 3
          i32.load
          i32.const 10
          i32.lt_s
          local.get 0
          i32.load
          local.tee 0
          i32.const 1
          i32.add
          local.get 0
          i32.mul
          i32.const 1
          i32.and
          i32.const 0
          i32.eq
          i32.or
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=28
          return
        end
        local.get 1
        i32.load offset=24
        i32.const 2
        i32.store
        local.get 1
        local.get 1
        i32.load offset=20
        i32.load
        local.get 1
        i32.load offset=24
        i32.load
        i32.add
        i32.store offset=28
        i32.const 0
        local.set 0
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
      br 0 (;@1;)
    end)
  (func $main (type 2) (param i32 i32) (result i32)
    call $__original_main)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global (;0;) (mut i32) (i32.const 66560))
  (global (;1;) i32 (i32.const 1024))
  (global (;2;) i32 (i32.const 1024))
  (global (;3;) i32 (i32.const 1024))
  (global (;4;) i32 (i32.const 66560))
  (global (;5;) i32 (i32.const 0))
  (global (;6;) i32 (i32.const 1))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__original_main" (func $__original_main))
  (export "main" (func $main))
  (export "__main_void" (func $__original_main))
  (export "__dso_handle" (global 1))
  (export "__data_end" (global 2))
  (export "__global_base" (global 3))
  (export "__heap_base" (global 4))
  (export "__memory_base" (global 5))
  (export "__table_base" (global 6)))
