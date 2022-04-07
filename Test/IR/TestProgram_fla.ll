; ModuleID = 'IR/TestProgram_lowerswitch.ll'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input = dso_local global i8* null, align 8
@enc = dso_local global <{ [22 x i8], [78 x i8] }> <{ [22 x i8] c"\86\8A}\87\93\8BM\81\80\8AC\7FII\86q\7FbSi(\9D", [78 x i8] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [26 x i8] c"Welcome to LLVM world...\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Input your flag as an argument.\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Your flag is: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Congratulations~\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Sorry try again.\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %.reg2mem9 = alloca i32, align 4
  %.reg2mem7 = alloca i8, align 1
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %swVar.ptr = alloca i32, align 4
  store i32 660493612, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %2, %returnBB
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 660493612, label %7
    i32 1539266861, label %10
    i32 243874050, label %12
    i32 1214099235, label %15
    i32 1950440413, label %18
    i32 1379419812, label %25
    i32 789113804, label %32
    i32 274058886, label %37
    i32 1802369308, label %40
    i32 466798731, label %41
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

7:                                                ; preds = %dispatchBB
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #5
  store i64 %9, i64* %.reg2mem, align 8
  store i32 1539266861, i32* %swVar.ptr, align 4
  br label %returnBB

10:                                               ; preds = %dispatchBB
  %.reload = load volatile i64, i64* %.reg2mem, align 8
  %11 = trunc i64 %.reload to i32
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 243874050, i32* %swVar.ptr, align 4
  br label %returnBB

12:                                               ; preds = %dispatchBB
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %.reg2mem1, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %.reg2mem3, align 4
  store i32 1214099235, i32* %swVar.ptr, align 4
  br label %returnBB

15:                                               ; preds = %dispatchBB
  %.reload2 = load volatile i32, i32* %.reg2mem1, align 4
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  %16 = icmp slt i32 %.reload2, %.reload4
  %17 = select i1 %16, i32 1950440413, i32 466798731
  store i32 %17, i32* %swVar.ptr, align 4
  br label %returnBB

18:                                               ; preds = %dispatchBB
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %.reg2mem5, align 4
  store i32 1379419812, i32* %swVar.ptr, align 4
  br label %returnBB

25:                                               ; preds = %dispatchBB
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 32, %26
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  %28 = add nsw i32 %.reload6, %27
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %28, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %.reg2mem7, align 1
  store i32 789113804, i32* %swVar.ptr, align 4
  br label %returnBB

32:                                               ; preds = %dispatchBB
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %.reload8 = load volatile i8, i8* %.reg2mem7, align 1
  store i8 %.reload8, i8* %36, align 1
  store i32 274058886, i32* %swVar.ptr, align 4
  br label %returnBB

37:                                               ; preds = %dispatchBB
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %.reg2mem9, align 4
  store i32 1802369308, i32* %swVar.ptr, align 4
  br label %returnBB

40:                                               ; preds = %dispatchBB
  %.reload10 = load volatile i32, i32* %.reg2mem9, align 4
  store i32 %.reload10, i32* %6, align 4
  store i32 243874050, i32* %swVar.ptr, align 4
  br label %returnBB

41:                                               ; preds = %dispatchBB
  ret void

returnBB:                                         ; preds = %40, %37, %32, %25, %18, %15, %12, %10, %7, %swDefault
  br label %dispatchBB
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %.reg2mem14 = alloca i32, align 4
  %.reg2mem12 = alloca i1, align 1
  %.reg2mem10 = alloca i32, align 4
  %.reg2mem8 = alloca i8*, align 8
  %.reg2mem6 = alloca i8*, align 8
  %.reg2mem4 = alloca i8*, align 8
  %.reg2mem1 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x i8], align 16
  %swVar.ptr = alloca i32, align 4
  store i32 1553874634, i32* %swVar.ptr, align 4
  %.reg2mem = alloca i1, align 1
  br label %dispatchBB

dispatchBB:                                       ; preds = %2, %returnBB
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 1553874634, label %7
    i32 683756198, label %9
    i32 47767898, label %14
    i32 998805329, label %16
    i32 509660921, label %17
    i32 1731776951, label %18
    i32 1714604239, label %23
    i32 1286360823, label %28
    i32 514080909, label %33
    i32 878402845, label %36
    i32 1180613523, label %39
    i32 13669001, label %40
    i32 132345655, label %45
    i32 552575603, label %47
    i32 429764470, label %48
    i32 2099907050, label %50
    i32 2012893566, label %51
    i32 2051569671, label %53
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

7:                                                ; preds = %dispatchBB
  %8 = alloca i8, align 1
  store i8* %8, i8** %.reg2mem1, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 683756198, i32* %swVar.ptr, align 4
  br label %returnBB

9:                                                ; preds = %dispatchBB
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 1
  %13 = select i1 %12, i32 47767898, i32 1731776951
  store i32 %13, i32* %swVar.ptr, align 4
  br label %returnBB

14:                                               ; preds = %dispatchBB
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 998805329, i32* %swVar.ptr, align 4
  br label %returnBB

16:                                               ; preds = %dispatchBB
  store i32 0, i32* %3, align 4
  store i32 509660921, i32* %swVar.ptr, align 4
  br label %returnBB

17:                                               ; preds = %dispatchBB
  store i32 2012893566, i32* %swVar.ptr, align 4
  br label %returnBB

18:                                               ; preds = %dispatchBB
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @input, align 8
  %22 = load i8*, i8** @input, align 8
  store i8* %22, i8** %.reg2mem4, align 8
  store i32 1714604239, i32* %swVar.ptr, align 4
  br label %returnBB

23:                                               ; preds = %dispatchBB
  %.reload5 = load volatile i8*, i8** %.reg2mem4, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %.reload5)
  %25 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 100, i1 false)
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  store i8* %26, i8** %.reg2mem6, align 8
  %27 = load i8*, i8** @input, align 8
  store i8* %27, i8** %.reg2mem8, align 8
  store i32 1286360823, i32* %swVar.ptr, align 4
  br label %returnBB

28:                                               ; preds = %dispatchBB
  %.reload7 = load volatile i8*, i8** %.reg2mem6, align 8
  %.reload9 = load volatile i8*, i8** %.reg2mem8, align 8
  call void @_Z7encryptPhPc(i8* %.reload7, i8* %.reload9)
  %29 = load i8*, i8** @input, align 8
  %30 = call i64 @strlen(i8* %29) #5
  %31 = icmp eq i64 %30, 22
  %32 = select i1 %31, i32 514080909, i32 13669001
  store i32 %32, i32* %swVar.ptr, align 4
  store i1 false, i1* %.reg2mem, align 1
  br label %returnBB

33:                                               ; preds = %dispatchBB
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %35 = call i32 @memcmp(i8* %34, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  store i32 %35, i32* %.reg2mem10, align 4
  store i32 878402845, i32* %swVar.ptr, align 4
  br label %returnBB

36:                                               ; preds = %dispatchBB
  %.reload11 = load volatile i32, i32* %.reg2mem10, align 4
  %37 = icmp ne i32 %.reload11, 0
  %38 = xor i1 %37, true
  store i1 %38, i1* %.reg2mem12, align 1
  store i32 1180613523, i32* %swVar.ptr, align 4
  br label %returnBB

39:                                               ; preds = %dispatchBB
  store i32 13669001, i32* %swVar.ptr, align 4
  %.reload13 = load volatile i1, i1* %.reg2mem12, align 1
  store i1 %.reload13, i1* %.reg2mem, align 1
  br label %returnBB

40:                                               ; preds = %dispatchBB
  %.reload = load i1, i1* %.reg2mem, align 1
  %41 = zext i1 %.reload to i8
  %.reload3 = load volatile i8*, i8** %.reg2mem1, align 8
  store i8 %41, i8* %.reload3, align 1
  %.reload2 = load volatile i8*, i8** %.reg2mem1, align 8
  %42 = load i8, i8* %.reload2, align 1
  %43 = trunc i8 %42 to i1
  %44 = select i1 %43, i32 132345655, i32 429764470
  store i32 %44, i32* %swVar.ptr, align 4
  br label %returnBB

45:                                               ; preds = %dispatchBB
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 552575603, i32* %swVar.ptr, align 4
  br label %returnBB

47:                                               ; preds = %dispatchBB
  store i32 2012893566, i32* %swVar.ptr, align 4
  br label %returnBB

48:                                               ; preds = %dispatchBB
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 2099907050, i32* %swVar.ptr, align 4
  br label %returnBB

50:                                               ; preds = %dispatchBB
  store i32 2012893566, i32* %swVar.ptr, align 4
  br label %returnBB

51:                                               ; preds = %dispatchBB
  %52 = load i32, i32* %3, align 4
  store i32 %52, i32* %.reg2mem14, align 4
  store i32 2051569671, i32* %swVar.ptr, align 4
  br label %returnBB

53:                                               ; preds = %dispatchBB
  %.reload15 = load volatile i32, i32* %.reg2mem14, align 4
  ret i32 %.reload15

returnBB:                                         ; preds = %51, %50, %48, %47, %45, %40, %39, %36, %33, %28, %23, %18, %17, %16, %14, %9, %7, %swDefault
  br label %dispatchBB
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1"}
