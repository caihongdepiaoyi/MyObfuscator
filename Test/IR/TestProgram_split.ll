; ModuleID = 'IR/TestProgram_orig.ll'
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
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  br label %7

7:                                                ; preds = %2
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #5
  br label %10

10:                                               ; preds = %7
  %11 = trunc i64 %9 to i32
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %39, %10
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  br label %15

15:                                               ; preds = %12
  %16 = icmp slt i32 %13, %14
  br i1 %16, label %17, label %40

17:                                               ; preds = %15
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 32, %25
  %27 = add nsw i32 %23, %26
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %27, %28
  %30 = trunc i32 %29 to i8
  br label %31

31:                                               ; preds = %24
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %30, i8* %35, align 1
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %36
  store i32 %38, i32* %6, align 4
  br label %12, !llvm.loop !4

40:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x i8], align 16
  br label %7

7:                                                ; preds = %2
  %8 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  br label %9

9:                                                ; preds = %7
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15
  br label %49

17:                                               ; preds = %9
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** @input, align 8
  %21 = load i8*, i8** @input, align 8
  br label %22

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %24 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 100, i1 false)
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %26 = load i8*, i8** @input, align 8
  br label %27

27:                                               ; preds = %22
  call void @_Z7encryptPhPc(i8* %25, i8* %26)
  %28 = load i8*, i8** @input, align 8
  %29 = call i64 @strlen(i8* %28) #5
  %30 = icmp eq i64 %29, 22
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = call i32 @memcmp(i8* %32, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  br label %34

34:                                               ; preds = %31
  %35 = icmp ne i32 %33, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %27
  %39 = phi i1 [ false, %27 ], [ %36, %37 ]
  %40 = zext i1 %39 to i8
  store i8 %40, i8* %8, align 1
  %41 = load i8, i8* %8, align 1
  %42 = trunc i8 %41 to i1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43
  br label %49

46:                                               ; preds = %38
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48, %45, %16
  %50 = load i32, i32* %3, align 4
  br label %51

51:                                               ; preds = %49
  ret i32 %50
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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
