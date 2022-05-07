; ModuleID = 'TestProgram/bc/_Z7encryptPhPc.bc'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

; Function Attrs: mustprogress noinline nounwind optnone
define hidden void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %swVar.ptr = alloca i32, align 4
  store i32 275367002, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %2, %returnBB
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 275367002, label %7
    i32 1467266101, label %10
    i32 1485198215, label %13
    i32 1349287204, label %16
    i32 509354572, label %25
    i32 1984534891, label %32
    i32 1927918039, label %35
    i32 579149757, label %36
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

7:                                                ; preds = %dispatchBB
  %8 = load i8*, i8** %4, align 4
  %9 = call i32 @strlen(i8* %8) #2
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1467266101, i32* %swVar.ptr, align 4
  br label %returnBB

10:                                               ; preds = %dispatchBB
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %.reg2mem, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %.reg2mem1, align 4
  store i32 1485198215, i32* %swVar.ptr, align 4
  br label %returnBB

13:                                               ; preds = %dispatchBB
  %.reload = load volatile i32, i32* %.reg2mem, align 4
  %.reload2 = load volatile i32, i32* %.reg2mem1, align 4
  %14 = icmp slt i32 %.reload, %.reload2
  %15 = select i1 %14, i32 1349287204, i32 579149757
  store i32 %15, i32* %swVar.ptr, align 4
  br label %returnBB

16:                                               ; preds = %dispatchBB
  %17 = load i8*, i8** %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds i8, i8* %17, i32 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 32, %22
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %.reg2mem3, align 4
  store i32 509354572, i32* %swVar.ptr, align 4
  br label %returnBB

25:                                               ; preds = %dispatchBB
  %26 = load i32, i32* %6, align 4
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  %27 = xor i32 %.reload4, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  store i8 %28, i8* %31, align 1
  store i32 1984534891, i32* %swVar.ptr, align 4
  br label %returnBB

32:                                               ; preds = %dispatchBB
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %.reg2mem5, align 4
  store i32 1927918039, i32* %swVar.ptr, align 4
  br label %returnBB

35:                                               ; preds = %dispatchBB
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  store i32 %.reload6, i32* %6, align 4
  store i32 1467266101, i32* %swVar.ptr, align 4
  br label %returnBB

36:                                               ; preds = %dispatchBB
  ret void

returnBB:                                         ; preds = %35, %32, %25, %16, %13, %10, %7, %swDefault
  br label %dispatchBB
}

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8*) #1

attributes #0 = { mustprogress noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { nocallback nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { nocallback nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)"}
