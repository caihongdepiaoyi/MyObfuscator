#include <math.h>
#include <string.h>

#include "wasmTest.h"
#define UNLIKELY(x) __builtin_expect(!!(x), 0)
#define LIKELY(x) __builtin_expect(!!(x), 1)

#define TRAP(x) (wasm_rt_trap(WASM_RT_TRAP_##x), 0)

#define FUNC_PROLOGUE                                            \
  if (++wasm_rt_call_stack_depth > WASM_RT_MAX_CALL_STACK_DEPTH) \
    TRAP(EXHAUSTION)

#define FUNC_EPILOGUE --wasm_rt_call_stack_depth

#define UNREACHABLE TRAP(UNREACHABLE)

#define CALL_INDIRECT(table, t, ft, x, ...)          \
  (LIKELY((x) < table.size && table.data[x].func &&  \
          table.data[x].func_type == func_types[ft]) \
       ? ((t)table.data[x].func)(__VA_ARGS__)        \
       : TRAP(CALL_INDIRECT))

#define MEMCHECK(mem, a, t)  \
  if (UNLIKELY((a) + sizeof(t) > mem->size)) TRAP(OOB)

#define DEFINE_LOAD(name, t1, t2, t3)              \
  static inline t3 name(wasm_rt_memory_t* mem, u64 addr) {   \
    MEMCHECK(mem, addr, t1);                       \
    t1 result;                                     \
    memcpy(&result, &mem->data[addr], sizeof(t1)); \
    return (t3)(t2)result;                         \
  }

#define DEFINE_STORE(name, t1, t2)                           \
  static inline void name(wasm_rt_memory_t* mem, u64 addr, t2 value) { \
    MEMCHECK(mem, addr, t1);                                 \
    t1 wrapped = (t1)value;                                  \
    memcpy(&mem->data[addr], &wrapped, sizeof(t1));          \
  }

DEFINE_LOAD(i32_load, u32, u32, u32);
DEFINE_LOAD(i64_load, u64, u64, u64);
DEFINE_LOAD(f32_load, f32, f32, f32);
DEFINE_LOAD(f64_load, f64, f64, f64);
DEFINE_LOAD(i32_load8_s, s8, s32, u32);
DEFINE_LOAD(i64_load8_s, s8, s64, u64);
DEFINE_LOAD(i32_load8_u, u8, u32, u32);
DEFINE_LOAD(i64_load8_u, u8, u64, u64);
DEFINE_LOAD(i32_load16_s, s16, s32, u32);
DEFINE_LOAD(i64_load16_s, s16, s64, u64);
DEFINE_LOAD(i32_load16_u, u16, u32, u32);
DEFINE_LOAD(i64_load16_u, u16, u64, u64);
DEFINE_LOAD(i64_load32_s, s32, s64, u64);
DEFINE_LOAD(i64_load32_u, u32, u64, u64);
DEFINE_STORE(i32_store, u32, u32);
DEFINE_STORE(i64_store, u64, u64);
DEFINE_STORE(f32_store, f32, f32);
DEFINE_STORE(f64_store, f64, f64);
DEFINE_STORE(i32_store8, u8, u32);
DEFINE_STORE(i32_store16, u16, u32);
DEFINE_STORE(i64_store8, u8, u64);
DEFINE_STORE(i64_store16, u16, u64);
DEFINE_STORE(i64_store32, u32, u64);

#define I32_CLZ(x) ((x) ? __builtin_clz(x) : 32)
#define I64_CLZ(x) ((x) ? __builtin_clzll(x) : 64)
#define I32_CTZ(x) ((x) ? __builtin_ctz(x) : 32)
#define I64_CTZ(x) ((x) ? __builtin_ctzll(x) : 64)
#define I32_POPCNT(x) (__builtin_popcount(x))
#define I64_POPCNT(x) (__builtin_popcountll(x))

#define DIV_S(ut, min, x, y)                                 \
   ((UNLIKELY((y) == 0)) ?                TRAP(DIV_BY_ZERO)  \
  : (UNLIKELY((x) == min && (y) == -1)) ? TRAP(INT_OVERFLOW) \
  : (ut)((x) / (y)))

#define REM_S(ut, min, x, y)                                \
   ((UNLIKELY((y) == 0)) ?                TRAP(DIV_BY_ZERO) \
  : (UNLIKELY((x) == min && (y) == -1)) ? 0                 \
  : (ut)((x) % (y)))

#define I32_DIV_S(x, y) DIV_S(u32, INT32_MIN, (s32)x, (s32)y)
#define I64_DIV_S(x, y) DIV_S(u64, INT64_MIN, (s64)x, (s64)y)
#define I32_REM_S(x, y) REM_S(u32, INT32_MIN, (s32)x, (s32)y)
#define I64_REM_S(x, y) REM_S(u64, INT64_MIN, (s64)x, (s64)y)

#define DIVREM_U(op, x, y) \
  ((UNLIKELY((y) == 0)) ? TRAP(DIV_BY_ZERO) : ((x) op (y)))

#define DIV_U(x, y) DIVREM_U(/, x, y)
#define REM_U(x, y) DIVREM_U(%, x, y)

#define ROTL(x, y, mask) \
  (((x) << ((y) & (mask))) | ((x) >> (((mask) - (y) + 1) & (mask))))
#define ROTR(x, y, mask) \
  (((x) >> ((y) & (mask))) | ((x) << (((mask) - (y) + 1) & (mask))))

#define I32_ROTL(x, y) ROTL(x, y, 31)
#define I64_ROTL(x, y) ROTL(x, y, 63)
#define I32_ROTR(x, y) ROTR(x, y, 31)
#define I64_ROTR(x, y) ROTR(x, y, 63)

#define FMIN(x, y)                                          \
   ((UNLIKELY((x) != (x))) ? NAN                            \
  : (UNLIKELY((y) != (y))) ? NAN                            \
  : (UNLIKELY((x) == 0 && (y) == 0)) ? (signbit(x) ? x : y) \
  : (x < y) ? x : y)

#define FMAX(x, y)                                          \
   ((UNLIKELY((x) != (x))) ? NAN                            \
  : (UNLIKELY((y) != (y))) ? NAN                            \
  : (UNLIKELY((x) == 0 && (y) == 0)) ? (signbit(x) ? y : x) \
  : (x > y) ? x : y)

#define TRUNC_S(ut, st, ft, min, max, maxop, x)                             \
   ((UNLIKELY((x) != (x))) ? TRAP(INVALID_CONVERSION)                       \
  : (UNLIKELY((x) < (ft)(min) || (x) maxop (ft)(max))) ? TRAP(INT_OVERFLOW) \
  : (ut)(st)(x))

#define I32_TRUNC_S_F32(x) TRUNC_S(u32, s32, f32, INT32_MIN, INT32_MAX, >=, x)
#define I64_TRUNC_S_F32(x) TRUNC_S(u64, s64, f32, INT64_MIN, INT64_MAX, >=, x)
#define I32_TRUNC_S_F64(x) TRUNC_S(u32, s32, f64, INT32_MIN, INT32_MAX, >,  x)
#define I64_TRUNC_S_F64(x) TRUNC_S(u64, s64, f64, INT64_MIN, INT64_MAX, >=, x)

#define TRUNC_U(ut, ft, max, maxop, x)                                    \
   ((UNLIKELY((x) != (x))) ? TRAP(INVALID_CONVERSION)                     \
  : (UNLIKELY((x) <= (ft)-1 || (x) maxop (ft)(max))) ? TRAP(INT_OVERFLOW) \
  : (ut)(x))

#define I32_TRUNC_U_F32(x) TRUNC_U(u32, f32, UINT32_MAX, >=, x)
#define I64_TRUNC_U_F32(x) TRUNC_U(u64, f32, UINT64_MAX, >=, x)
#define I32_TRUNC_U_F64(x) TRUNC_U(u32, f64, UINT32_MAX, >,  x)
#define I64_TRUNC_U_F64(x) TRUNC_U(u64, f64, UINT64_MAX, >=, x)

#define DEFINE_REINTERPRET(name, t1, t2)  \
  static inline t2 name(t1 x) {           \
    t2 result;                            \
    memcpy(&result, &x, sizeof(result));  \
    return result;                        \
  }

DEFINE_REINTERPRET(f32_reinterpret_i32, u32, f32)
DEFINE_REINTERPRET(i32_reinterpret_f32, f32, u32)
DEFINE_REINTERPRET(f64_reinterpret_i64, u64, f64)
DEFINE_REINTERPRET(i64_reinterpret_f64, f64, u64)


static u32 func_types[7];

static void init_func_types(void) {
  func_types[0] = wasm_rt_register_func_type(1, 1, WASM_RT_I32, WASM_RT_I32);
  func_types[1] = wasm_rt_register_func_type(3, 1, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32);
  func_types[2] = wasm_rt_register_func_type(0, 0);
  func_types[3] = wasm_rt_register_func_type(4, 0, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32);
  func_types[4] = wasm_rt_register_func_type(3, 0, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32);
  func_types[5] = wasm_rt_register_func_type(0, 1, WASM_RT_I32);
  func_types[6] = wasm_rt_register_func_type(2, 1, WASM_RT_I32, WASM_RT_I32, WASM_RT_I32);
}

static void __wasm_call_ctors(void);
static void rot(u32, u32, u32, u32);
static void d2pt(u32, u32, u32);
static u32 __original_main(void);
static u32 main(u32, u32);

static u32 g0;
static u32 __data_end;
static u32 __global_base;
static u32 __heap_base;
static u32 __dso_handle;

static void init_globals(void) {
  g0 = 66560u;
  __data_end = 1024u;
  __global_base = 1024u;
  __heap_base = 66560u;
  __dso_handle = 1024u;
}

static wasm_rt_memory_t memory;

static wasm_rt_table_t T0;

static void __wasm_call_ctors(void) {
  FUNC_PROLOGUE;
  FUNC_EPILOGUE;
}

static void rot(u32 p0, u32 p1, u32 p2, u32 p3) {
  FUNC_PROLOGUE;
  u32 i0, i1, i2;
  i0 = p3;
  if (i0) {goto B0;}
  i0 = p2;
  i1 = 1u;
  i0 = i0 == i1;
  if (i0) {goto B2;}
  i0 = p1;
  i0 = i32_load((&memory), (u64)(i0 + 4));
  p3 = i0;
  i0 = p1;
  i0 = i32_load((&memory), (u64)(i0));
  p2 = i0;
  goto B1;
  B2:;
  i0 = p1;
  i1 = p0;
  i2 = 4294967295u;
  i1 += i2;
  p3 = i1;
  i2 = p1;
  i2 = i32_load((&memory), (u64)(i2));
  i1 -= i2;
  p2 = i1;
  i32_store((&memory), (u64)(i0), i1);
  i0 = p1;
  i1 = p3;
  i2 = p1;
  i2 = i32_load((&memory), (u64)(i2 + 4));
  i1 -= i2;
  p3 = i1;
  i32_store((&memory), (u64)(i0 + 4), i1);
  B1:;
  i0 = p1;
  i1 = p2;
  i32_store((&memory), (u64)(i0 + 4), i1);
  i0 = p1;
  i1 = p3;
  i32_store((&memory), (u64)(i0), i1);
  B0:;
  FUNC_EPILOGUE;
}

static void d2pt(u32 p0, u32 p1, u32 p2) {
  u32 l3 = 0, l4 = 0, l5 = 0, l6 = 0, l7 = 0, l8 = 0, l9 = 0;
  FUNC_PROLOGUE;
  u32 i0, i1, i2;
  u64 j1;
  i0 = p2;
  j1 = 0ull;
  i64_store((&memory), (u64)(i0), j1);
  i0 = p0;
  i1 = 2u;
  i0 = (u32)((s32)i0 < (s32)i1);
  if (i0) {goto B0;}
  i0 = 0u;
  l3 = i0;
  i0 = 0u;
  l4 = i0;
  i0 = 1u;
  l5 = i0;
  L1: 
    i0 = p1;
    i1 = 2u;
    i0 = I32_DIV_S(i0, i1);
    l6 = i0;
    i1 = 1u;
    i0 &= i1;
    l7 = i0;
    i0 = l6;
    i1 = p1;
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l6 = i0;
    i0 = !(i0);
    if (i0) {goto B3;}
    i0 = l3;
    l8 = i0;
    i0 = l4;
    l9 = i0;
    goto B2;
    B3:;
    i0 = l7;
    if (i0) {goto B4;}
    i0 = l4;
    l8 = i0;
    i0 = l3;
    l9 = i0;
    goto B2;
    B4:;
    i0 = l5;
    i1 = 4294967295u;
    i0 += i1;
    l8 = i0;
    i1 = l3;
    i0 -= i1;
    l9 = i0;
    i0 = l8;
    i1 = l4;
    i0 -= i1;
    l8 = i0;
    B2:;
    i0 = p1;
    i1 = 4u;
    i0 = I32_DIV_S(i0, i1);
    p1 = i0;
    i0 = l8;
    i1 = l6;
    i2 = l5;
    i1 *= i2;
    i0 += i1;
    l3 = i0;
    i0 = l9;
    i1 = l7;
    i2 = l5;
    i1 *= i2;
    i0 += i1;
    l4 = i0;
    i0 = l5;
    i1 = 1u;
    i0 <<= (i1 & 31);
    l5 = i0;
    i1 = p0;
    i0 = (u32)((s32)i0 < (s32)i1);
    if (i0) {goto L1;}
  i0 = p2;
  i1 = l3;
  i32_store((&memory), (u64)(i0 + 4), i1);
  i0 = p2;
  i1 = l4;
  i32_store((&memory), (u64)(i0), i1);
  B0:;
  FUNC_EPILOGUE;
}

static u32 __original_main(void) {
  u32 l0 = 0, l1 = 0, l2 = 0, l3 = 0, l4 = 0, l5 = 0, l6 = 0, l7 = 0, 
      l8 = 0, l9 = 0, l10 = 0, l11 = 0, l12 = 0, l13 = 0, l14 = 0, l15 = 0;
  FUNC_PROLOGUE;
  u32 i0, i1, i2, i3, i4, i5;
  i0 = g0;
  i1 = 9216u;
  i0 -= i1;
  l0 = i0;
  g0 = i0;
  i0 = l0;
  i1 = 32u;
  i2 = 9216u;
  i0 = (*Z_envZ_memsetZ_iiii)(i0, i1, i2);
  l1 = i0;
  i1 = 46u;
  i32_store8((&memory), (u64)(i0), i1);
  i0 = l1;
  i1 = 96u;
  i0 += i1;
  l2 = i0;
  i0 = l1;
  i1 = 1u;
  i0 |= i1;
  l3 = i0;
  i0 = 0u;
  l4 = i0;
  i0 = 0u;
  l5 = i0;
  i0 = 1u;
  l6 = i0;
  L0: 
    i0 = l5;
    l7 = i0;
    i0 = l4;
    l8 = i0;
    i0 = l6;
    i1 = 3u;
    i0 >>= (i1 & 31);
    l9 = i0;
    i1 = 1u;
    i0 &= i1;
    l10 = i0;
    i0 = l6;
    i1 = 1u;
    i0 >>= (i1 & 31);
    l0 = i0;
    i1 = 1u;
    i0 &= i1;
    l4 = i0;
    i0 = l0;
    i1 = l6;
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l0 = i0;
    i0 = l9;
    i1 = l6;
    i2 = 2u;
    i1 >>= (i2 & 31);
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l9 = i0;
    i0 = !(i0);
    if (i0) {goto B2;}
    i0 = l0;
    l11 = i0;
    i0 = l4;
    l0 = i0;
    goto B1;
    B2:;
    i0 = l10;
    if (i0) {goto B3;}
    i0 = l4;
    l11 = i0;
    goto B1;
    B3:;
    i0 = l0;
    i1 = 1u;
    i0 ^= i1;
    l0 = i0;
    i0 = l4;
    i1 = 1u;
    i0 ^= i1;
    l11 = i0;
    B1:;
    i0 = l6;
    i1 = 5u;
    i0 >>= (i1 & 31);
    l4 = i0;
    i1 = 1u;
    i0 &= i1;
    l12 = i0;
    i0 = l11;
    i1 = l9;
    i2 = 1u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l9 = i0;
    i0 = l0;
    i1 = l10;
    i2 = 1u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l10 = i0;
    i0 = l4;
    i1 = l6;
    i2 = 4u;
    i1 >>= (i2 & 31);
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l0 = i0;
    i0 = !(i0);
    if (i0) {goto B5;}
    i0 = l9;
    l4 = i0;
    i0 = l10;
    l9 = i0;
    goto B4;
    B5:;
    i0 = l12;
    if (i0) {goto B6;}
    i0 = l10;
    l4 = i0;
    goto B4;
    B6:;
    i0 = 3u;
    i1 = l9;
    i0 -= i1;
    l9 = i0;
    i0 = 3u;
    i1 = l10;
    i0 -= i1;
    l4 = i0;
    B4:;
    i0 = l6;
    i1 = 9u;
    i0 >>= (i1 & 31);
    l10 = i0;
    i0 = l6;
    i1 = 7u;
    i0 >>= (i1 & 31);
    l13 = i0;
    i1 = 1u;
    i0 &= i1;
    l11 = i0;
    i0 = l4;
    i1 = l0;
    i2 = 2u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l4 = i0;
    i0 = l9;
    i1 = l12;
    i2 = 2u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l9 = i0;
    i0 = l13;
    i1 = l6;
    i2 = 6u;
    i1 >>= (i2 & 31);
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l0 = i0;
    i0 = !(i0);
    if (i0) {goto B8;}
    i0 = l4;
    l12 = i0;
    i0 = l9;
    l4 = i0;
    goto B7;
    B8:;
    i0 = l11;
    if (i0) {goto B9;}
    i0 = l9;
    l12 = i0;
    goto B7;
    B9:;
    i0 = 7u;
    i1 = l4;
    i0 -= i1;
    l4 = i0;
    i0 = 7u;
    i1 = l9;
    i0 -= i1;
    l12 = i0;
    B7:;
    i0 = l10;
    i1 = 1u;
    i0 &= i1;
    l9 = i0;
    i0 = l12;
    i1 = l0;
    i2 = 3u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l0 = i0;
    i0 = l4;
    i1 = l11;
    i2 = 3u;
    i1 <<= (i2 & 31);
    i0 |= i1;
    l4 = i0;
    i0 = l10;
    i1 = l6;
    i2 = 8u;
    i1 >>= (i2 & 31);
    i0 ^= i1;
    i1 = 1u;
    i0 &= i1;
    l12 = i0;
    i0 = !(i0);
    if (i0) {goto B11;}
    i0 = l0;
    l11 = i0;
    i0 = l4;
    l0 = i0;
    goto B10;
    B11:;
    i0 = l9;
    if (i0) {goto B12;}
    i0 = l4;
    l11 = i0;
    goto B10;
    B12:;
    i0 = 15u;
    i1 = l0;
    i0 -= i1;
    l0 = i0;
    i0 = 15u;
    i1 = l4;
    i0 -= i1;
    l11 = i0;
    B10:;
    i0 = l1;
    i1 = l0;
    i2 = l9;
    i3 = 4u;
    i2 <<= (i3 & 31);
    i1 |= i2;
    l4 = i1;
    i2 = 288u;
    i1 *= i2;
    i0 += i1;
    i1 = l11;
    i2 = l12;
    i3 = 4u;
    i2 <<= (i3 & 31);
    i1 |= i2;
    l5 = i1;
    i2 = 3u;
    i1 *= i2;
    l14 = i1;
    i0 += i1;
    i1 = 46u;
    i32_store8((&memory), (u64)(i0), i1);
    i0 = l4;
    i1 = 3u;
    i0 *= i1;
    l15 = i0;
    i1 = l8;
    i2 = 3u;
    i1 *= i2;
    l13 = i1;
    i0 = i0 == i1;
    if (i0) {goto B14;}
    i0 = l10;
    i1 = 48u;
    i0 *= i1;
    l9 = i0;
    i0 = l13;
    i1 = l15;
    i0 = (u32)((s32)i0 < (s32)i1);
    if (i0) {goto B15;}
    i0 = l15;
    i1 = 1u;
    i0 += i1;
    i1 = l13;
    i0 = (u32)((s32)i0 >= (s32)i1);
    if (i0) {goto B13;}
    i0 = l9;
    i1 = 4294967295u;
    i0 ^= i1;
    i1 = l13;
    i2 = l0;
    i3 = 3u;
    i2 *= i3;
    i1 -= i2;
    i0 += i1;
    l9 = i0;
    i0 = l2;
    i1 = l10;
    i2 = 4608u;
    i1 *= i2;
    i2 = l0;
    i3 = 288u;
    i2 *= i3;
    i1 += i2;
    i2 = l12;
    i3 = 48u;
    i2 *= i3;
    i1 += i2;
    i2 = l11;
    i3 = 3u;
    i2 *= i3;
    i1 += i2;
    i0 += i1;
    l0 = i0;
    L16: 
      i0 = l0;
      i1 = 95u;
      i32_store8((&memory), (u64)(i0), i1);
      i0 = l0;
      i1 = 96u;
      i0 += i1;
      l0 = i0;
      i0 = l9;
      i1 = 4294967295u;
      i0 += i1;
      l9 = i0;
      if (i0) {goto L16;}
      goto B13;
    B15:;
    i0 = l13;
    i1 = 4294967295u;
    i0 ^= i1;
    i1 = l9;
    i2 = l0;
    i3 = 3u;
    i2 *= i3;
    i1 += i2;
    i0 += i1;
    l9 = i0;
    i0 = l2;
    i1 = l8;
    i2 = 288u;
    i1 *= i2;
    i2 = l12;
    i3 = 48u;
    i2 *= i3;
    i1 += i2;
    i2 = l11;
    i3 = 3u;
    i2 *= i3;
    i1 += i2;
    i0 += i1;
    l0 = i0;
    L17: 
      i0 = l0;
      i1 = 95u;
      i32_store8((&memory), (u64)(i0), i1);
      i0 = l0;
      i1 = 96u;
      i0 += i1;
      l0 = i0;
      i0 = l9;
      i1 = 4294967295u;
      i0 += i1;
      l9 = i0;
      if (i0) {goto L17;}
      goto B13;
    B14:;
    i0 = l7;
    i1 = 3u;
    i0 *= i1;
    l10 = i0;
    i1 = l14;
    i0 = (u32)((s32)i0 < (s32)i1);
    if (i0) {goto B18;}
    i0 = l14;
    i1 = 1u;
    i0 += i1;
    i1 = l10;
    i0 = (u32)((s32)i0 >= (s32)i1);
    if (i0) {goto B13;}
    i0 = l3;
    i1 = l9;
    i2 = 4608u;
    i1 *= i2;
    i2 = l0;
    i3 = 288u;
    i2 *= i3;
    i1 += i2;
    i2 = l12;
    i3 = 48u;
    i2 *= i3;
    l0 = i2;
    i1 += i2;
    i2 = l11;
    i3 = 3u;
    i2 *= i3;
    l9 = i2;
    i1 += i2;
    i0 += i1;
    i1 = 124u;
    i2 = l10;
    i3 = l9;
    i4 = 4294967295u;
    i3 ^= i4;
    i2 += i3;
    i3 = l0;
    i2 -= i3;
    i0 = (*Z_envZ_memsetZ_iiii)(i0, i1, i2);
    goto B13;
    B18:;
    i0 = l3;
    i1 = l9;
    i2 = 4608u;
    i1 *= i2;
    i2 = l0;
    i3 = 288u;
    i2 *= i3;
    i1 += i2;
    i2 = l10;
    i1 += i2;
    i0 += i1;
    i1 = 124u;
    i2 = l10;
    i3 = 4294967295u;
    i2 ^= i3;
    i3 = l12;
    i4 = 48u;
    i3 *= i4;
    i4 = l11;
    i5 = 3u;
    i4 *= i5;
    i3 += i4;
    i2 += i3;
    i0 = (*Z_envZ_memsetZ_iiii)(i0, i1, i2);
    B13:;
    i0 = l6;
    i1 = 1u;
    i0 += i1;
    l6 = i0;
    i1 = 1024u;
    i0 = i0 != i1;
    if (i0) {goto L0;}
  i0 = 0u;
  l6 = i0;
  i0 = l1;
  l9 = i0;
  L19: 
    i0 = 0u;
    l0 = i0;
    L20: 
      i0 = l9;
      i1 = l0;
      i0 += i1;
      i0 = i32_load8_s((&memory), (u64)(i0));
      i0 = (*Z_envZ_putcharZ_ii)(i0);
      i0 = l0;
      i1 = 96u;
      i0 += i1;
      l0 = i0;
      i1 = 9216u;
      i0 = i0 != i1;
      if (i0) {goto L20;}
    i0 = 10u;
    i0 = (*Z_envZ_putcharZ_ii)(i0);
    i0 = l9;
    i1 = 1u;
    i0 += i1;
    l9 = i0;
    i0 = l6;
    i1 = 1u;
    i0 += i1;
    l6 = i0;
    i1 = 96u;
    i0 = i0 != i1;
    if (i0) {goto L19;}
  i0 = l1;
  i1 = 9216u;
  i0 += i1;
  g0 = i0;
  i0 = 0u;
  FUNC_EPILOGUE;
  return i0;
}

static u32 main(u32 p0, u32 p1) {
  FUNC_PROLOGUE;
  u32 i0;
  i0 = __original_main();
  FUNC_EPILOGUE;
  return i0;
}


static void init_memory(void) {
  wasm_rt_allocate_memory((&memory), 2, 65536);
}

static void init_table(void) {
  uint32_t offset;
  wasm_rt_allocate_table((&T0), 1, 1);
}

/* export: 'memory' */
wasm_rt_memory_t (*WASM_RT_ADD_PREFIX(Z_memory));
/* export: '__wasm_call_ctors' */
void (*WASM_RT_ADD_PREFIX(Z___wasm_call_ctorsZ_vv))(void);
/* export: '__data_end' */
u32 (*WASM_RT_ADD_PREFIX(Z___data_endZ_i));
/* export: '__global_base' */
u32 (*WASM_RT_ADD_PREFIX(Z___global_baseZ_i));
/* export: '__heap_base' */
u32 (*WASM_RT_ADD_PREFIX(Z___heap_baseZ_i));
/* export: '__dso_handle' */
u32 (*WASM_RT_ADD_PREFIX(Z___dso_handleZ_i));
/* export: 'rot' */
void (*WASM_RT_ADD_PREFIX(Z_rotZ_viiii))(u32, u32, u32, u32);
/* export: 'd2pt' */
void (*WASM_RT_ADD_PREFIX(Z_d2ptZ_viii))(u32, u32, u32);
/* export: 'main' */
u32 (*WASM_RT_ADD_PREFIX(Z_mainZ_iii))(u32, u32);
/* export: '__original_main' */
u32 (*WASM_RT_ADD_PREFIX(Z___original_mainZ_iv))(void);

static void init_exports(void) {
  /* export: 'memory' */
  WASM_RT_ADD_PREFIX(Z_memory) = (&memory);
  /* export: '__wasm_call_ctors' */
  WASM_RT_ADD_PREFIX(Z___wasm_call_ctorsZ_vv) = (&__wasm_call_ctors);
  /* export: '__data_end' */
  WASM_RT_ADD_PREFIX(Z___data_endZ_i) = (&__data_end);
  /* export: '__global_base' */
  WASM_RT_ADD_PREFIX(Z___global_baseZ_i) = (&__global_base);
  /* export: '__heap_base' */
  WASM_RT_ADD_PREFIX(Z___heap_baseZ_i) = (&__heap_base);
  /* export: '__dso_handle' */
  WASM_RT_ADD_PREFIX(Z___dso_handleZ_i) = (&__dso_handle);
  /* export: 'rot' */
  WASM_RT_ADD_PREFIX(Z_rotZ_viiii) = (&rot);
  /* export: 'd2pt' */
  WASM_RT_ADD_PREFIX(Z_d2ptZ_viii) = (&d2pt);
  /* export: 'main' */
  WASM_RT_ADD_PREFIX(Z_mainZ_iii) = (&main);
  /* export: '__original_main' */
  WASM_RT_ADD_PREFIX(Z___original_mainZ_iv) = (&__original_main);
}

void WASM_RT_ADD_PREFIX(init)(void) {
  init_func_types();
  init_globals();
  init_memory();
  init_table();
  init_exports();
}
