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
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem9 = alloca i32*, align 8
  %.reg2mem6 = alloca i32*, align 8
  %.reg2mem2 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %y, align 4
  %5 = icmp slt i32 %4, 10
  %6 = add i32 %3, 1
  %7 = mul i32 %6, %3
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %5, %9
  br i1 %10, label %bodyBB, label %bodyBBcloneBB

bodyBB:                                           ; preds = %bodyBBcloneBB, %2
  %11 = alloca i8*, align 8
  store i8** %11, i8*** %.reg2mem, align 8
  %12 = alloca i8*, align 8
  store i8** %12, i8*** %.reg2mem2, align 8
  %13 = alloca i32, align 4
  store i32* %13, i32** %.reg2mem6, align 8
  %14 = alloca i32, align 4
  store i32* %14, i32** %.reg2mem9, align 8
  %.reload1 = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1, align 8
  %.reload5 = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5, align 8
  %x18 = alloca i32, align 4
  %y19 = alloca i32, align 4
  %15 = load i32, i32* %x18, align 4
  %16 = load i32, i32* %y19, align 4
  %17 = icmp slt i32 %16, 10
  %18 = add i32 %15, 1
  %19 = mul i32 %18, %15
  %20 = urem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %17, %21
  br i1 %22, label %endBB, label %bodyBBcloneBB

endBB:                                            ; preds = %bodyBB
  br label %23

23:                                               ; preds = %endBB
  %.reload4 = load volatile i8**, i8*** %.reg2mem2, align 8
  %24 = load i8*, i8** %.reload4, align 8
  %25 = call i64 @strlen(i8* %24) #5
  %26 = trunc i64 %25 to i32
  %.reload8 = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %26, i32* %.reload8, align 4
  %.reload17 = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17, align 4
  br label %27

27:                                               ; preds = %85, %23
  %.reload16 = load volatile i32*, i32** %.reg2mem9, align 8
  %28 = load i32, i32* %.reload16, align 4
  %.reload7 = load volatile i32*, i32** %.reg2mem6, align 8
  %29 = load i32, i32* %.reload7, align 4
  br label %30

30:                                               ; preds = %27
  %31 = icmp slt i32 %28, %29
  br i1 %31, label %32, label %86

32:                                               ; preds = %30
  %x24 = alloca i32, align 4
  %y25 = alloca i32, align 4
  %33 = load i32, i32* %x24, align 4
  %34 = load i32, i32* %y25, align 4
  %35 = icmp slt i32 %34, 10
  %36 = add i32 %33, 1
  %37 = mul i32 %36, %33
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %35, %39
  br i1 %40, label %bodyBB20, label %bodyBB20cloneBB

bodyBB20:                                         ; preds = %bodyBB20cloneBB, %32
  %.reload3 = load volatile i8**, i8*** %.reg2mem2, align 8
  %41 = load i8*, i8** %.reload3, align 8
  %.reload15 = load volatile i32*, i32** %.reg2mem9, align 8
  %42 = load i32, i32* %.reload15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %.reload14 = load volatile i32*, i32** %.reg2mem9, align 8
  %47 = load i32, i32* %.reload14, align 4
  %48 = sub nsw i32 32, %47
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %.reg2mem22, align 4
  %x26 = alloca i32, align 4
  %y27 = alloca i32, align 4
  %50 = load i32, i32* %x26, align 4
  %51 = load i32, i32* %y27, align 4
  %52 = icmp slt i32 %51, 10
  %53 = add i32 %50, 1
  %54 = mul i32 %53, %50
  %55 = urem i32 %54, 2
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %52, %56
  br i1 %57, label %endBB21, label %bodyBB20cloneBB

endBB21:                                          ; preds = %bodyBB20
  br label %58

58:                                               ; preds = %endBB21
  %x30 = alloca i32, align 4
  %y31 = alloca i32, align 4
  %59 = load i32, i32* %x30, align 4
  %60 = load i32, i32* %y31, align 4
  %61 = icmp slt i32 %60, 10
  %62 = add i32 %59, 1
  %63 = mul i32 %62, %59
  %64 = urem i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = or i1 %61, %65
  br i1 %66, label %bodyBB28, label %bodyBB28cloneBB

bodyBB28:                                         ; preds = %bodyBB28cloneBB, %58
  %.reload13 = load volatile i32*, i32** %.reg2mem9, align 8
  %67 = load i32, i32* %.reload13, align 4
  %.reload23 = load volatile i32, i32* %.reg2mem22, align 4
  %68 = xor i32 %.reload23, %67
  %69 = trunc i32 %68 to i8
  %.reload = load volatile i8**, i8*** %.reg2mem, align 8
  %70 = load i8*, i8** %.reload, align 8
  %.reload12 = load volatile i32*, i32** %.reg2mem9, align 8
  %71 = load i32, i32* %.reload12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 %69, i8* %73, align 1
  %x32 = alloca i32, align 4
  %y33 = alloca i32, align 4
  %74 = load i32, i32* %x32, align 4
  %75 = load i32, i32* %y33, align 4
  %76 = icmp slt i32 %75, 10
  %77 = add i32 %74, 1
  %78 = mul i32 %77, %74
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %76, %80
  br i1 %81, label %endBB29, label %bodyBB28cloneBB

endBB29:                                          ; preds = %bodyBB28
  br label %82

82:                                               ; preds = %endBB29
  %.reload11 = load volatile i32*, i32** %.reg2mem9, align 8
  %83 = load i32, i32* %.reload11, align 4
  %84 = add nsw i32 %83, 1
  br label %85

85:                                               ; preds = %82
  %.reload10 = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 %84, i32* %.reload10, align 4
  br label %27, !llvm.loop !4

86:                                               ; preds = %30
  %x36 = alloca i32, align 4
  %y37 = alloca i32, align 4
  %87 = load i32, i32* %x36, align 4
  %88 = load i32, i32* %y37, align 4
  %89 = icmp slt i32 %88, 10
  %90 = add i32 %87, 1
  %91 = mul i32 %90, %87
  %92 = urem i32 %91, 2
  %93 = icmp eq i32 %92, 0
  %94 = or i1 %89, %93
  br i1 %94, label %bodyBB34, label %bodyBB34cloneBB

bodyBB34:                                         ; preds = %bodyBB34cloneBB, %86
  %x38 = alloca i32, align 4
  %y39 = alloca i32, align 4
  %95 = load i32, i32* %x38, align 4
  %96 = load i32, i32* %y39, align 4
  %97 = icmp slt i32 %96, 10
  %98 = add i32 %95, 1
  %99 = mul i32 %98, %95
  %100 = urem i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = or i1 %97, %101
  br i1 %102, label %endBB35, label %bodyBB34cloneBB

endBB35:                                          ; preds = %bodyBB34
  ret void

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %103 = alloca i8*, align 8
  store i8** %103, i8*** %.reg2mem, align 8
  %104 = alloca i8*, align 8
  store i8** %104, i8*** %.reg2mem2, align 8
  %105 = alloca i32, align 4
  store i32* %105, i32** %.reg2mem6, align 8
  %106 = alloca i32, align 4
  store i32* %106, i32** %.reg2mem9, align 8
  %.reload1cloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1cloneBB, align 8
  %.reload5cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5cloneBB, align 8
  br label %bodyBB

bodyBB20cloneBB:                                  ; preds = %bodyBB20, %32
  %.reload3cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %107 = load i8*, i8** %.reload3cloneBB, align 8
  %.reload15cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %108 = load i32, i32* %.reload15cloneBB, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %.reload14cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %113 = load i32, i32* %.reload14cloneBB, align 4
  %114 = sub nsw i32 32, %113
  %115 = add nsw i32 %112, %114
  store i32 %115, i32* %.reg2mem22, align 4
  br label %bodyBB20

bodyBB28cloneBB:                                  ; preds = %bodyBB28, %58
  %.reload13cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %116 = load i32, i32* %.reload13cloneBB, align 4
  %.reload23cloneBB = load volatile i32, i32* %.reg2mem22, align 4
  %117 = xor i32 %.reload23cloneBB, %116
  %118 = trunc i32 %117 to i8
  %.reloadcloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  %119 = load i8*, i8** %.reloadcloneBB, align 8
  %.reload12cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %120 = load i32, i32* %.reload12cloneBB, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  store i8 %118, i8* %122, align 1
  br label %bodyBB28

bodyBB34cloneBB:                                  ; preds = %bodyBB34, %86
  br label %bodyBB34
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %.reg2mem60 = alloca i32, align 4
  %.reg2mem34 = alloca i1, align 1
  %.reg2mem26 = alloca i1, align 1
  %.reg2mem13 = alloca i8*, align 8
  %.reg2mem9 = alloca [100 x i8]*, align 8
  %.reg2mem6 = alloca i8***, align 8
  %.reg2mem3 = alloca i32*, align 8
  %.reg2mem = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %y, align 4
  %5 = icmp slt i32 %4, 10
  %6 = add i32 %3, 1
  %7 = mul i32 %6, %3
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  %10 = or i1 %5, %9
  br i1 %10, label %bodyBB, label %bodyBBcloneBB

bodyBB:                                           ; preds = %bodyBBcloneBB, %2
  %11 = alloca i32, align 4
  store i32* %11, i32** %.reg2mem, align 8
  %12 = alloca i32, align 4
  store i32* %12, i32** %.reg2mem3, align 8
  %13 = alloca i8**, align 8
  store i8*** %13, i8**** %.reg2mem6, align 8
  %14 = alloca [100 x i8], align 16
  store [100 x i8]* %14, [100 x i8]** %.reg2mem9, align 8
  %15 = alloca i8, align 1
  store i8* %15, i8** %.reg2mem13, align 8
  %.reload2 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload2, align 4
  %x16 = alloca i32, align 4
  %y17 = alloca i32, align 4
  %16 = load i32, i32* %x16, align 4
  %17 = load i32, i32* %y17, align 4
  %18 = icmp slt i32 %17, 10
  %19 = add i32 %16, 1
  %20 = mul i32 %19, %16
  %21 = urem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %18, %22
  br i1 %23, label %endBB, label %bodyBBcloneBB

endBB:                                            ; preds = %bodyBB
  br label %24

24:                                               ; preds = %endBB
  %.reload5 = load volatile i32*, i32** %.reg2mem3, align 8
  store i32 %0, i32* %.reload5, align 4
  %.reload8 = load volatile i8***, i8**** %.reg2mem6, align 8
  store i8** %1, i8*** %.reload8, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %.reload4 = load volatile i32*, i32** %.reg2mem3, align 8
  %26 = load i32, i32* %.reload4, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1, align 4
  br label %30

30:                                               ; preds = %28
  %x20 = alloca i32, align 4
  %y21 = alloca i32, align 4
  %31 = load i32, i32* %x20, align 4
  %32 = load i32, i32* %y21, align 4
  %33 = icmp slt i32 %32, 10
  %34 = add i32 %31, 1
  %35 = mul i32 %34, %31
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = or i1 %33, %37
  br i1 %38, label %bodyBB18, label %bodyBB18cloneBB

bodyBB18:                                         ; preds = %bodyBB18cloneBB, %30
  %x22 = alloca i32, align 4
  %y23 = alloca i32, align 4
  %39 = load i32, i32* %x22, align 4
  %40 = load i32, i32* %y23, align 4
  %41 = icmp slt i32 %40, 10
  %42 = add i32 %39, 1
  %43 = mul i32 %42, %39
  %44 = urem i32 %43, 2
  %45 = icmp eq i32 %44, 0
  %46 = or i1 %41, %45
  br i1 %46, label %endBB19, label %bodyBB18cloneBB

endBB19:                                          ; preds = %bodyBB18
  br label %157

47:                                               ; preds = %24
  %.reload7 = load volatile i8***, i8**** %.reg2mem6, align 8
  %48 = load i8**, i8*** %.reload7, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** @input, align 8
  %51 = load i8*, i8** @input, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %.reload12 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %53 = bitcast [100 x i8]* %.reload12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %53, i8 0, i64 100, i1 false)
  br label %54

54:                                               ; preds = %47
  %x28 = alloca i32, align 4
  %y29 = alloca i32, align 4
  %55 = load i32, i32* %x28, align 4
  %56 = load i32, i32* %y29, align 4
  %57 = icmp slt i32 %56, 10
  %58 = add i32 %55, 1
  %59 = mul i32 %58, %55
  %60 = urem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %57, %61
  br i1 %62, label %bodyBB24, label %bodyBB24cloneBB

bodyBB24:                                         ; preds = %bodyBB24cloneBB, %54
  %.reload11 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11, i64 0, i64 0
  %64 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %63, i8* %64)
  %65 = load i8*, i8** @input, align 8
  %66 = call i64 @strlen(i8* %65) #5
  %67 = icmp eq i64 %66, 22
  store i1 %67, i1* %.reg2mem26, align 1
  %x30 = alloca i32, align 4
  %y31 = alloca i32, align 4
  %68 = load i32, i32* %x30, align 4
  %69 = load i32, i32* %y31, align 4
  %70 = icmp slt i32 %69, 10
  %71 = add i32 %68, 1
  %72 = mul i32 %71, %68
  %73 = urem i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = or i1 %70, %74
  br i1 %75, label %endBB25, label %bodyBB24cloneBB

endBB25:                                          ; preds = %bodyBB24
  %.reload27 = load volatile i1, i1* %.reg2mem26, align 1
  br i1 %.reload27, label %76, label %98

76:                                               ; preds = %endBB25
  %x36 = alloca i32, align 4
  %y37 = alloca i32, align 4
  %77 = load i32, i32* %x36, align 4
  %78 = load i32, i32* %y37, align 4
  %79 = icmp slt i32 %78, 10
  %80 = add i32 %77, 1
  %81 = mul i32 %80, %77
  %82 = urem i32 %81, 2
  %83 = icmp eq i32 %82, 0
  %84 = or i1 %79, %83
  br i1 %84, label %bodyBB32, label %bodyBB32cloneBB

bodyBB32:                                         ; preds = %bodyBB32cloneBB, %76
  %.reload10 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10, i64 0, i64 0
  %86 = call i32 @memcmp(i8* %85, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %87 = icmp ne i32 %86, 0
  store i1 %87, i1* %.reg2mem34, align 1
  %x38 = alloca i32, align 4
  %y39 = alloca i32, align 4
  %88 = load i32, i32* %x38, align 4
  %89 = load i32, i32* %y39, align 4
  %90 = icmp slt i32 %89, 10
  %91 = add i32 %88, 1
  %92 = mul i32 %91, %88
  %93 = urem i32 %92, 2
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %90, %94
  br i1 %95, label %endBB33, label %bodyBB32cloneBB

endBB33:                                          ; preds = %bodyBB32
  br label %96

96:                                               ; preds = %endBB33
  %.reload35 = load volatile i1, i1* %.reg2mem34, align 1
  %97 = xor i1 %.reload35, true
  br label %98

98:                                               ; preds = %96, %endBB25
  %99 = phi i1 [ false, %endBB25 ], [ %97, %96 ]
  %100 = zext i1 %99 to i8
  %.reload15 = load volatile i8*, i8** %.reg2mem13, align 8
  store i8 %100, i8* %.reload15, align 1
  %.reload14 = load volatile i8*, i8** %.reg2mem13, align 8
  %101 = load i8, i8* %.reload14, align 1
  %102 = trunc i8 %101 to i1
  br i1 %102, label %103, label %138

103:                                              ; preds = %98
  %x42 = alloca i32, align 4
  %y43 = alloca i32, align 4
  %104 = load i32, i32* %x42, align 4
  %105 = load i32, i32* %y43, align 4
  %106 = icmp slt i32 %105, 10
  %107 = add i32 %104, 1
  %108 = mul i32 %107, %104
  %109 = urem i32 %108, 2
  %110 = icmp eq i32 %109, 0
  %111 = or i1 %106, %110
  br i1 %111, label %bodyBB40, label %bodyBB40cloneBB

bodyBB40:                                         ; preds = %bodyBB40cloneBB, %103
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %x44 = alloca i32, align 4
  %y45 = alloca i32, align 4
  %113 = load i32, i32* %x44, align 4
  %114 = load i32, i32* %y45, align 4
  %115 = icmp slt i32 %114, 10
  %116 = add i32 %113, 1
  %117 = mul i32 %116, %113
  %118 = urem i32 %117, 2
  %119 = icmp eq i32 %118, 0
  %120 = or i1 %115, %119
  br i1 %120, label %endBB41, label %bodyBB40cloneBB

endBB41:                                          ; preds = %bodyBB40
  br label %121

121:                                              ; preds = %endBB41
  %x48 = alloca i32, align 4
  %y49 = alloca i32, align 4
  %122 = load i32, i32* %x48, align 4
  %123 = load i32, i32* %y49, align 4
  %124 = icmp slt i32 %123, 10
  %125 = add i32 %122, 1
  %126 = mul i32 %125, %122
  %127 = urem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %124, %128
  br i1 %129, label %bodyBB46, label %bodyBB46cloneBB

bodyBB46:                                         ; preds = %bodyBB46cloneBB, %121
  %x50 = alloca i32, align 4
  %y51 = alloca i32, align 4
  %130 = load i32, i32* %x50, align 4
  %131 = load i32, i32* %y51, align 4
  %132 = icmp slt i32 %131, 10
  %133 = add i32 %130, 1
  %134 = mul i32 %133, %130
  %135 = urem i32 %134, 2
  %136 = icmp eq i32 %135, 0
  %137 = or i1 %132, %136
  br i1 %137, label %endBB47, label %bodyBB46cloneBB

endBB47:                                          ; preds = %bodyBB46
  br label %157

138:                                              ; preds = %98
  %x54 = alloca i32, align 4
  %y55 = alloca i32, align 4
  %139 = load i32, i32* %x54, align 4
  %140 = load i32, i32* %y55, align 4
  %141 = icmp slt i32 %140, 10
  %142 = add i32 %139, 1
  %143 = mul i32 %142, %139
  %144 = urem i32 %143, 2
  %145 = icmp eq i32 %144, 0
  %146 = or i1 %141, %145
  br i1 %146, label %bodyBB52, label %bodyBB52cloneBB

bodyBB52:                                         ; preds = %bodyBB52cloneBB, %138
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %x56 = alloca i32, align 4
  %y57 = alloca i32, align 4
  %148 = load i32, i32* %x56, align 4
  %149 = load i32, i32* %y57, align 4
  %150 = icmp slt i32 %149, 10
  %151 = add i32 %148, 1
  %152 = mul i32 %151, %148
  %153 = urem i32 %152, 2
  %154 = icmp eq i32 %153, 0
  %155 = or i1 %150, %154
  br i1 %155, label %endBB53, label %bodyBB52cloneBB

endBB53:                                          ; preds = %bodyBB52
  br label %156

156:                                              ; preds = %endBB53
  br label %157

157:                                              ; preds = %156, %endBB47, %endBB19
  %x62 = alloca i32, align 4
  %y63 = alloca i32, align 4
  %158 = load i32, i32* %x62, align 4
  %159 = load i32, i32* %y63, align 4
  %160 = icmp slt i32 %159, 10
  %161 = add i32 %158, 1
  %162 = mul i32 %161, %158
  %163 = urem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %160, %164
  br i1 %165, label %bodyBB58, label %bodyBB58cloneBB

bodyBB58:                                         ; preds = %bodyBB58cloneBB, %157
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %166 = load i32, i32* %.reload, align 4
  store i32 %166, i32* %.reg2mem60, align 4
  %x64 = alloca i32, align 4
  %y65 = alloca i32, align 4
  %167 = load i32, i32* %x64, align 4
  %168 = load i32, i32* %y65, align 4
  %169 = icmp slt i32 %168, 10
  %170 = add i32 %167, 1
  %171 = mul i32 %170, %167
  %172 = urem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = or i1 %169, %173
  br i1 %174, label %endBB59, label %bodyBB58cloneBB

endBB59:                                          ; preds = %bodyBB58
  br label %175

175:                                              ; preds = %endBB59
  %.reload61 = load volatile i32, i32* %.reg2mem60, align 4
  ret i32 %.reload61

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %176 = alloca i32, align 4
  store i32* %176, i32** %.reg2mem, align 8
  %177 = alloca i32, align 4
  store i32* %177, i32** %.reg2mem3, align 8
  %178 = alloca i8**, align 8
  store i8*** %178, i8**** %.reg2mem6, align 8
  %179 = alloca [100 x i8], align 16
  store [100 x i8]* %179, [100 x i8]** %.reg2mem9, align 8
  %180 = alloca i8, align 1
  store i8* %180, i8** %.reg2mem13, align 8
  %.reload2cloneBB = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload2cloneBB, align 4
  br label %bodyBB

bodyBB18cloneBB:                                  ; preds = %bodyBB18, %30
  br label %bodyBB18

bodyBB24cloneBB:                                  ; preds = %bodyBB24, %54
  %.reload11cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %181 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11cloneBB, i64 0, i64 0
  %182 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %181, i8* %182)
  %183 = load i8*, i8** @input, align 8
  %184 = call i64 @strlen(i8* %183) #5
  %185 = icmp eq i64 %184, 22
  store i1 %185, i1* %.reg2mem26, align 1
  br label %bodyBB24

bodyBB32cloneBB:                                  ; preds = %bodyBB32, %76
  %.reload10cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %186 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10cloneBB, i64 0, i64 0
  %187 = call i32 @memcmp(i8* %186, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %188 = icmp ne i32 %187, 0
  store i1 %188, i1* %.reg2mem34, align 1
  br label %bodyBB32

bodyBB40cloneBB:                                  ; preds = %bodyBB40, %103
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %bodyBB40

bodyBB46cloneBB:                                  ; preds = %bodyBB46, %121
  br label %bodyBB46

bodyBB52cloneBB:                                  ; preds = %bodyBB52, %138
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %bodyBB52

bodyBB58cloneBB:                                  ; preds = %bodyBB58, %157
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 8
  %191 = load i32, i32* %.reloadcloneBB, align 4
  store i32 %191, i32* %.reg2mem60, align 4
  br label %bodyBB58
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
