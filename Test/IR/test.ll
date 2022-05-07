; ModuleID = 'test.ll'
source_filename = "testP.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @_Z5func1iii(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %7, align 4
  br label %10, !llvm.loop !4

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %29, %20
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %22, !llvm.loop !6

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  ret i32 %35
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @_Z5func2iii(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %50, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 10
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %22, %19
  store i32 0, i32* %12, align 4
  %26 = atomicrmw add i32* %12, i32 1 seq_cst, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %46, %25
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 20
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %31, !llvm.loop !7

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %27, !llvm.loop !8

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %13, !llvm.loop !9

53:                                               ; preds = %13
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  ret i32 %56
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local i32 @_Z5func3ii(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %23, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 10
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %14, !llvm.loop !10

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %10, !llvm.loop !11

30:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %59, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %55, %34
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 10
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %50 = atomicrmw add i32* %9, i32 1 seq_cst, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %39, !llvm.loop !12

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %35, !llvm.loop !13

58:                                               ; preds = %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %31, !llvm.loop !14

62:                                               ; preds = %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: mustprogress noinline norecurse nounwind optnone uwtable
define dso_local i32 @main() #1 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @_Z5func1iii(i32 1, i32 2, i32 3)
  %3 = call i32 @_Z5func2iii(i32 2, i32 3, i32 4)
  ret i32 0
}

attributes #0 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline norecurse nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.1"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
