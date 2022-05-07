; ModuleID = 'test.ll'
source_filename = "test.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__main_void to i8*)], section "llvm.metadata"

@__main_void = alias i32 (), i32 ()* @main

; Function Attrs: mustprogress noinline norecurse nounwind optnone
define hidden i32 @main() #0 {
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem2 = alloca i32*, align 4
  %.reg2mem = alloca i32*, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %y, align 4
  %3 = icmp slt i32 %2, 10
  %4 = add i32 %1, 1
  %5 = mul i32 %4, %1
  %6 = urem i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = or i1 %3, %7
  br i1 %8, label %bodyBB, label %bodyBBcloneBB

bodyBB:                                           ; preds = %bodyBBcloneBB, %0
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %10, i32** %.reg2mem, align 4
  %11 = alloca i32, align 4
  store i32* %11, i32** %.reg2mem2, align 4
  store i32 0, i32* %9, align 4
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 4
  store i32 1, i32* %.reload1, align 4
  %x5 = alloca i32, align 4
  %y6 = alloca i32, align 4
  %12 = load i32, i32* %x5, align 4
  %13 = load i32, i32* %y6, align 4
  %14 = icmp slt i32 %13, 10
  %15 = add i32 %12, 1
  %16 = mul i32 %15, %12
  %17 = urem i32 %16, 2
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %14, %18
  br i1 %19, label %endBB, label %bodyBBcloneBB

endBB:                                            ; preds = %bodyBB
  br label %20

20:                                               ; preds = %endBB
  %x11 = alloca i32, align 4
  %y12 = alloca i32, align 4
  %21 = load i32, i32* %x11, align 4
  %22 = load i32, i32* %y12, align 4
  %23 = icmp slt i32 %22, 10
  %24 = add i32 %21, 1
  %25 = mul i32 %24, %21
  %26 = urem i32 %25, 2
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %23, %27
  br i1 %28, label %bodyBB7, label %bodyBB7cloneBB

bodyBB7:                                          ; preds = %bodyBB7cloneBB, %20
  %.reload4 = load volatile i32*, i32** %.reg2mem2, align 4
  store i32 2, i32* %.reload4, align 4
  %.reload = load volatile i32*, i32** %.reg2mem, align 4
  %29 = load i32, i32* %.reload, align 4
  %.reload3 = load volatile i32*, i32** %.reg2mem2, align 4
  %30 = load i32, i32* %.reload3, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %.reg2mem9, align 4
  %x13 = alloca i32, align 4
  %y14 = alloca i32, align 4
  %32 = load i32, i32* %x13, align 4
  %33 = load i32, i32* %y14, align 4
  %34 = icmp slt i32 %33, 10
  %35 = add i32 %32, 1
  %36 = mul i32 %35, %32
  %37 = urem i32 %36, 2
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %34, %38
  br i1 %39, label %endBB8, label %bodyBB7cloneBB

endBB8:                                           ; preds = %bodyBB7
  %.reload10 = load volatile i32, i32* %.reg2mem9, align 4
  ret i32 %.reload10

bodyBBcloneBB:                                    ; preds = %bodyBB, %0
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  store i32* %41, i32** %.reg2mem, align 4
  %42 = alloca i32, align 4
  store i32* %42, i32** %.reg2mem2, align 4
  store i32 0, i32* %40, align 4
  %.reload1cloneBB = load volatile i32*, i32** %.reg2mem, align 4
  store i32 1, i32* %.reload1cloneBB, align 4
  br label %bodyBB

bodyBB7cloneBB:                                   ; preds = %bodyBB7, %20
  %.reload4cloneBB = load volatile i32*, i32** %.reg2mem2, align 4
  store i32 2, i32* %.reload4cloneBB, align 4
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 4
  %43 = load i32, i32* %.reloadcloneBB, align 4
  %.reload3cloneBB = load volatile i32*, i32** %.reg2mem2, align 4
  %44 = load i32, i32* %.reload3cloneBB, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %.reg2mem9, align 4
  br label %bodyBB7
}

attributes #0 = { mustprogress noinline norecurse nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.1"}
