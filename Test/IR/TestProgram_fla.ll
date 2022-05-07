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
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %swVar.ptr = alloca i32, align 4
  store i32 1497969506, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %2, %returnBB
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 1497969506, label %7
    i32 1501903019, label %11
    i32 933088029, label %14
    i32 1294384553, label %17
    i32 393147266, label %27
    i32 340395374, label %35
    i32 1655559191, label %38
    i32 1565216025, label %39
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

7:                                                ; preds = %dispatchBB
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1501903019, i32* %swVar.ptr, align 4
  br label %returnBB

11:                                               ; preds = %dispatchBB
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %.reg2mem, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %.reg2mem1, align 4
  store i32 933088029, i32* %swVar.ptr, align 4
  br label %returnBB

14:                                               ; preds = %dispatchBB
  %.reload = load volatile i32, i32* %.reg2mem, align 4
  %.reload2 = load volatile i32, i32* %.reg2mem1, align 4
  %15 = icmp slt i32 %.reload, %.reload2
  %16 = select i1 %15, i32 1294384553, i32 1565216025
  store i32 %16, i32* %swVar.ptr, align 4
  br label %returnBB

17:                                               ; preds = %dispatchBB
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 32, %24
  %26 = add nsw i32 %23, %25
  store i32 %26, i32* %.reg2mem3, align 4
  store i32 393147266, i32* %swVar.ptr, align 4
  br label %returnBB

27:                                               ; preds = %dispatchBB
  %28 = load i32, i32* %6, align 4
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  %29 = xor i32 %.reload4, %28
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  store i32 340395374, i32* %swVar.ptr, align 4
  br label %returnBB

35:                                               ; preds = %dispatchBB
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %.reg2mem5, align 4
  store i32 1655559191, i32* %swVar.ptr, align 4
  br label %returnBB

38:                                               ; preds = %dispatchBB
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  store i32 %.reload6, i32* %6, align 4
  store i32 1501903019, i32* %swVar.ptr, align 4
  br label %returnBB

39:                                               ; preds = %dispatchBB
  ret void

returnBB:                                         ; preds = %38, %35, %27, %17, %14, %11, %7, %swDefault
  br label %dispatchBB
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  %swVar.ptr = alloca i32, align 4
  store i32 985482766, i32* %swVar.ptr, align 4
  %.reg2mem = alloca i1, align 1
  br label %dispatchBB

dispatchBB:                                       ; preds = %2, %returnBB
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 985482766, label %8
    i32 1627599739, label %13
    i32 2123708365, label %15
    i32 36572832, label %16
    i32 1064663363, label %23
    i32 2019953326, label %30
    i32 1668432026, label %34
    i32 260774751, label %36
    i32 476268099, label %41
    i32 2044819374, label %43
    i32 1363136928, label %44
    i32 1836996258, label %46
    i32 820807999, label %47
    i32 1588063422, label %49
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

8:                                                ; preds = %dispatchBB
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 1
  %12 = select i1 %11, i32 1627599739, i32 36572832
  store i32 %12, i32* %swVar.ptr, align 4
  br label %returnBB

13:                                               ; preds = %dispatchBB
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 2123708365, i32* %swVar.ptr, align 4
  br label %returnBB

15:                                               ; preds = %dispatchBB
  store i32 820807999, i32* %swVar.ptr, align 4
  br label %returnBB

16:                                               ; preds = %dispatchBB
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @input, align 8
  %20 = load i8*, i8** @input, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 100, i1 false)
  store i32 1064663363, i32* %swVar.ptr, align 4
  br label %returnBB

23:                                               ; preds = %dispatchBB
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %25 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %24, i8* %25)
  %26 = load i8*, i8** @input, align 8
  %27 = call i64 @strlen(i8* %26) #5
  %28 = icmp eq i64 %27, 22
  %29 = select i1 %28, i32 2019953326, i32 260774751
  store i32 %29, i32* %swVar.ptr, align 4
  store i1 false, i1* %.reg2mem, align 1
  br label %returnBB

30:                                               ; preds = %dispatchBB
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %32 = call i32 @memcmp(i8* %31, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %33 = icmp ne i32 %32, 0
  store i1 %33, i1* %.reg2mem1, align 1
  store i32 1668432026, i32* %swVar.ptr, align 4
  br label %returnBB

34:                                               ; preds = %dispatchBB
  %.reload2 = load volatile i1, i1* %.reg2mem1, align 1
  %35 = xor i1 %.reload2, true
  store i32 260774751, i32* %swVar.ptr, align 4
  store i1 %35, i1* %.reg2mem, align 1
  br label %returnBB

36:                                               ; preds = %dispatchBB
  %.reload = load i1, i1* %.reg2mem, align 1
  %37 = zext i1 %.reload to i8
  store i8 %37, i8* %7, align 1
  %38 = load i8, i8* %7, align 1
  %39 = trunc i8 %38 to i1
  %40 = select i1 %39, i32 476268099, i32 1363136928
  store i32 %40, i32* %swVar.ptr, align 4
  br label %returnBB

41:                                               ; preds = %dispatchBB
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 2044819374, i32* %swVar.ptr, align 4
  br label %returnBB

43:                                               ; preds = %dispatchBB
  store i32 820807999, i32* %swVar.ptr, align 4
  br label %returnBB

44:                                               ; preds = %dispatchBB
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 1836996258, i32* %swVar.ptr, align 4
  br label %returnBB

46:                                               ; preds = %dispatchBB
  store i32 820807999, i32* %swVar.ptr, align 4
  br label %returnBB

47:                                               ; preds = %dispatchBB
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %.reg2mem3, align 4
  store i32 1588063422, i32* %swVar.ptr, align 4
  br label %returnBB

49:                                               ; preds = %dispatchBB
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  ret i32 %.reload4

returnBB:                                         ; preds = %47, %46, %44, %43, %41, %36, %34, %30, %23, %16, %15, %13, %8, %swDefault
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
