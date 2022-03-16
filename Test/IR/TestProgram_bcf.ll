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
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0
@x.7 = common global i32 0
@y.8 = common global i32 0
@x.9 = common global i32 0
@y.10 = common global i32 0
@x.11 = common global i32 0
@y.12 = common global i32 0
@x.13 = common global i32 0
@y.14 = common global i32 0
@x.15 = common global i32 0
@y.16 = common global i32 0
@x.17 = common global i32 0
@y.18 = common global i32 0
@x.19 = common global i32 0
@y.20 = common global i32 0
@x.21 = common global i32 0
@y.22 = common global i32 0
@x.23 = common global i32 0
@y.24 = common global i32 0
@x.25 = common global i32 0
@y.26 = common global i32 0
@x.27 = common global i32 0
@y.28 = common global i32 0
@x.29 = common global i32 0
@y.30 = common global i32 0
@x.31 = common global i32 0
@y.32 = common global i32 0
@x.33 = common global i32 0
@y.34 = common global i32 0
@x.35 = common global i32 0
@y.36 = common global i32 0
@x.37 = common global i32 0
@y.38 = common global i32 0
@x.39 = common global i32 0
@y.40 = common global i32 0
@x.41 = common global i32 0
@y.42 = common global i32 0
@x.43 = common global i32 0
@y.44 = common global i32 0
@x.45 = common global i32 0
@y.46 = common global i32 0
@x.47 = common global i32 0
@y.48 = common global i32 0
@x.49 = common global i32 0
@y.50 = common global i32 0
@x.51 = common global i32 0
@y.52 = common global i32 0
@x.53 = common global i32 0
@y.54 = common global i32 0
@x.55 = common global i32 0
@y.56 = common global i32 0
@x.57 = common global i32 0
@y.58 = common global i32 0
@x.59 = common global i32 0
@y.60 = common global i32 0
@x.61 = common global i32 0
@y.62 = common global i32 0
@x.63 = common global i32 0
@y.64 = common global i32 0
@x.65 = common global i32 0
@y.66 = common global i32 0
@x.67 = common global i32 0
@y.68 = common global i32 0
@x.69 = common global i32 0
@y.70 = common global i32 0
@x.71 = common global i32 0
@y.72 = common global i32 0
@x.73 = common global i32 0
@y.74 = common global i32 0
@x.75 = common global i32 0
@y.76 = common global i32 0
@x.77 = common global i32 0
@y.78 = common global i32 0
@x.79 = common global i32 0
@y.80 = common global i32 0
@x.81 = common global i32 0
@y.82 = common global i32 0
@x.83 = common global i32 0
@y.84 = common global i32 0
@x.85 = common global i32 0
@y.86 = common global i32 0
@x.87 = common global i32 0
@y.88 = common global i32 0
@x.89 = common global i32 0
@y.90 = common global i32 0
@x.91 = common global i32 0
@y.92 = common global i32 0
@x.93 = common global i32 0
@y.94 = common global i32 0

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define dso_local void @_Z7encryptPhPc(i8* %0, i8* %1) #0 {
  %.reg2mem38 = alloca i32, align 4
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem28 = alloca i1, align 1
  %.reg2mem24 = alloca i32, align 4
  %.reg2mem22 = alloca i32, align 4
  %.reg2mem9 = alloca i32*, align 8
  %.reg2mem6 = alloca i32*, align 8
  %.reg2mem2 = alloca i8**, align 8
  %.reg2mem = alloca i8**, align 8
  %3 = load i32, i32* @x, align 4
  %4 = load i32, i32* @y, align 4
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
  %15 = load i32, i32* @x.1, align 4
  %16 = load i32, i32* @y.2, align 4
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
  %24 = load i32, i32* @x.3, align 4
  %25 = load i32, i32* @y.4, align 4
  %26 = icmp slt i32 %25, 10
  %27 = add i32 %24, 1
  %28 = mul i32 %27, %24
  %29 = urem i32 %28, 2
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %26, %30
  br i1 %31, label %bodyBB18, label %bodyBB18cloneBB

bodyBB18:                                         ; preds = %bodyBB18cloneBB, %23
  %.reload4 = load volatile i8**, i8*** %.reg2mem2, align 8
  %32 = load i8*, i8** %.reload4, align 8
  %33 = call i64 @strlen(i8* %32) #5
  %34 = trunc i64 %33 to i32
  %.reload8 = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %34, i32* %.reload8, align 4
  %.reload17 = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17, align 4
  %35 = load i32, i32* @x.5, align 4
  %36 = load i32, i32* @y.6, align 4
  %37 = icmp slt i32 %36, 10
  %38 = add i32 %35, 1
  %39 = mul i32 %38, %35
  %40 = urem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  %42 = or i1 %37, %41
  br i1 %42, label %endBB19, label %bodyBB18cloneBB

endBB19:                                          ; preds = %bodyBB18
  br label %43

43:                                               ; preds = %endBB41, %endBB19
  %44 = load i32, i32* @x.7, align 4
  %45 = load i32, i32* @y.8, align 4
  %46 = icmp slt i32 %45, 10
  %47 = add i32 %44, 1
  %48 = mul i32 %47, %44
  %49 = urem i32 %48, 2
  %50 = icmp eq i32 %49, 0
  %51 = or i1 %46, %50
  br i1 %51, label %bodyBB20, label %bodyBB20cloneBB

bodyBB20:                                         ; preds = %bodyBB20cloneBB, %43
  %.reload16 = load volatile i32*, i32** %.reg2mem9, align 8
  %52 = load i32, i32* %.reload16, align 4
  store i32 %52, i32* %.reg2mem22, align 4
  %.reload7 = load volatile i32*, i32** %.reg2mem6, align 8
  %53 = load i32, i32* %.reload7, align 4
  store i32 %53, i32* %.reg2mem24, align 4
  %54 = load i32, i32* @x.9, align 4
  %55 = load i32, i32* @y.10, align 4
  %56 = icmp slt i32 %55, 10
  %57 = add i32 %54, 1
  %58 = mul i32 %57, %54
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %56, %60
  br i1 %61, label %endBB21, label %bodyBB20cloneBB

endBB21:                                          ; preds = %bodyBB20
  br label %62

62:                                               ; preds = %endBB21
  %63 = load i32, i32* @x.11, align 4
  %64 = load i32, i32* @y.12, align 4
  %65 = icmp slt i32 %64, 10
  %66 = add i32 %63, 1
  %67 = mul i32 %66, %63
  %68 = urem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %65, %69
  br i1 %70, label %bodyBB26, label %bodyBB26cloneBB

bodyBB26:                                         ; preds = %bodyBB26cloneBB, %62
  %.reload23 = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25 = load volatile i32, i32* %.reg2mem24, align 4
  %71 = icmp slt i32 %.reload23, %.reload25
  store i1 %71, i1* %.reg2mem28, align 1
  %72 = load i32, i32* @x.13, align 4
  %73 = load i32, i32* @y.14, align 4
  %74 = icmp slt i32 %73, 10
  %75 = add i32 %72, 1
  %76 = mul i32 %75, %72
  %77 = urem i32 %76, 2
  %78 = icmp eq i32 %77, 0
  %79 = or i1 %74, %78
  br i1 %79, label %endBB27, label %bodyBB26cloneBB

endBB27:                                          ; preds = %bodyBB26
  %.reload29 = load volatile i1, i1* %.reg2mem28, align 1
  br i1 %.reload29, label %80, label %166

80:                                               ; preds = %endBB27
  %81 = load i32, i32* @x.15, align 4
  %82 = load i32, i32* @y.16, align 4
  %83 = icmp slt i32 %82, 10
  %84 = add i32 %81, 1
  %85 = mul i32 %84, %81
  %86 = urem i32 %85, 2
  %87 = icmp eq i32 %86, 0
  %88 = or i1 %83, %87
  br i1 %88, label %bodyBB30, label %bodyBB30cloneBB

bodyBB30:                                         ; preds = %bodyBB30cloneBB, %80
  %.reload3 = load volatile i8**, i8*** %.reg2mem2, align 8
  %89 = load i8*, i8** %.reload3, align 8
  %.reload15 = load volatile i32*, i32** %.reg2mem9, align 8
  %90 = load i32, i32* %.reload15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %.reload14 = load volatile i32*, i32** %.reg2mem9, align 8
  %95 = load i32, i32* %.reload14, align 4
  %96 = sub nsw i32 32, %95
  %97 = add nsw i32 %94, %96
  store i32 %97, i32* %.reg2mem32, align 4
  %98 = load i32, i32* @x.17, align 4
  %99 = load i32, i32* @y.18, align 4
  %100 = icmp slt i32 %99, 10
  %101 = add i32 %98, 1
  %102 = mul i32 %101, %98
  %103 = urem i32 %102, 2
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %100, %104
  br i1 %105, label %endBB31, label %bodyBB30cloneBB

endBB31:                                          ; preds = %bodyBB30
  br label %106

106:                                              ; preds = %endBB31
  %107 = load i32, i32* @x.19, align 4
  %108 = load i32, i32* @y.20, align 4
  %109 = icmp slt i32 %108, 10
  %110 = add i32 %107, 1
  %111 = mul i32 %110, %107
  %112 = urem i32 %111, 2
  %113 = icmp eq i32 %112, 0
  %114 = or i1 %109, %113
  br i1 %114, label %bodyBB34, label %bodyBB34cloneBB

bodyBB34:                                         ; preds = %bodyBB34cloneBB, %106
  %.reload13 = load volatile i32*, i32** %.reg2mem9, align 8
  %115 = load i32, i32* %.reload13, align 4
  %.reload33 = load volatile i32, i32* %.reg2mem32, align 4
  %116 = xor i32 %.reload33, %115
  %117 = trunc i32 %116 to i8
  %.reload = load volatile i8**, i8*** %.reg2mem, align 8
  %118 = load i8*, i8** %.reload, align 8
  %.reload12 = load volatile i32*, i32** %.reg2mem9, align 8
  %119 = load i32, i32* %.reload12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 %117, i8* %121, align 1
  %122 = load i32, i32* @x.21, align 4
  %123 = load i32, i32* @y.22, align 4
  %124 = icmp slt i32 %123, 10
  %125 = add i32 %122, 1
  %126 = mul i32 %125, %122
  %127 = urem i32 %126, 2
  %128 = icmp eq i32 %127, 0
  %129 = or i1 %124, %128
  br i1 %129, label %endBB35, label %bodyBB34cloneBB

endBB35:                                          ; preds = %bodyBB34
  br label %130

130:                                              ; preds = %endBB35
  %131 = load i32, i32* @x.23, align 4
  %132 = load i32, i32* @y.24, align 4
  %133 = icmp slt i32 %132, 10
  %134 = add i32 %131, 1
  %135 = mul i32 %134, %131
  %136 = urem i32 %135, 2
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %133, %137
  br i1 %138, label %bodyBB36, label %bodyBB36cloneBB

bodyBB36:                                         ; preds = %bodyBB36cloneBB, %130
  %.reload11 = load volatile i32*, i32** %.reg2mem9, align 8
  %139 = load i32, i32* %.reload11, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %.reg2mem38, align 4
  %141 = load i32, i32* @x.25, align 4
  %142 = load i32, i32* @y.26, align 4
  %143 = icmp slt i32 %142, 10
  %144 = add i32 %141, 1
  %145 = mul i32 %144, %141
  %146 = urem i32 %145, 2
  %147 = icmp eq i32 %146, 0
  %148 = or i1 %143, %147
  br i1 %148, label %endBB37, label %bodyBB36cloneBB

endBB37:                                          ; preds = %bodyBB36
  br label %149

149:                                              ; preds = %endBB37
  %150 = load i32, i32* @x.27, align 4
  %151 = load i32, i32* @y.28, align 4
  %152 = icmp slt i32 %151, 10
  %153 = add i32 %150, 1
  %154 = mul i32 %153, %150
  %155 = urem i32 %154, 2
  %156 = icmp eq i32 %155, 0
  %157 = or i1 %152, %156
  br i1 %157, label %bodyBB40, label %bodyBB40cloneBB

bodyBB40:                                         ; preds = %bodyBB40cloneBB, %149
  %.reload10 = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39 = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39, i32* %.reload10, align 4
  %158 = load i32, i32* @x.29, align 4
  %159 = load i32, i32* @y.30, align 4
  %160 = icmp slt i32 %159, 10
  %161 = add i32 %158, 1
  %162 = mul i32 %161, %158
  %163 = urem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  %165 = or i1 %160, %164
  br i1 %165, label %endBB41, label %bodyBB40cloneBB

endBB41:                                          ; preds = %bodyBB40
  br label %43, !llvm.loop !4

166:                                              ; preds = %endBB27
  %167 = load i32, i32* @x.31, align 4
  %168 = load i32, i32* @y.32, align 4
  %169 = icmp slt i32 %168, 10
  %170 = add i32 %167, 1
  %171 = mul i32 %170, %167
  %172 = urem i32 %171, 2
  %173 = icmp eq i32 %172, 0
  %174 = or i1 %169, %173
  br i1 %174, label %bodyBB42, label %bodyBB42cloneBB

bodyBB42:                                         ; preds = %bodyBB42cloneBB, %166
  %175 = load i32, i32* @x.33, align 4
  %176 = load i32, i32* @y.34, align 4
  %177 = icmp slt i32 %176, 10
  %178 = add i32 %175, 1
  %179 = mul i32 %178, %175
  %180 = urem i32 %179, 2
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %177, %181
  br i1 %182, label %endBB43, label %bodyBB42cloneBB

endBB43:                                          ; preds = %bodyBB42
  ret void

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %183 = alloca i8*, align 8
  store i8** %183, i8*** %.reg2mem, align 8
  %184 = alloca i8*, align 8
  store i8** %184, i8*** %.reg2mem2, align 8
  %185 = alloca i32, align 4
  store i32* %185, i32** %.reg2mem6, align 8
  %186 = alloca i32, align 4
  store i32* %186, i32** %.reg2mem9, align 8
  %.reload1cloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  store i8* %0, i8** %.reload1cloneBB, align 8
  %.reload5cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  store i8* %1, i8** %.reload5cloneBB, align 8
  br label %bodyBB

bodyBB18cloneBB:                                  ; preds = %bodyBB18, %23
  %.reload4cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %187 = load i8*, i8** %.reload4cloneBB, align 8
  %188 = call i64 @strlen(i8* %187) #5
  %189 = trunc i64 %188 to i32
  %.reload8cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  store i32 %189, i32* %.reload8cloneBB, align 4
  %.reload17cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  store i32 0, i32* %.reload17cloneBB, align 4
  br label %bodyBB18

bodyBB20cloneBB:                                  ; preds = %bodyBB20, %43
  %.reload16cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %190 = load i32, i32* %.reload16cloneBB, align 4
  store i32 %190, i32* %.reg2mem22, align 4
  %.reload7cloneBB = load volatile i32*, i32** %.reg2mem6, align 8
  %191 = load i32, i32* %.reload7cloneBB, align 4
  store i32 %191, i32* %.reg2mem24, align 4
  br label %bodyBB20

bodyBB26cloneBB:                                  ; preds = %bodyBB26, %62
  %.reload23cloneBB = load volatile i32, i32* %.reg2mem22, align 4
  %.reload25cloneBB = load volatile i32, i32* %.reg2mem24, align 4
  %192 = icmp slt i32 %.reload23cloneBB, %.reload25cloneBB
  store i1 %192, i1* %.reg2mem28, align 1
  br label %bodyBB26

bodyBB30cloneBB:                                  ; preds = %bodyBB30, %80
  %.reload3cloneBB = load volatile i8**, i8*** %.reg2mem2, align 8
  %193 = load i8*, i8** %.reload3cloneBB, align 8
  %.reload15cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %194 = load i32, i32* %.reload15cloneBB, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %.reload14cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %199 = load i32, i32* %.reload14cloneBB, align 4
  %200 = sub nsw i32 32, %199
  %201 = add nsw i32 %198, %200
  store i32 %201, i32* %.reg2mem32, align 4
  br label %bodyBB30

bodyBB34cloneBB:                                  ; preds = %bodyBB34, %106
  %.reload13cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %202 = load i32, i32* %.reload13cloneBB, align 4
  %.reload33cloneBB = load volatile i32, i32* %.reg2mem32, align 4
  %203 = xor i32 %.reload33cloneBB, %202
  %204 = trunc i32 %203 to i8
  %.reloadcloneBB = load volatile i8**, i8*** %.reg2mem, align 8
  %205 = load i8*, i8** %.reloadcloneBB, align 8
  %.reload12cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %206 = load i32, i32* %.reload12cloneBB, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 %204, i8* %208, align 1
  br label %bodyBB34

bodyBB36cloneBB:                                  ; preds = %bodyBB36, %130
  %.reload11cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %209 = load i32, i32* %.reload11cloneBB, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %.reg2mem38, align 4
  br label %bodyBB36

bodyBB40cloneBB:                                  ; preds = %bodyBB40, %149
  %.reload10cloneBB = load volatile i32*, i32** %.reg2mem9, align 8
  %.reload39cloneBB = load volatile i32, i32* %.reg2mem38, align 4
  store i32 %.reload39cloneBB, i32* %.reload10cloneBB, align 4
  br label %bodyBB40

bodyBB42cloneBB:                                  ; preds = %bodyBB42, %166
  br label %bodyBB42
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %.reload53.reg2mem = alloca i32, align 4
  %.reg2mem52 = alloca i32, align 4
  %.reg2mem40 = alloca i1, align 1
  %.reg2mem36 = alloca i1, align 1
  %.reg2mem32 = alloca i1, align 1
  %.reg2mem28 = alloca i1, align 1
  %.reg2mem18 = alloca i1, align 1
  %.reg2mem13 = alloca i8*, align 8
  %.reg2mem9 = alloca [100 x i8]*, align 8
  %.reg2mem6 = alloca i8***, align 8
  %.reg2mem3 = alloca i32*, align 8
  %.reg2mem = alloca i32*, align 8
  %3 = load i32, i32* @x.35, align 4
  %4 = load i32, i32* @y.36, align 4
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
  %16 = load i32, i32* @x.37, align 4
  %17 = load i32, i32* @y.38, align 4
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
  %25 = load i32, i32* @x.39, align 4
  %26 = load i32, i32* @y.40, align 4
  %27 = icmp slt i32 %26, 10
  %28 = add i32 %25, 1
  %29 = mul i32 %28, %25
  %30 = urem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %27, %31
  br i1 %32, label %bodyBB16, label %bodyBB16cloneBB

bodyBB16:                                         ; preds = %bodyBB16cloneBB, %24
  %.reload5 = load volatile i32*, i32** %.reg2mem3, align 8
  store i32 %0, i32* %.reload5, align 4
  %.reload8 = load volatile i8***, i8**** %.reg2mem6, align 8
  store i8** %1, i8*** %.reload8, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %.reload4 = load volatile i32*, i32** %.reg2mem3, align 8
  %34 = load i32, i32* %.reload4, align 4
  %35 = icmp sle i32 %34, 1
  store i1 %35, i1* %.reg2mem18, align 1
  %36 = load i32, i32* @x.41, align 4
  %37 = load i32, i32* @y.42, align 4
  %38 = icmp slt i32 %37, 10
  %39 = add i32 %36, 1
  %40 = mul i32 %39, %36
  %41 = urem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %38, %42
  br i1 %43, label %endBB17, label %bodyBB16cloneBB

endBB17:                                          ; preds = %bodyBB16
  %.reload19 = load volatile i1, i1* %.reg2mem18, align 1
  br i1 %.reload19, label %44, label %79

44:                                               ; preds = %endBB17
  %45 = load i32, i32* @x.43, align 4
  %46 = load i32, i32* @y.44, align 4
  %47 = icmp slt i32 %46, 10
  %48 = add i32 %45, 1
  %49 = mul i32 %48, %45
  %50 = urem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %47, %51
  br i1 %52, label %bodyBB20, label %bodyBB20cloneBB

bodyBB20:                                         ; preds = %bodyBB20cloneBB, %44
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1, align 4
  %54 = load i32, i32* @x.45, align 4
  %55 = load i32, i32* @y.46, align 4
  %56 = icmp slt i32 %55, 10
  %57 = add i32 %54, 1
  %58 = mul i32 %57, %54
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %56, %60
  br i1 %61, label %endBB21, label %bodyBB20cloneBB

endBB21:                                          ; preds = %bodyBB20
  br label %62

62:                                               ; preds = %endBB21
  %63 = load i32, i32* @x.47, align 4
  %64 = load i32, i32* @y.48, align 4
  %65 = icmp slt i32 %64, 10
  %66 = add i32 %63, 1
  %67 = mul i32 %66, %63
  %68 = urem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %65, %69
  br i1 %70, label %bodyBB22, label %bodyBB22cloneBB

bodyBB22:                                         ; preds = %bodyBB22cloneBB, %62
  %71 = load i32, i32* @x.49, align 4
  %72 = load i32, i32* @y.50, align 4
  %73 = icmp slt i32 %72, 10
  %74 = add i32 %71, 1
  %75 = mul i32 %74, %71
  %76 = urem i32 %75, 2
  %77 = icmp eq i32 %76, 0
  %78 = or i1 %73, %77
  br i1 %78, label %endBB23, label %bodyBB22cloneBB

endBB23:                                          ; preds = %bodyBB22
  br label %253

79:                                               ; preds = %endBB17
  %80 = load i32, i32* @x.51, align 4
  %81 = load i32, i32* @y.52, align 4
  %82 = icmp slt i32 %81, 10
  %83 = add i32 %80, 1
  %84 = mul i32 %83, %80
  %85 = urem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %82, %86
  br i1 %87, label %bodyBB24, label %bodyBB24cloneBB

bodyBB24:                                         ; preds = %bodyBB24cloneBB, %79
  %.reload7 = load volatile i8***, i8**** %.reg2mem6, align 8
  %88 = load i8**, i8*** %.reload7, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 1
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** @input, align 8
  %91 = load i8*, i8** @input, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %.reload12 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %93 = bitcast [100 x i8]* %.reload12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %93, i8 0, i64 100, i1 false)
  %94 = load i32, i32* @x.53, align 4
  %95 = load i32, i32* @y.54, align 4
  %96 = icmp slt i32 %95, 10
  %97 = add i32 %94, 1
  %98 = mul i32 %97, %94
  %99 = urem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %96, %100
  br i1 %101, label %endBB25, label %bodyBB24cloneBB

endBB25:                                          ; preds = %bodyBB24
  br label %102

102:                                              ; preds = %endBB25
  %103 = load i32, i32* @x.55, align 4
  %104 = load i32, i32* @y.56, align 4
  %105 = icmp slt i32 %104, 10
  %106 = add i32 %103, 1
  %107 = mul i32 %106, %103
  %108 = urem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = or i1 %105, %109
  br i1 %110, label %bodyBB26, label %bodyBB26cloneBB

bodyBB26:                                         ; preds = %bodyBB26cloneBB, %102
  %.reload11 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11, i64 0, i64 0
  %112 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %111, i8* %112)
  %113 = load i8*, i8** @input, align 8
  %114 = call i64 @strlen(i8* %113) #5
  %115 = icmp eq i64 %114, 22
  store i1 %115, i1* %.reg2mem28, align 1
  %116 = load i32, i32* @x.57, align 4
  %117 = load i32, i32* @y.58, align 4
  %118 = icmp slt i32 %117, 10
  %119 = add i32 %116, 1
  %120 = mul i32 %119, %116
  %121 = urem i32 %120, 2
  %122 = icmp eq i32 %121, 0
  %123 = or i1 %118, %122
  br i1 %123, label %endBB27, label %bodyBB26cloneBB

endBB27:                                          ; preds = %bodyBB26
  %.reload29 = load volatile i1, i1* %.reg2mem28, align 1
  br i1 %.reload29, label %124, label %162

124:                                              ; preds = %endBB27
  %125 = load i32, i32* @x.59, align 4
  %126 = load i32, i32* @y.60, align 4
  %127 = icmp slt i32 %126, 10
  %128 = add i32 %125, 1
  %129 = mul i32 %128, %125
  %130 = urem i32 %129, 2
  %131 = icmp eq i32 %130, 0
  %132 = or i1 %127, %131
  br i1 %132, label %bodyBB30, label %bodyBB30cloneBB

bodyBB30:                                         ; preds = %bodyBB30cloneBB, %124
  %.reload10 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %133 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10, i64 0, i64 0
  %134 = call i32 @memcmp(i8* %133, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %135 = icmp ne i32 %134, 0
  store i1 %135, i1* %.reg2mem32, align 1
  %136 = load i32, i32* @x.61, align 4
  %137 = load i32, i32* @y.62, align 4
  %138 = icmp slt i32 %137, 10
  %139 = add i32 %136, 1
  %140 = mul i32 %139, %136
  %141 = urem i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = or i1 %138, %142
  br i1 %143, label %endBB31, label %bodyBB30cloneBB

endBB31:                                          ; preds = %bodyBB30
  br label %144

144:                                              ; preds = %endBB31
  %145 = load i32, i32* @x.63, align 4
  %146 = load i32, i32* @y.64, align 4
  %147 = icmp slt i32 %146, 10
  %148 = add i32 %145, 1
  %149 = mul i32 %148, %145
  %150 = urem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = or i1 %147, %151
  br i1 %152, label %bodyBB34, label %bodyBB34cloneBB

bodyBB34:                                         ; preds = %bodyBB34cloneBB, %144
  %.reload33 = load volatile i1, i1* %.reg2mem32, align 1
  %153 = xor i1 %.reload33, true
  store i1 %153, i1* %.reg2mem36, align 1
  %154 = load i32, i32* @x.65, align 4
  %155 = load i32, i32* @y.66, align 4
  %156 = icmp slt i32 %155, 10
  %157 = add i32 %154, 1
  %158 = mul i32 %157, %154
  %159 = urem i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = or i1 %156, %160
  br i1 %161, label %endBB35, label %bodyBB34cloneBB

endBB35:                                          ; preds = %bodyBB34
  %.reload37 = load volatile i1, i1* %.reg2mem36, align 1
  br label %162

162:                                              ; preds = %endBB35, %endBB27
  %163 = phi i1 [ false, %endBB27 ], [ %.reload37, %endBB35 ]
  %164 = load i32, i32* @x.67, align 4
  %165 = load i32, i32* @y.68, align 4
  %166 = icmp slt i32 %165, 10
  %167 = add i32 %164, 1
  %168 = mul i32 %167, %164
  %169 = urem i32 %168, 2
  %170 = icmp eq i32 %169, 0
  %171 = or i1 %166, %170
  br i1 %171, label %bodyBB38, label %bodyBB38cloneBB

bodyBB38:                                         ; preds = %bodyBB38cloneBB, %162
  %172 = zext i1 %163 to i8
  %.reload15 = load volatile i8*, i8** %.reg2mem13, align 8
  store i8 %172, i8* %.reload15, align 1
  %.reload14 = load volatile i8*, i8** %.reg2mem13, align 8
  %173 = load i8, i8* %.reload14, align 1
  %174 = trunc i8 %173 to i1
  store i1 %174, i1* %.reg2mem40, align 1
  %175 = load i32, i32* @x.69, align 4
  %176 = load i32, i32* @y.70, align 4
  %177 = icmp slt i32 %176, 10
  %178 = add i32 %175, 1
  %179 = mul i32 %178, %175
  %180 = urem i32 %179, 2
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %177, %181
  br i1 %182, label %endBB39, label %bodyBB38cloneBB

endBB39:                                          ; preds = %bodyBB38
  %.reload41 = load volatile i1, i1* %.reg2mem40, align 1
  br i1 %.reload41, label %183, label %218

183:                                              ; preds = %endBB39
  %184 = load i32, i32* @x.71, align 4
  %185 = load i32, i32* @y.72, align 4
  %186 = icmp slt i32 %185, 10
  %187 = add i32 %184, 1
  %188 = mul i32 %187, %184
  %189 = urem i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %186, %190
  br i1 %191, label %bodyBB42, label %bodyBB42cloneBB

bodyBB42:                                         ; preds = %bodyBB42cloneBB, %183
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %193 = load i32, i32* @x.73, align 4
  %194 = load i32, i32* @y.74, align 4
  %195 = icmp slt i32 %194, 10
  %196 = add i32 %193, 1
  %197 = mul i32 %196, %193
  %198 = urem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = or i1 %195, %199
  br i1 %200, label %endBB43, label %bodyBB42cloneBB

endBB43:                                          ; preds = %bodyBB42
  br label %201

201:                                              ; preds = %endBB43
  %202 = load i32, i32* @x.75, align 4
  %203 = load i32, i32* @y.76, align 4
  %204 = icmp slt i32 %203, 10
  %205 = add i32 %202, 1
  %206 = mul i32 %205, %202
  %207 = urem i32 %206, 2
  %208 = icmp eq i32 %207, 0
  %209 = or i1 %204, %208
  br i1 %209, label %bodyBB44, label %bodyBB44cloneBB

bodyBB44:                                         ; preds = %bodyBB44cloneBB, %201
  %210 = load i32, i32* @x.77, align 4
  %211 = load i32, i32* @y.78, align 4
  %212 = icmp slt i32 %211, 10
  %213 = add i32 %210, 1
  %214 = mul i32 %213, %210
  %215 = urem i32 %214, 2
  %216 = icmp eq i32 %215, 0
  %217 = or i1 %212, %216
  br i1 %217, label %endBB45, label %bodyBB44cloneBB

endBB45:                                          ; preds = %bodyBB44
  br label %253

218:                                              ; preds = %endBB39
  %219 = load i32, i32* @x.79, align 4
  %220 = load i32, i32* @y.80, align 4
  %221 = icmp slt i32 %220, 10
  %222 = add i32 %219, 1
  %223 = mul i32 %222, %219
  %224 = urem i32 %223, 2
  %225 = icmp eq i32 %224, 0
  %226 = or i1 %221, %225
  br i1 %226, label %bodyBB46, label %bodyBB46cloneBB

bodyBB46:                                         ; preds = %bodyBB46cloneBB, %218
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %228 = load i32, i32* @x.81, align 4
  %229 = load i32, i32* @y.82, align 4
  %230 = icmp slt i32 %229, 10
  %231 = add i32 %228, 1
  %232 = mul i32 %231, %228
  %233 = urem i32 %232, 2
  %234 = icmp eq i32 %233, 0
  %235 = or i1 %230, %234
  br i1 %235, label %endBB47, label %bodyBB46cloneBB

endBB47:                                          ; preds = %bodyBB46
  br label %236

236:                                              ; preds = %endBB47
  %237 = load i32, i32* @x.83, align 4
  %238 = load i32, i32* @y.84, align 4
  %239 = icmp slt i32 %238, 10
  %240 = add i32 %237, 1
  %241 = mul i32 %240, %237
  %242 = urem i32 %241, 2
  %243 = icmp eq i32 %242, 0
  %244 = or i1 %239, %243
  br i1 %244, label %bodyBB48, label %bodyBB48cloneBB

bodyBB48:                                         ; preds = %bodyBB48cloneBB, %236
  %245 = load i32, i32* @x.85, align 4
  %246 = load i32, i32* @y.86, align 4
  %247 = icmp slt i32 %246, 10
  %248 = add i32 %245, 1
  %249 = mul i32 %248, %245
  %250 = urem i32 %249, 2
  %251 = icmp eq i32 %250, 0
  %252 = or i1 %247, %251
  br i1 %252, label %endBB49, label %bodyBB48cloneBB

endBB49:                                          ; preds = %bodyBB48
  br label %253

253:                                              ; preds = %endBB49, %endBB45, %endBB23
  %254 = load i32, i32* @x.87, align 4
  %255 = load i32, i32* @y.88, align 4
  %256 = icmp slt i32 %255, 10
  %257 = add i32 %254, 1
  %258 = mul i32 %257, %254
  %259 = urem i32 %258, 2
  %260 = icmp eq i32 %259, 0
  %261 = or i1 %256, %260
  br i1 %261, label %bodyBB50, label %bodyBB50cloneBB

bodyBB50:                                         ; preds = %bodyBB50cloneBB, %253
  %.reload = load volatile i32*, i32** %.reg2mem, align 8
  %262 = load i32, i32* %.reload, align 4
  store i32 %262, i32* %.reg2mem52, align 4
  %263 = load i32, i32* @x.89, align 4
  %264 = load i32, i32* @y.90, align 4
  %265 = icmp slt i32 %264, 10
  %266 = add i32 %263, 1
  %267 = mul i32 %266, %263
  %268 = urem i32 %267, 2
  %269 = icmp eq i32 %268, 0
  %270 = or i1 %265, %269
  br i1 %270, label %endBB51, label %bodyBB50cloneBB

endBB51:                                          ; preds = %bodyBB50
  br label %271

271:                                              ; preds = %endBB51
  %272 = load i32, i32* @x.91, align 4
  %273 = load i32, i32* @y.92, align 4
  %274 = icmp slt i32 %273, 10
  %275 = add i32 %272, 1
  %276 = mul i32 %275, %272
  %277 = urem i32 %276, 2
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %274, %278
  br i1 %279, label %bodyBB54, label %bodyBB54cloneBB

bodyBB54:                                         ; preds = %bodyBB54cloneBB, %271
  %.reload53 = load volatile i32, i32* %.reg2mem52, align 4
  store i32 %.reload53, i32* %.reload53.reg2mem, align 4
  %280 = load i32, i32* @x.93, align 4
  %281 = load i32, i32* @y.94, align 4
  %282 = icmp slt i32 %281, 10
  %283 = add i32 %280, 1
  %284 = mul i32 %283, %280
  %285 = urem i32 %284, 2
  %286 = icmp eq i32 %285, 0
  %287 = or i1 %282, %286
  br i1 %287, label %endBB55, label %bodyBB54cloneBB

endBB55:                                          ; preds = %bodyBB54
  %.reload53.reload = load volatile i32, i32* %.reload53.reg2mem, align 4
  ret i32 %.reload53.reload

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %288 = alloca i32, align 4
  store i32* %288, i32** %.reg2mem, align 8
  %289 = alloca i32, align 4
  store i32* %289, i32** %.reg2mem3, align 8
  %290 = alloca i8**, align 8
  store i8*** %290, i8**** %.reg2mem6, align 8
  %291 = alloca [100 x i8], align 16
  store [100 x i8]* %291, [100 x i8]** %.reg2mem9, align 8
  %292 = alloca i8, align 1
  store i8* %292, i8** %.reg2mem13, align 8
  %.reload2cloneBB = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload2cloneBB, align 4
  br label %bodyBB

bodyBB16cloneBB:                                  ; preds = %bodyBB16, %24
  %.reload5cloneBB = load volatile i32*, i32** %.reg2mem3, align 8
  store i32 %0, i32* %.reload5cloneBB, align 4
  %.reload8cloneBB = load volatile i8***, i8**** %.reg2mem6, align 8
  store i8** %1, i8*** %.reload8cloneBB, align 8
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %.reload4cloneBB = load volatile i32*, i32** %.reg2mem3, align 8
  %294 = load i32, i32* %.reload4cloneBB, align 4
  %295 = icmp sle i32 %294, 1
  store i1 %295, i1* %.reg2mem18, align 1
  br label %bodyBB16

bodyBB20cloneBB:                                  ; preds = %bodyBB20, %44
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %.reload1cloneBB = load volatile i32*, i32** %.reg2mem, align 8
  store i32 0, i32* %.reload1cloneBB, align 4
  br label %bodyBB20

bodyBB22cloneBB:                                  ; preds = %bodyBB22, %62
  br label %bodyBB22

bodyBB24cloneBB:                                  ; preds = %bodyBB24, %79
  %.reload7cloneBB = load volatile i8***, i8**** %.reg2mem6, align 8
  %297 = load i8**, i8*** %.reload7cloneBB, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 1
  %299 = load i8*, i8** %298, align 8
  store i8* %299, i8** @input, align 8
  %300 = load i8*, i8** @input, align 8
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %300)
  %.reload12cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %302 = bitcast [100 x i8]* %.reload12cloneBB to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %302, i8 0, i64 100, i1 false)
  br label %bodyBB24

bodyBB26cloneBB:                                  ; preds = %bodyBB26, %102
  %.reload11cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %303 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11cloneBB, i64 0, i64 0
  %304 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %303, i8* %304)
  %305 = load i8*, i8** @input, align 8
  %306 = call i64 @strlen(i8* %305) #5
  %307 = icmp eq i64 %306, 22
  store i1 %307, i1* %.reg2mem28, align 1
  br label %bodyBB26

bodyBB30cloneBB:                                  ; preds = %bodyBB30, %124
  %.reload10cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 8
  %308 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10cloneBB, i64 0, i64 0
  %309 = call i32 @memcmp(i8* %308, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %310 = icmp ne i32 %309, 0
  store i1 %310, i1* %.reg2mem32, align 1
  br label %bodyBB30

bodyBB34cloneBB:                                  ; preds = %bodyBB34, %144
  %.reload33cloneBB = load volatile i1, i1* %.reg2mem32, align 1
  %311 = xor i1 %.reload33cloneBB, true
  store i1 %311, i1* %.reg2mem36, align 1
  br label %bodyBB34

bodyBB38cloneBB:                                  ; preds = %bodyBB38, %162
  %312 = zext i1 %163 to i8
  %.reload15cloneBB = load volatile i8*, i8** %.reg2mem13, align 8
  store i8 %312, i8* %.reload15cloneBB, align 1
  %.reload14cloneBB = load volatile i8*, i8** %.reg2mem13, align 8
  %313 = load i8, i8* %.reload14cloneBB, align 1
  %314 = trunc i8 %313 to i1
  store i1 %314, i1* %.reg2mem40, align 1
  br label %bodyBB38

bodyBB42cloneBB:                                  ; preds = %bodyBB42, %183
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %bodyBB42

bodyBB44cloneBB:                                  ; preds = %bodyBB44, %201
  br label %bodyBB44

bodyBB46cloneBB:                                  ; preds = %bodyBB46, %218
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %bodyBB46

bodyBB48cloneBB:                                  ; preds = %bodyBB48, %236
  br label %bodyBB48

bodyBB50cloneBB:                                  ; preds = %bodyBB50, %253
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 8
  %317 = load i32, i32* %.reloadcloneBB, align 4
  store i32 %317, i32* %.reg2mem52, align 4
  br label %bodyBB50

bodyBB54cloneBB:                                  ; preds = %bodyBB54, %271
  %.reload53cloneBB = load volatile i32, i32* %.reg2mem52, align 4
  store i32 %.reload53cloneBB, i32* %.reload53.reg2mem, align 4
  br label %bodyBB54
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
