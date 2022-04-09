; ModuleID = 'TestProgram.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@input = hidden global i8* null, align 4
@enc = hidden global <{ [22 x i8], [78 x i8] }> <{ [22 x i8] c"\86\8A}\87\93\8BM\81\80\8AC\7FII\86q\7FbSi(\9D", [78 x i8] zeroinitializer }>, align 16
@.str.1 = hidden unnamed_addr constant [33 x i8] c"Input your flag as an argument.\0A\00", align 1
@.str.2 = hidden unnamed_addr constant [18 x i8] c"Your flag is: %s\0A\00", align 1
@.str.3 = hidden unnamed_addr constant [18 x i8] c"Congratulations~\0A\00", align 1
@.str.4 = hidden unnamed_addr constant [18 x i8] c"Sorry try again.\0A\00", align 1
@.str = hidden unnamed_addr constant [26 x i8] c"Welcome to LLVM world...\0A\00", align 1

; Function Attrs: mustprogress noinline norecurse optnone
define hidden i32 @__main_argc_argv(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 4
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  %16 = load i8*, i8** %15, align 4
  store i8* %16, i8** @input, align 4
  %17 = load i8*, i8** @input, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %17)
  %19 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 16 %19, i8 0, i32 100, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 0
  %21 = load i8*, i8** @input, align 4
  call void @_Z7encryptPhPc(i8* %20, i8* %21)
  %22 = load i8*, i8** @input, align 4
  %23 = call i32 @strlen(i8* %22) #5
  %24 = icmp eq i32 %23, 22
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i32 0, i32 0
  %27 = call i32 @memcmp(i8* %26, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i32 0, i32 0), i32 22)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %25, %13
  %31 = phi i1 [ false, %13 ], [ %29, %25 ]
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %7, align 1
  %33 = load i8, i8* %7, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  br label %39

39:                                               ; preds = %37, %35, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8*) #3

declare i32 @memcmp(i8*, i8*, i32) #1

; Function Attrs: mustprogress noinline nounwind optnone
define hidden void @_Z7encryptPhPc(i8* %0, i8* %1) #4 {
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %7 = load i8*, i8** %4, align 4
  %8 = call i32 @strlen(i8* %7) #5
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds i8, i8* %14, i32 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 32, %19
  %21 = add nsw i32 %18, %20
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %21, %22
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds i8, i8* %25, i32 %26
  store i8 %24, i8* %27, align 1
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9, !llvm.loop !2

31:                                               ; preds = %9
  ret void
}

attributes #0 = { mustprogress noinline norecurse optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nocallback nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #5 = { nocallback nounwind readonly willreturn }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
