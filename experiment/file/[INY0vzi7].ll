; ModuleID = 'file/[INY0vzi7].bc'
source_filename = "24_game-Solve.c"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

%struct._IO_FILE = type opaque
%struct.expr_t = type { i32, %struct.expr_t*, %struct.expr_t*, i32 }
%struct.frac_t = type { i32, i32 }

@.str = external hidden unnamed_addr constant [3 x i8], align 1
@.str.1 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.2 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.3 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.4 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.6 = external hidden unnamed_addr constant [3 x i8], align 1
@stderr = external local_unnamed_addr constant %struct._IO_FILE*, align 4
@.str.8 = external hidden unnamed_addr constant [16 x i8], align 1
@__const.main.n = external hidden unnamed_addr constant [5 x i32], align 16
@.str.9 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.10 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.11 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.12 = external hidden unnamed_addr constant [13 x i8], align 1
@llvm.used = external global [1 x i8*], section "llvm.metadata"

@__main_void = alias i32 (), i32 ()* @main

; Function Attrs: nofree nounwind
declare hidden void @show_expr(%struct.expr_t* nocapture readonly, i32, i32) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare hidden void @eval_expr(%struct.expr_t* nocapture readonly, %struct.frac_t* nocapture) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare hidden i32 @solve(%struct.expr_t** nocapture readonly, i32) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare hidden i32 @solve24(i32* nocapture readonly) local_unnamed_addr #0

; Function Attrs: nounwind
define hidden i32 @main() #3 {
  %1 = alloca [4 x %struct.expr_t], align 16
  %2 = alloca [4 x %struct.expr_t*], align 16
  %3 = alloca [5 x i32], align 16
  %4 = bitcast [5 x i32]* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %4) #7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* noundef nonnull align 16 dereferenceable(20) %4, i8* noundef nonnull align 16 dereferenceable(20) bitcast ([5 x i32]* @__const.main.n to i8*), i32 20, i1 false)
  %5 = call i64 @time(i64* null) #7
  %6 = trunc i64 %5 to i32
  call void @srand(i32 %6) #7
  %7 = bitcast [4 x %struct.expr_t]* %1 to i8*
  %8 = bitcast [4 x %struct.expr_t*]* %2 to i8*
  %9 = getelementptr inbounds [4 x %struct.expr_t*], [4 x %struct.expr_t*]* %2, i32 0, i32 0
  br label %10

10:                                               ; preds = %38, %0
  %11 = phi i32 [ 0, %0 ], [ %43, %38 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 0, %10 ], [ %22, %12 ]
  %14 = call i32 @rand() #7
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 9.000000e+00
  %17 = fdiv double %16, 0x41DFFFFFFFC00000
  %18 = fadd double %17, 1.000000e+00
  %19 = fptosi double %18 to i32
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i32 0, i32 %13
  store i32 %19, i32* %20, align 4, !tbaa !2
  %21 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %19)
  %22 = add nuw nsw i32 %13, 1
  %23 = icmp ult i32 2, %13
  br i1 %23, label %24, label %12, !llvm.loop !6

24:                                               ; preds = %12
  %25 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #7
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i32 [ 0, %24 ], [ %36, %26 ]
  %28 = getelementptr inbounds [4 x %struct.expr_t], [4 x %struct.expr_t]* %1, i32 0, i32 %27
  %29 = getelementptr inbounds [4 x %struct.expr_t*], [4 x %struct.expr_t*]* %2, i32 0, i32 %27
  store %struct.expr_t* %28, %struct.expr_t** %29, align 4, !tbaa !9
  %30 = getelementptr inbounds [4 x %struct.expr_t], [4 x %struct.expr_t]* %1, i32 0, i32 %27, i32 0
  store i32 0, i32* %30, align 16, !tbaa !11
  %31 = getelementptr inbounds [4 x %struct.expr_t], [4 x %struct.expr_t]* %1, i32 0, i32 %27, i32 2
  store %struct.expr_t* null, %struct.expr_t** %31, align 8, !tbaa !13
  %32 = getelementptr inbounds [4 x %struct.expr_t], [4 x %struct.expr_t]* %1, i32 0, i32 %27, i32 1
  store %struct.expr_t* null, %struct.expr_t** %32, align 4, !tbaa !14
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %3, i32 0, i32 %27
  %34 = load i32, i32* %33, align 4, !tbaa !2
  %35 = getelementptr inbounds [4 x %struct.expr_t], [4 x %struct.expr_t]* %1, i32 0, i32 %27, i32 3
  store i32 %34, i32* %35, align 4, !tbaa !15
  %36 = add nuw nsw i32 %27, 1
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %26, !llvm.loop !16

38:                                               ; preds = %26
  %39 = call i32 @solve(%struct.expr_t** nonnull %9, i32 4) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #7
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)
  %42 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) %41)
  %43 = add nuw nsw i32 %11, 1
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %10, !llvm.loop !17

45:                                               ; preds = %38
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %4) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #4

declare void @srand(i32) local_unnamed_addr #5

declare i64 @time(i64*) local_unnamed_addr #5

declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

attributes #0 = { nofree nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/llvm/llvm-project fd1d8c2f04dde23bee0fb3a7d069a9b1046da979)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !4, i64 0}
!12 = !{!"expr_t", !4, i64 0, !10, i64 4, !10, i64 8, !3, i64 12}
!13 = !{!12, !10, i64 8}
!14 = !{!12, !10, i64 4}
!15 = !{!12, !3, i64 12}
!16 = distinct !{!16, !7, !8}
!17 = distinct !{!17, !7, !8}
