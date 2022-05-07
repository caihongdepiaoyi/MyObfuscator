#ifndef WASMTEST_H_GENERATED_
#define WASMTEST_H_GENERATED_
#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#include "wasm-rt.h"

#ifndef WASM_RT_MODULE_PREFIX
#define WASM_RT_MODULE_PREFIX
#endif

#define WASM_RT_PASTE_(x, y) x ## y
#define WASM_RT_PASTE(x, y) WASM_RT_PASTE_(x, y)
#define WASM_RT_ADD_PREFIX(x) WASM_RT_PASTE(WASM_RT_MODULE_PREFIX, x)

/* TODO(binji): only use stdint.h types in header */
typedef uint8_t u8;
typedef int8_t s8;
typedef uint16_t u16;
typedef int16_t s16;
typedef uint32_t u32;
typedef int32_t s32;
typedef uint64_t u64;
typedef int64_t s64;
typedef float f32;
typedef double f64;

extern void WASM_RT_ADD_PREFIX(init)(void);

/* import: 'env' 'putchar' */
extern u32 (*Z_envZ_putcharZ_ii)(u32);
/* import: 'env' 'memset' */
extern u32 (*Z_envZ_memsetZ_iiii)(u32, u32, u32);

/* export: 'memory' */
extern wasm_rt_memory_t (*WASM_RT_ADD_PREFIX(Z_memory));
/* export: '__wasm_call_ctors' */
extern void (*WASM_RT_ADD_PREFIX(Z___wasm_call_ctorsZ_vv))(void);
/* export: '__data_end' */
extern u32 (*WASM_RT_ADD_PREFIX(Z___data_endZ_i));
/* export: '__global_base' */
extern u32 (*WASM_RT_ADD_PREFIX(Z___global_baseZ_i));
/* export: '__heap_base' */
extern u32 (*WASM_RT_ADD_PREFIX(Z___heap_baseZ_i));
/* export: '__dso_handle' */
extern u32 (*WASM_RT_ADD_PREFIX(Z___dso_handleZ_i));
/* export: 'rot' */
extern void (*WASM_RT_ADD_PREFIX(Z_rotZ_viiii))(u32, u32, u32, u32);
/* export: 'd2pt' */
extern void (*WASM_RT_ADD_PREFIX(Z_d2ptZ_viii))(u32, u32, u32);
/* export: 'main' */
extern u32 (*WASM_RT_ADD_PREFIX(Z_mainZ_iii))(u32, u32);
/* export: '__original_main' */
extern u32 (*WASM_RT_ADD_PREFIX(Z___original_mainZ_iv))(void);
#ifdef __cplusplus
}
#endif

#endif  /* WASMTEST_H_GENERATED_ */
