; ModuleID = 'IR/TestProgram_orig.ll'
source_filename = "TestProgram.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input = dso_local global i8* null, align 8
@enc = dso_local global <{ [22 x i8], [78 x i8] }> <{ [22 x i8] c"\86\8A}\87\93\8BM\81\80\8AC\7FII\86q\7FbSi(\9D", [78 x i8] zeroinitializer }>, align 16
@.str.5 = private global [26 x i8] c"0\02\0B\04\08\0A\02G\13\08G++1*G\10\08\15\0B\03IIImg"
@.str.1.6 = private global [33 x i8] c"\8F\A8\B6\B3\B2\E6\BF\A9\B3\B4\E6\A0\AA\A7\A1\E6\A7\B5\E6\A7\A8\E6\A7\B4\A1\B3\AB\A3\A8\B2\E8\CC\C6"
@.str.2.7 = private global [18 x i8] c"0\06\1C\1BI\0F\05\08\0EI\00\1ASIL\1Aci"
@.str.3.8 = private global [18 x i8] c"0\1C\1D\14\01\12\07\06\1F\12\07\1A\1C\1D\00\0Dys"
@.str.4.9 = private global [18 x i8] c"\02>##(q%#(q0608?\7F[Q"
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.datadiv_decode424238335, i8* null }]

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i64 @strlen(i8* %7) #5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 32, %21
  %23 = add nsw i32 %20, %22
  %24 = load i32, i32* %6, align 4
  %25 = xor i32 %23, %24
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %10, !llvm.loop !4

34:                                               ; preds = %10
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
  %7 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %9 = load i32, i32* %4, align 4
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** @input, align 8
  %17 = load i8*, i8** @input, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.7, i64 0, i64 0), i8* %17)
  %19 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 100, i1 false)
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %21 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %20, i8* %21)
  %22 = load i8*, i8** @input, align 8
  %23 = call i64 @strlen(i8* %22) #5
  %24 = icmp eq i64 %23, 22
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %27 = call i32 @memcmp(i8* %26, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
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
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.8, i64 0, i64 0))
  br label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.9, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %35, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

define void @.datadiv_decode424238335() {
entry:
  br label %for-body

for-body:                                         ; preds = %for-body, %entry
  %i = phi i32 [ 0, %entry ], [ %next-value, %for-body ]
  %arrayIdx = getelementptr [26 x i8], [26 x i8]* @.str.5, i32 0, i32 %i
  %0 = load i8, i8* %arrayIdx, align 1
  %xor = xor i8 %0, 103
  store i8 %xor, i8* %arrayIdx, align 1
  %next-value = add i32 %i, 1
  %end-condition = icmp ult i32 %i, 25
  %loop-condition = icmp ne i1 %end-condition, false
  br i1 %loop-condition, label %for-body, label %for-end

for-end:                                          ; preds = %for-body
  br label %for-body1

for-body1:                                        ; preds = %for-body1, %for-end
  %i3 = phi i32 [ 0, %for-end ], [ %next-value6, %for-body1 ]
  %arrayIdx4 = getelementptr [33 x i8], [33 x i8]* @.str.1.6, i32 0, i32 %i3
  %1 = load i8, i8* %arrayIdx4, align 1
  %xor5 = xor i8 %1, -58
  store i8 %xor5, i8* %arrayIdx4, align 1
  %next-value6 = add i32 %i3, 1
  %end-condition7 = icmp ult i32 %i3, 32
  %loop-condition8 = icmp ne i1 %end-condition7, false
  br i1 %loop-condition8, label %for-body1, label %for-end2

for-end2:                                         ; preds = %for-body1
  br label %for-body9

for-body9:                                        ; preds = %for-body9, %for-end2
  %i11 = phi i32 [ 0, %for-end2 ], [ %next-value14, %for-body9 ]
  %arrayIdx12 = getelementptr [18 x i8], [18 x i8]* @.str.2.7, i32 0, i32 %i11
  %2 = load i8, i8* %arrayIdx12, align 1
  %xor13 = xor i8 %2, 105
  store i8 %xor13, i8* %arrayIdx12, align 1
  %next-value14 = add i32 %i11, 1
  %end-condition15 = icmp ult i32 %i11, 17
  %loop-condition16 = icmp ne i1 %end-condition15, false
  br i1 %loop-condition16, label %for-body9, label %for-end10

for-end10:                                        ; preds = %for-body9
  br label %for-body17

for-body17:                                       ; preds = %for-body17, %for-end10
  %i19 = phi i32 [ 0, %for-end10 ], [ %next-value22, %for-body17 ]
  %arrayIdx20 = getelementptr [18 x i8], [18 x i8]* @.str.3.8, i32 0, i32 %i19
  %3 = load i8, i8* %arrayIdx20, align 1
  %xor21 = xor i8 %3, 115
  store i8 %xor21, i8* %arrayIdx20, align 1
  %next-value22 = add i32 %i19, 1
  %end-condition23 = icmp ult i32 %i19, 17
  %loop-condition24 = icmp ne i1 %end-condition23, false
  br i1 %loop-condition24, label %for-body17, label %for-end18

for-end18:                                        ; preds = %for-body17
  br label %for-body25

for-body25:                                       ; preds = %for-body25, %for-end18
  %i27 = phi i32 [ 0, %for-end18 ], [ %next-value30, %for-body25 ]
  %arrayIdx28 = getelementptr [18 x i8], [18 x i8]* @.str.4.9, i32 0, i32 %i27
  %4 = load i8, i8* %arrayIdx28, align 1
  %xor29 = xor i8 %4, 81
  store i8 %xor29, i8* %arrayIdx28, align 1
  %next-value30 = add i32 %i27, 1
  %end-condition31 = icmp ult i32 %i27, 17
  %loop-condition32 = icmp ne i1 %end-condition31, false
  br i1 %loop-condition32, label %for-body25, label %for-end26

for-end26:                                        ; preds = %for-body25
  ret void
}

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
