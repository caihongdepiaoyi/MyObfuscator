; ModuleID = 'IR/TestProgram_fla.ll'
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
  %.reg2mem38 = alloca i1, align 1
  %.reg2mem13 = alloca i32*, align 8
  %.reg2mem9 = alloca i8**, align 8
  %.reg2mem6 = alloca i8**, align 8
  %.reg2mem.reg2mem = alloca i32*, align 8
  %.reg2mem1.reg2mem = alloca i32*, align 8
  %.reg2mem3.reg2mem = alloca i32*, align 8
  %.reg2mem5.reg2mem = alloca i32*, align 8
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
  %.reg2mem5 = alloca i32, align 4
  store i32* %.reg2mem5, i32** %.reg2mem5.reg2mem, align 8
  %.reg2mem3 = alloca i32, align 4
  store i32* %.reg2mem3, i32** %.reg2mem3.reg2mem, align 8
  %.reg2mem1 = alloca i32, align 4
  store i32* %.reg2mem1, i32** %.reg2mem1.reg2mem, align 8
  %.reg2mem = alloca i32, align 4
  store i32* %.reg2mem, i32** %.reg2mem.reg2mem, align 8
  %11 = alloca i8*, align 8
  store i8** %11, i8*** %.reg2mem6, align 8
  %12 = alloca i8*, align 8
  store i8** %12, i8*** %.reg2mem9, align 8
  %13 = alloca i32, align 4
  store i32* %13, i32** %.reg2mem13, align 8
  %x16 = alloca i32, align 4
  %y17 = alloca i32, align 4
  %14 = load i32, i32* %x16, align 4
  %15 = load i32, i32* %y17, align 4
  %16 = icmp slt i32 %15, 10
  %17 = add i32 %14, 1
  %18 = mul i32 %17, %14
  %19 = urem i32 %18, 2
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %16, %20
  br i1 %21, label %endBB, label %bodyBBcloneBB

endBB:                                            ; preds = %bodyBB
  br label %22

22:                                               ; preds = %endBB
  %23 = alloca i32, align 4
  %.reload8 = load volatile i8**, i8*** %.reg2mem6, align 8
  store i8* %0, i8** %.reload8, align 8
  %.reload12 = load volatile i8**, i8*** %.reg2mem9, align 8
  store i8* %1, i8** %.reload12, align 8
  %swVar.ptr = alloca i32, align 4
  store i32 1497969506, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %endBB75, %22
  %swVar = load i32, i32* %swVar.ptr, align 4
  br label %24

24:                                               ; preds = %dispatchBB
  switch i32 %swVar, label %swDefault [
    i32 1497969506, label %41
    i32 1501903019, label %62
    i32 933088029, label %82
    i32 1294384553, label %102
    i32 393147266, label %129
    i32 340395374, label %154
    i32 1655559191, label %174
    i32 1565216025, label %192
  ]

swDefault:                                        ; preds = %24
  %x20 = alloca i32, align 4
  %y21 = alloca i32, align 4
  %25 = load i32, i32* %x20, align 4
  %26 = load i32, i32* %y21, align 4
  %27 = icmp slt i32 %26, 10
  %28 = add i32 %25, 1
  %29 = mul i32 %28, %25
  %30 = urem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %27, %31
  br i1 %32, label %bodyBB18, label %bodyBB18cloneBB

bodyBB18:                                         ; preds = %bodyBB18cloneBB, %swDefault
  %x22 = alloca i32, align 4
  %y23 = alloca i32, align 4
  %33 = load i32, i32* %x22, align 4
  %34 = load i32, i32* %y23, align 4
  %35 = icmp slt i32 %34, 10
  %36 = add i32 %33, 1
  %37 = mul i32 %36, %33
  %38 = urem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  %40 = or i1 %35, %39
  br i1 %40, label %endBB19, label %bodyBB18cloneBB

endBB19:                                          ; preds = %bodyBB18
  br label %returnBB

41:                                               ; preds = %24
  %x26 = alloca i32, align 4
  %y27 = alloca i32, align 4
  %42 = load i32, i32* %x26, align 4
  %43 = load i32, i32* %y27, align 4
  %44 = icmp slt i32 %43, 10
  %45 = add i32 %42, 1
  %46 = mul i32 %45, %42
  %47 = urem i32 %46, 2
  %48 = icmp eq i32 %47, 0
  %49 = or i1 %44, %48
  br i1 %49, label %bodyBB24, label %bodyBB24cloneBB

bodyBB24:                                         ; preds = %bodyBB24cloneBB, %41
  %.reload11 = load volatile i8**, i8*** %.reg2mem9, align 8
  %50 = load i8*, i8** %.reload11, align 8
  %51 = call i64 @strlen(i8* %50) #5
  %52 = trunc i64 %51 to i32
  %.reload15 = load volatile i32*, i32** %.reg2mem13, align 8
  store i32 %52, i32* %.reload15, align 4
  %x28 = alloca i32, align 4
  %y29 = alloca i32, align 4
  %53 = load i32, i32* %x28, align 4
  %54 = load i32, i32* %y29, align 4
  %55 = icmp slt i32 %54, 10
  %56 = add i32 %53, 1
  %57 = mul i32 %56, %53
  %58 = urem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %55, %59
  br i1 %60, label %endBB25, label %bodyBB24cloneBB

endBB25:                                          ; preds = %bodyBB24
  br label %61

61:                                               ; preds = %endBB25
  store i32 0, i32* %23, align 4
  store i32 1501903019, i32* %swVar.ptr, align 4
  br label %returnBB

62:                                               ; preds = %24
  %63 = load i32, i32* %23, align 4
  %.reg2mem.reload4 = load volatile i32*, i32** %.reg2mem.reg2mem, align 8
  store i32 %63, i32* %.reg2mem.reload4, align 4
  %.reload14 = load volatile i32*, i32** %.reg2mem13, align 8
  %64 = load i32, i32* %.reload14, align 4
  br label %65

65:                                               ; preds = %62
  %x32 = alloca i32, align 4
  %y33 = alloca i32, align 4
  %66 = load i32, i32* %x32, align 4
  %67 = load i32, i32* %y33, align 4
  %68 = icmp slt i32 %67, 10
  %69 = add i32 %66, 1
  %70 = mul i32 %69, %66
  %71 = urem i32 %70, 2
  %72 = icmp eq i32 %71, 0
  %73 = or i1 %68, %72
  br i1 %73, label %bodyBB30, label %bodyBB30cloneBB

bodyBB30:                                         ; preds = %bodyBB30cloneBB, %65
  %.reg2mem1.reload3 = load volatile i32*, i32** %.reg2mem1.reg2mem, align 8
  store i32 %64, i32* %.reg2mem1.reload3, align 4
  store i32 933088029, i32* %swVar.ptr, align 4
  %x34 = alloca i32, align 4
  %y35 = alloca i32, align 4
  %74 = load i32, i32* %x34, align 4
  %75 = load i32, i32* %y35, align 4
  %76 = icmp slt i32 %75, 10
  %77 = add i32 %74, 1
  %78 = mul i32 %77, %74
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %76, %80
  br i1 %81, label %endBB31, label %bodyBB30cloneBB

endBB31:                                          ; preds = %bodyBB30
  br label %returnBB

82:                                               ; preds = %24
  %x40 = alloca i32, align 4
  %y41 = alloca i32, align 4
  %83 = load i32, i32* %x40, align 4
  %84 = load i32, i32* %y41, align 4
  %85 = icmp slt i32 %84, 10
  %86 = add i32 %83, 1
  %87 = mul i32 %86, %83
  %88 = urem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %85, %89
  br i1 %90, label %bodyBB36, label %bodyBB36cloneBB

bodyBB36:                                         ; preds = %bodyBB36cloneBB, %82
  %.reg2mem.reload = load volatile i32*, i32** %.reg2mem.reg2mem, align 8
  %.reload = load volatile i32, i32* %.reg2mem.reload, align 4
  %.reg2mem1.reload = load volatile i32*, i32** %.reg2mem1.reg2mem, align 8
  %.reload2 = load volatile i32, i32* %.reg2mem1.reload, align 4
  %91 = icmp slt i32 %.reload, %.reload2
  store i1 %91, i1* %.reg2mem38, align 1
  %x42 = alloca i32, align 4
  %y43 = alloca i32, align 4
  %92 = load i32, i32* %x42, align 4
  %93 = load i32, i32* %y43, align 4
  %94 = icmp slt i32 %93, 10
  %95 = add i32 %92, 1
  %96 = mul i32 %95, %92
  %97 = urem i32 %96, 2
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %94, %98
  br i1 %99, label %endBB37, label %bodyBB36cloneBB

endBB37:                                          ; preds = %bodyBB36
  br label %100

100:                                              ; preds = %endBB37
  %.reload39 = load volatile i1, i1* %.reg2mem38, align 1
  %101 = select i1 %.reload39, i32 1294384553, i32 1565216025
  store i32 %101, i32* %swVar.ptr, align 4
  br label %returnBB

102:                                              ; preds = %24
  %.reload10 = load volatile i8**, i8*** %.reg2mem9, align 8
  %103 = load i8*, i8** %.reload10, align 8
  %104 = load i32, i32* %23, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  br label %109

109:                                              ; preds = %102
  %x46 = alloca i32, align 4
  %y47 = alloca i32, align 4
  %110 = load i32, i32* %x46, align 4
  %111 = load i32, i32* %y47, align 4
  %112 = icmp slt i32 %111, 10
  %113 = add i32 %110, 1
  %114 = mul i32 %113, %110
  %115 = urem i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = or i1 %112, %116
  br i1 %117, label %bodyBB44, label %bodyBB44cloneBB

bodyBB44:                                         ; preds = %bodyBB44cloneBB, %109
  %118 = load i32, i32* %23, align 4
  %119 = sub nsw i32 32, %118
  %120 = add nsw i32 %108, %119
  %.reg2mem3.reload2 = load volatile i32*, i32** %.reg2mem3.reg2mem, align 8
  store i32 %120, i32* %.reg2mem3.reload2, align 4
  store i32 393147266, i32* %swVar.ptr, align 4
  %x48 = alloca i32, align 4
  %y49 = alloca i32, align 4
  %121 = load i32, i32* %x48, align 4
  %122 = load i32, i32* %y49, align 4
  %123 = icmp slt i32 %122, 10
  %124 = add i32 %121, 1
  %125 = mul i32 %124, %121
  %126 = urem i32 %125, 2
  %127 = icmp eq i32 %126, 0
  %128 = or i1 %123, %127
  br i1 %128, label %endBB45, label %bodyBB44cloneBB

endBB45:                                          ; preds = %bodyBB44
  br label %returnBB

129:                                              ; preds = %24
  %130 = load i32, i32* %23, align 4
  %.reg2mem3.reload = load volatile i32*, i32** %.reg2mem3.reg2mem, align 8
  %.reload4 = load volatile i32, i32* %.reg2mem3.reload, align 4
  %131 = xor i32 %.reload4, %130
  %132 = trunc i32 %131 to i8
  %.reload7 = load volatile i8**, i8*** %.reg2mem6, align 8
  %133 = load i8*, i8** %.reload7, align 8
  %134 = load i32, i32* %23, align 4
  br label %135

135:                                              ; preds = %129
  %x52 = alloca i32, align 4
  %y53 = alloca i32, align 4
  %136 = load i32, i32* %x52, align 4
  %137 = load i32, i32* %y53, align 4
  %138 = icmp slt i32 %137, 10
  %139 = add i32 %136, 1
  %140 = mul i32 %139, %136
  %141 = urem i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = or i1 %138, %142
  br i1 %143, label %bodyBB50, label %bodyBB50cloneBB

bodyBB50:                                         ; preds = %bodyBB50cloneBB, %135
  %144 = sext i32 %134 to i64
  %145 = getelementptr inbounds i8, i8* %133, i64 %144
  store i8 %132, i8* %145, align 1
  store i32 340395374, i32* %swVar.ptr, align 4
  %x54 = alloca i32, align 4
  %y55 = alloca i32, align 4
  %146 = load i32, i32* %x54, align 4
  %147 = load i32, i32* %y55, align 4
  %148 = icmp slt i32 %147, 10
  %149 = add i32 %146, 1
  %150 = mul i32 %149, %146
  %151 = urem i32 %150, 2
  %152 = icmp eq i32 %151, 0
  %153 = or i1 %148, %152
  br i1 %153, label %endBB51, label %bodyBB50cloneBB

endBB51:                                          ; preds = %bodyBB50
  br label %returnBB

154:                                              ; preds = %24
  %x58 = alloca i32, align 4
  %y59 = alloca i32, align 4
  %155 = load i32, i32* %x58, align 4
  %156 = load i32, i32* %y59, align 4
  %157 = icmp slt i32 %156, 10
  %158 = add i32 %155, 1
  %159 = mul i32 %158, %155
  %160 = urem i32 %159, 2
  %161 = icmp eq i32 %160, 0
  %162 = or i1 %157, %161
  br i1 %162, label %bodyBB56, label %bodyBB56cloneBB

bodyBB56:                                         ; preds = %bodyBB56cloneBB, %154
  %163 = load i32, i32* %23, align 4
  %164 = add nsw i32 %163, 1
  %.reg2mem5.reload1 = load volatile i32*, i32** %.reg2mem5.reg2mem, align 8
  store i32 %164, i32* %.reg2mem5.reload1, align 4
  %x60 = alloca i32, align 4
  %y61 = alloca i32, align 4
  %165 = load i32, i32* %x60, align 4
  %166 = load i32, i32* %y61, align 4
  %167 = icmp slt i32 %166, 10
  %168 = add i32 %165, 1
  %169 = mul i32 %168, %165
  %170 = urem i32 %169, 2
  %171 = icmp eq i32 %170, 0
  %172 = or i1 %167, %171
  br i1 %172, label %endBB57, label %bodyBB56cloneBB

endBB57:                                          ; preds = %bodyBB56
  br label %173

173:                                              ; preds = %endBB57
  store i32 1655559191, i32* %swVar.ptr, align 4
  br label %returnBB

174:                                              ; preds = %24
  %.reg2mem5.reload = load volatile i32*, i32** %.reg2mem5.reg2mem, align 8
  %.reload6 = load volatile i32, i32* %.reg2mem5.reload, align 4
  store i32 %.reload6, i32* %23, align 4
  br label %175

175:                                              ; preds = %174
  %x64 = alloca i32, align 4
  %y65 = alloca i32, align 4
  %176 = load i32, i32* %x64, align 4
  %177 = load i32, i32* %y65, align 4
  %178 = icmp slt i32 %177, 10
  %179 = add i32 %176, 1
  %180 = mul i32 %179, %176
  %181 = urem i32 %180, 2
  %182 = icmp eq i32 %181, 0
  %183 = or i1 %178, %182
  br i1 %183, label %bodyBB62, label %bodyBB62cloneBB

bodyBB62:                                         ; preds = %bodyBB62cloneBB, %175
  store i32 1501903019, i32* %swVar.ptr, align 4
  %x66 = alloca i32, align 4
  %y67 = alloca i32, align 4
  %184 = load i32, i32* %x66, align 4
  %185 = load i32, i32* %y67, align 4
  %186 = icmp slt i32 %185, 10
  %187 = add i32 %184, 1
  %188 = mul i32 %187, %184
  %189 = urem i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %186, %190
  br i1 %191, label %endBB63, label %bodyBB62cloneBB

endBB63:                                          ; preds = %bodyBB62
  br label %returnBB

192:                                              ; preds = %24
  %x70 = alloca i32, align 4
  %y71 = alloca i32, align 4
  %193 = load i32, i32* %x70, align 4
  %194 = load i32, i32* %y71, align 4
  %195 = icmp slt i32 %194, 10
  %196 = add i32 %193, 1
  %197 = mul i32 %196, %193
  %198 = urem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = or i1 %195, %199
  br i1 %200, label %bodyBB68, label %bodyBB68cloneBB

bodyBB68:                                         ; preds = %bodyBB68cloneBB, %192
  %x72 = alloca i32, align 4
  %y73 = alloca i32, align 4
  %201 = load i32, i32* %x72, align 4
  %202 = load i32, i32* %y73, align 4
  %203 = icmp slt i32 %202, 10
  %204 = add i32 %201, 1
  %205 = mul i32 %204, %201
  %206 = urem i32 %205, 2
  %207 = icmp eq i32 %206, 0
  %208 = or i1 %203, %207
  br i1 %208, label %endBB69, label %bodyBB68cloneBB

endBB69:                                          ; preds = %bodyBB68
  ret void

returnBB:                                         ; preds = %endBB63, %173, %endBB51, %endBB45, %100, %endBB31, %61, %endBB19
  %x76 = alloca i32, align 4
  %y77 = alloca i32, align 4
  %209 = load i32, i32* %x76, align 4
  %210 = load i32, i32* %y77, align 4
  %211 = icmp slt i32 %210, 10
  %212 = add i32 %209, 1
  %213 = mul i32 %212, %209
  %214 = urem i32 %213, 2
  %215 = icmp eq i32 %214, 0
  %216 = or i1 %211, %215
  br i1 %216, label %bodyBB74, label %bodyBB74cloneBB

bodyBB74:                                         ; preds = %bodyBB74cloneBB, %returnBB
  %x78 = alloca i32, align 4
  %y79 = alloca i32, align 4
  %217 = load i32, i32* %x78, align 4
  %218 = load i32, i32* %y79, align 4
  %219 = icmp slt i32 %218, 10
  %220 = add i32 %217, 1
  %221 = mul i32 %220, %217
  %222 = urem i32 %221, 2
  %223 = icmp eq i32 %222, 0
  %224 = or i1 %219, %223
  br i1 %224, label %endBB75, label %bodyBB74cloneBB

endBB75:                                          ; preds = %bodyBB74
  br label %dispatchBB

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %.reg2mem5cloneBB = alloca i32, align 4
  store i32* %.reg2mem5cloneBB, i32** %.reg2mem5.reg2mem, align 8
  %.reg2mem3cloneBB = alloca i32, align 4
  store i32* %.reg2mem3cloneBB, i32** %.reg2mem3.reg2mem, align 8
  %.reg2mem1cloneBB = alloca i32, align 4
  store i32* %.reg2mem1cloneBB, i32** %.reg2mem1.reg2mem, align 8
  %.reg2memcloneBB = alloca i32, align 4
  store i32* %.reg2memcloneBB, i32** %.reg2mem.reg2mem, align 8
  %225 = alloca i8*, align 8
  store i8** %225, i8*** %.reg2mem6, align 8
  %226 = alloca i8*, align 8
  store i8** %226, i8*** %.reg2mem9, align 8
  %227 = alloca i32, align 4
  store i32* %227, i32** %.reg2mem13, align 8
  br label %bodyBB

bodyBB18cloneBB:                                  ; preds = %bodyBB18, %swDefault
  br label %bodyBB18

bodyBB24cloneBB:                                  ; preds = %bodyBB24, %41
  %.reload11cloneBB = load volatile i8**, i8*** %.reg2mem9, align 8
  %228 = load i8*, i8** %.reload11cloneBB, align 8
  %229 = call i64 @strlen(i8* %228) #5
  %230 = trunc i64 %229 to i32
  %.reload15cloneBB = load volatile i32*, i32** %.reg2mem13, align 8
  store i32 %230, i32* %.reload15cloneBB, align 4
  br label %bodyBB24

bodyBB30cloneBB:                                  ; preds = %bodyBB30, %65
  %.reg2mem1.reload3cloneBB = load volatile i32*, i32** %.reg2mem1.reg2mem, align 8
  store i32 %64, i32* %.reg2mem1.reload3cloneBB, align 4
  store i32 933088029, i32* %swVar.ptr, align 4
  br label %bodyBB30

bodyBB36cloneBB:                                  ; preds = %bodyBB36, %82
  %.reg2mem.reloadcloneBB = load volatile i32*, i32** %.reg2mem.reg2mem, align 8
  %.reloadcloneBB = load volatile i32, i32* %.reg2mem.reloadcloneBB, align 4
  %.reg2mem1.reloadcloneBB = load volatile i32*, i32** %.reg2mem1.reg2mem, align 8
  %.reload2cloneBB = load volatile i32, i32* %.reg2mem1.reloadcloneBB, align 4
  %231 = icmp slt i32 %.reloadcloneBB, %.reload2cloneBB
  store i1 %231, i1* %.reg2mem38, align 1
  br label %bodyBB36

bodyBB44cloneBB:                                  ; preds = %bodyBB44, %109
  %232 = load i32, i32* %23, align 4
  %233 = sub nsw i32 32, %232
  %234 = add nsw i32 %108, %233
  %.reg2mem3.reload2cloneBB = load volatile i32*, i32** %.reg2mem3.reg2mem, align 8
  store i32 %234, i32* %.reg2mem3.reload2cloneBB, align 4
  store i32 393147266, i32* %swVar.ptr, align 4
  br label %bodyBB44

bodyBB50cloneBB:                                  ; preds = %bodyBB50, %135
  %235 = sext i32 %134 to i64
  %236 = getelementptr inbounds i8, i8* %133, i64 %235
  store i8 %132, i8* %236, align 1
  store i32 340395374, i32* %swVar.ptr, align 4
  br label %bodyBB50

bodyBB56cloneBB:                                  ; preds = %bodyBB56, %154
  %237 = load i32, i32* %23, align 4
  %238 = add nsw i32 %237, 1
  %.reg2mem5.reload1cloneBB = load volatile i32*, i32** %.reg2mem5.reg2mem, align 8
  store i32 %238, i32* %.reg2mem5.reload1cloneBB, align 4
  br label %bodyBB56

bodyBB62cloneBB:                                  ; preds = %bodyBB62, %175
  store i32 1501903019, i32* %swVar.ptr, align 4
  br label %bodyBB62

bodyBB68cloneBB:                                  ; preds = %bodyBB68, %192
  br label %bodyBB68

bodyBB74cloneBB:                                  ; preds = %bodyBB74, %returnBB
  br label %bodyBB74
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %.reg2mem70 = alloca i1, align 1
  %.reg2mem32 = alloca i32, align 4
  %.reg2mem.reg2mem = alloca i1*, align 8
  %swVar.ptr.reg2mem = alloca i32*, align 8
  %.reg2mem2 = alloca i8*, align 8
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [100 x i8], align 16
  br label %7

7:                                                ; preds = %2
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %y, align 4
  %10 = icmp slt i32 %9, 10
  %11 = add i32 %8, 1
  %12 = mul i32 %11, %8
  %13 = urem i32 %12, 2
  %14 = icmp eq i32 %13, 0
  %15 = or i1 %10, %14
  br i1 %15, label %bodyBB, label %bodyBBcloneBB

bodyBB:                                           ; preds = %bodyBBcloneBB, %7
  %16 = alloca i8, align 1
  store i8* %16, i8** %.reg2mem2, align 8
  store i32 0, i32* %3, align 4
  %swVar.ptr = alloca i32, align 4
  store i32* %swVar.ptr, i32** %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload19 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 985482766, i32* %swVar.ptr.reload19, align 4
  %.reg2mem = alloca i1, align 1
  store i1* %.reg2mem, i1** %.reg2mem.reg2mem, align 8
  %x22 = alloca i32, align 4
  %y23 = alloca i32, align 4
  %17 = load i32, i32* %x22, align 4
  %18 = load i32, i32* %y23, align 4
  %19 = icmp slt i32 %18, 10
  %20 = add i32 %17, 1
  %21 = mul i32 %20, %17
  %22 = urem i32 %21, 2
  %23 = icmp eq i32 %22, 0
  %24 = or i1 %19, %23
  br i1 %24, label %endBB, label %bodyBBcloneBB

endBB:                                            ; preds = %bodyBB
  br label %dispatchBB

dispatchBB:                                       ; preds = %endBB137, %endBB
  %swVar.ptr.reload18 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  %swVar = load i32, i32* %swVar.ptr.reload18, align 4
  br label %25

25:                                               ; preds = %dispatchBB
  %x26 = alloca i32, align 4
  %y27 = alloca i32, align 4
  %26 = load i32, i32* %x26, align 4
  %27 = load i32, i32* %y27, align 4
  %28 = icmp slt i32 %27, 10
  %29 = add i32 %26, 1
  %30 = mul i32 %29, %26
  %31 = urem i32 %30, 2
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %28, %32
  br i1 %33, label %bodyBB24, label %bodyBB24cloneBB

bodyBB24:                                         ; preds = %bodyBB24cloneBB, %25
  %x28 = alloca i32, align 4
  %y29 = alloca i32, align 4
  %34 = load i32, i32* %x28, align 4
  %35 = load i32, i32* %y29, align 4
  %36 = icmp slt i32 %35, 10
  %37 = add i32 %34, 1
  %38 = mul i32 %37, %34
  %39 = urem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = or i1 %36, %40
  br i1 %41, label %endBB25, label %bodyBB24cloneBB

endBB25:                                          ; preds = %bodyBB24
  switch i32 %swVar, label %swDefault [
    i32 985482766, label %42
    i32 1627599739, label %64
    i32 2123708365, label %99
    i32 36572832, label %117
    i32 1064663363, label %141
    i32 2019953326, label %165
    i32 1668432026, label %202
    i32 260774751, label %221
    i32 476268099, label %227
    i32 2044819374, label %246
    i32 1363136928, label %280
    i32 1836996258, label %315
    i32 820807999, label %333
    i32 1588063422, label %352
  ]

swDefault:                                        ; preds = %endBB25
  br label %returnBB

42:                                               ; preds = %endBB25
  %x34 = alloca i32, align 4
  %y35 = alloca i32, align 4
  %43 = load i32, i32* %x34, align 4
  %44 = load i32, i32* %y35, align 4
  %45 = icmp slt i32 %44, 10
  %46 = add i32 %43, 1
  %47 = mul i32 %46, %43
  %48 = urem i32 %47, 2
  %49 = icmp eq i32 %48, 0
  %50 = or i1 %45, %49
  br i1 %50, label %bodyBB30, label %bodyBB30cloneBB

bodyBB30:                                         ; preds = %bodyBB30cloneBB, %42
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %.reg2mem32, align 4
  %x36 = alloca i32, align 4
  %y37 = alloca i32, align 4
  %53 = load i32, i32* %x36, align 4
  %54 = load i32, i32* %y37, align 4
  %55 = icmp slt i32 %54, 10
  %56 = add i32 %53, 1
  %57 = mul i32 %56, %53
  %58 = urem i32 %57, 2
  %59 = icmp eq i32 %58, 0
  %60 = or i1 %55, %59
  br i1 %60, label %endBB31, label %bodyBB30cloneBB

endBB31:                                          ; preds = %bodyBB30
  br label %61

61:                                               ; preds = %endBB31
  %.reload33 = load volatile i32, i32* %.reg2mem32, align 4
  %62 = icmp sle i32 %.reload33, 1
  %63 = select i1 %62, i32 1627599739, i32 36572832
  %swVar.ptr.reload17 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 %63, i32* %swVar.ptr.reload17, align 4
  br label %returnBB

64:                                               ; preds = %endBB25
  %x40 = alloca i32, align 4
  %y41 = alloca i32, align 4
  %65 = load i32, i32* %x40, align 4
  %66 = load i32, i32* %y41, align 4
  %67 = icmp slt i32 %66, 10
  %68 = add i32 %65, 1
  %69 = mul i32 %68, %65
  %70 = urem i32 %69, 2
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %67, %71
  br i1 %72, label %bodyBB38, label %bodyBB38cloneBB

bodyBB38:                                         ; preds = %bodyBB38cloneBB, %64
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  %x42 = alloca i32, align 4
  %y43 = alloca i32, align 4
  %74 = load i32, i32* %x42, align 4
  %75 = load i32, i32* %y43, align 4
  %76 = icmp slt i32 %75, 10
  %77 = add i32 %74, 1
  %78 = mul i32 %77, %74
  %79 = urem i32 %78, 2
  %80 = icmp eq i32 %79, 0
  %81 = or i1 %76, %80
  br i1 %81, label %endBB39, label %bodyBB38cloneBB

endBB39:                                          ; preds = %bodyBB38
  br label %82

82:                                               ; preds = %endBB39
  %x46 = alloca i32, align 4
  %y47 = alloca i32, align 4
  %83 = load i32, i32* %x46, align 4
  %84 = load i32, i32* %y47, align 4
  %85 = icmp slt i32 %84, 10
  %86 = add i32 %83, 1
  %87 = mul i32 %86, %83
  %88 = urem i32 %87, 2
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %85, %89
  br i1 %90, label %bodyBB44, label %bodyBB44cloneBB

bodyBB44:                                         ; preds = %bodyBB44cloneBB, %82
  %swVar.ptr.reload16 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 2123708365, i32* %swVar.ptr.reload16, align 4
  %x48 = alloca i32, align 4
  %y49 = alloca i32, align 4
  %91 = load i32, i32* %x48, align 4
  %92 = load i32, i32* %y49, align 4
  %93 = icmp slt i32 %92, 10
  %94 = add i32 %91, 1
  %95 = mul i32 %94, %91
  %96 = urem i32 %95, 2
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %93, %97
  br i1 %98, label %endBB45, label %bodyBB44cloneBB

endBB45:                                          ; preds = %bodyBB44
  br label %returnBB

99:                                               ; preds = %endBB25
  %swVar.ptr.reload15 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 820807999, i32* %swVar.ptr.reload15, align 4
  br label %100

100:                                              ; preds = %99
  %x52 = alloca i32, align 4
  %y53 = alloca i32, align 4
  %101 = load i32, i32* %x52, align 4
  %102 = load i32, i32* %y53, align 4
  %103 = icmp slt i32 %102, 10
  %104 = add i32 %101, 1
  %105 = mul i32 %104, %101
  %106 = urem i32 %105, 2
  %107 = icmp eq i32 %106, 0
  %108 = or i1 %103, %107
  br i1 %108, label %bodyBB50, label %bodyBB50cloneBB

bodyBB50:                                         ; preds = %bodyBB50cloneBB, %100
  %x54 = alloca i32, align 4
  %y55 = alloca i32, align 4
  %109 = load i32, i32* %x54, align 4
  %110 = load i32, i32* %y55, align 4
  %111 = icmp slt i32 %110, 10
  %112 = add i32 %109, 1
  %113 = mul i32 %112, %109
  %114 = urem i32 %113, 2
  %115 = icmp eq i32 %114, 0
  %116 = or i1 %111, %115
  br i1 %116, label %endBB51, label %bodyBB50cloneBB

endBB51:                                          ; preds = %bodyBB50
  br label %returnBB

117:                                              ; preds = %endBB25
  %118 = load i8**, i8*** %5, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i64 1
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** @input, align 8
  %121 = load i8*, i8** @input, align 8
  br label %122

122:                                              ; preds = %117
  %x58 = alloca i32, align 4
  %y59 = alloca i32, align 4
  %123 = load i32, i32* %x58, align 4
  %124 = load i32, i32* %y59, align 4
  %125 = icmp slt i32 %124, 10
  %126 = add i32 %123, 1
  %127 = mul i32 %126, %123
  %128 = urem i32 %127, 2
  %129 = icmp eq i32 %128, 0
  %130 = or i1 %125, %129
  br i1 %130, label %bodyBB56, label %bodyBB56cloneBB

bodyBB56:                                         ; preds = %bodyBB56cloneBB, %122
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  %132 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %132, i8 0, i64 100, i1 false)
  %swVar.ptr.reload14 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1064663363, i32* %swVar.ptr.reload14, align 4
  %x60 = alloca i32, align 4
  %y61 = alloca i32, align 4
  %133 = load i32, i32* %x60, align 4
  %134 = load i32, i32* %y61, align 4
  %135 = icmp slt i32 %134, 10
  %136 = add i32 %133, 1
  %137 = mul i32 %136, %133
  %138 = urem i32 %137, 2
  %139 = icmp eq i32 %138, 0
  %140 = or i1 %135, %139
  br i1 %140, label %endBB57, label %bodyBB56cloneBB

endBB57:                                          ; preds = %bodyBB56
  br label %returnBB

141:                                              ; preds = %endBB25
  %142 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %143 = load i8*, i8** @input, align 8
  call void @_Z7encryptPhPc(i8* %142, i8* %143)
  %144 = load i8*, i8** @input, align 8
  %145 = call i64 @strlen(i8* %144) #5
  br label %146

146:                                              ; preds = %141
  %x64 = alloca i32, align 4
  %y65 = alloca i32, align 4
  %147 = load i32, i32* %x64, align 4
  %148 = load i32, i32* %y65, align 4
  %149 = icmp slt i32 %148, 10
  %150 = add i32 %147, 1
  %151 = mul i32 %150, %147
  %152 = urem i32 %151, 2
  %153 = icmp eq i32 %152, 0
  %154 = or i1 %149, %153
  br i1 %154, label %bodyBB62, label %bodyBB62cloneBB

bodyBB62:                                         ; preds = %bodyBB62cloneBB, %146
  %155 = icmp eq i64 %145, 22
  %156 = select i1 %155, i32 2019953326, i32 260774751
  %swVar.ptr.reload13 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 %156, i32* %swVar.ptr.reload13, align 4
  %.reg2mem.reload21 = load volatile i1*, i1** %.reg2mem.reg2mem, align 8
  store i1 false, i1* %.reg2mem.reload21, align 1
  %x66 = alloca i32, align 4
  %y67 = alloca i32, align 4
  %157 = load i32, i32* %x66, align 4
  %158 = load i32, i32* %y67, align 4
  %159 = icmp slt i32 %158, 10
  %160 = add i32 %157, 1
  %161 = mul i32 %160, %157
  %162 = urem i32 %161, 2
  %163 = icmp eq i32 %162, 0
  %164 = or i1 %159, %163
  br i1 %164, label %endBB63, label %bodyBB62cloneBB

endBB63:                                          ; preds = %bodyBB62
  br label %returnBB

165:                                              ; preds = %endBB25
  %x72 = alloca i32, align 4
  %y73 = alloca i32, align 4
  %166 = load i32, i32* %x72, align 4
  %167 = load i32, i32* %y73, align 4
  %168 = icmp slt i32 %167, 10
  %169 = add i32 %166, 1
  %170 = mul i32 %169, %166
  %171 = urem i32 %170, 2
  %172 = icmp eq i32 %171, 0
  %173 = or i1 %168, %172
  br i1 %173, label %bodyBB68, label %bodyBB68cloneBB

bodyBB68:                                         ; preds = %bodyBB68cloneBB, %165
  %174 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %175 = call i32 @memcmp(i8* %174, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %176 = icmp ne i32 %175, 0
  store i1 %176, i1* %.reg2mem70, align 1
  %x74 = alloca i32, align 4
  %y75 = alloca i32, align 4
  %177 = load i32, i32* %x74, align 4
  %178 = load i32, i32* %y75, align 4
  %179 = icmp slt i32 %178, 10
  %180 = add i32 %177, 1
  %181 = mul i32 %180, %177
  %182 = urem i32 %181, 2
  %183 = icmp eq i32 %182, 0
  %184 = or i1 %179, %183
  br i1 %184, label %endBB69, label %bodyBB68cloneBB

endBB69:                                          ; preds = %bodyBB68
  br label %185

185:                                              ; preds = %endBB69
  %x78 = alloca i32, align 4
  %y79 = alloca i32, align 4
  %186 = load i32, i32* %x78, align 4
  %187 = load i32, i32* %y79, align 4
  %188 = icmp slt i32 %187, 10
  %189 = add i32 %186, 1
  %190 = mul i32 %189, %186
  %191 = urem i32 %190, 2
  %192 = icmp eq i32 %191, 0
  %193 = or i1 %188, %192
  br i1 %193, label %bodyBB76, label %bodyBB76cloneBB

bodyBB76:                                         ; preds = %bodyBB76cloneBB, %185
  %.reload71 = load volatile i1, i1* %.reg2mem70, align 1
  store i1 %.reload71, i1* %.reg2mem1, align 1
  %swVar.ptr.reload12 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1668432026, i32* %swVar.ptr.reload12, align 4
  %x80 = alloca i32, align 4
  %y81 = alloca i32, align 4
  %194 = load i32, i32* %x80, align 4
  %195 = load i32, i32* %y81, align 4
  %196 = icmp slt i32 %195, 10
  %197 = add i32 %194, 1
  %198 = mul i32 %197, %194
  %199 = urem i32 %198, 2
  %200 = icmp eq i32 %199, 0
  %201 = or i1 %196, %200
  br i1 %201, label %endBB77, label %bodyBB76cloneBB

endBB77:                                          ; preds = %bodyBB76
  br label %returnBB

202:                                              ; preds = %endBB25
  %.reload2 = load volatile i1, i1* %.reg2mem1, align 1
  %203 = xor i1 %.reload2, true
  %swVar.ptr.reload11 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 260774751, i32* %swVar.ptr.reload11, align 4
  br label %204

204:                                              ; preds = %202
  %x84 = alloca i32, align 4
  %y85 = alloca i32, align 4
  %205 = load i32, i32* %x84, align 4
  %206 = load i32, i32* %y85, align 4
  %207 = icmp slt i32 %206, 10
  %208 = add i32 %205, 1
  %209 = mul i32 %208, %205
  %210 = urem i32 %209, 2
  %211 = icmp eq i32 %210, 0
  %212 = or i1 %207, %211
  br i1 %212, label %bodyBB82, label %bodyBB82cloneBB

bodyBB82:                                         ; preds = %bodyBB82cloneBB, %204
  %.reg2mem.reload20 = load volatile i1*, i1** %.reg2mem.reg2mem, align 8
  store i1 %203, i1* %.reg2mem.reload20, align 1
  %x86 = alloca i32, align 4
  %y87 = alloca i32, align 4
  %213 = load i32, i32* %x86, align 4
  %214 = load i32, i32* %y87, align 4
  %215 = icmp slt i32 %214, 10
  %216 = add i32 %213, 1
  %217 = mul i32 %216, %213
  %218 = urem i32 %217, 2
  %219 = icmp eq i32 %218, 0
  %220 = or i1 %215, %219
  br i1 %220, label %endBB83, label %bodyBB82cloneBB

endBB83:                                          ; preds = %bodyBB82
  br label %returnBB

221:                                              ; preds = %endBB25
  %.reg2mem.reload = load volatile i1*, i1** %.reg2mem.reg2mem, align 8
  %.reload = load i1, i1* %.reg2mem.reload, align 1
  %222 = zext i1 %.reload to i8
  %.reload5 = load volatile i8*, i8** %.reg2mem2, align 8
  store i8 %222, i8* %.reload5, align 1
  %.reload3 = load volatile i8*, i8** %.reg2mem2, align 8
  %223 = load i8, i8* %.reload3, align 1
  br label %224

224:                                              ; preds = %221
  %225 = trunc i8 %223 to i1
  %226 = select i1 %225, i32 476268099, i32 1363136928
  %swVar.ptr.reload10 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 %226, i32* %swVar.ptr.reload10, align 4
  br label %returnBB

227:                                              ; preds = %endBB25
  %x90 = alloca i32, align 4
  %y91 = alloca i32, align 4
  %228 = load i32, i32* %x90, align 4
  %229 = load i32, i32* %y91, align 4
  %230 = icmp slt i32 %229, 10
  %231 = add i32 %228, 1
  %232 = mul i32 %231, %228
  %233 = urem i32 %232, 2
  %234 = icmp eq i32 %233, 0
  %235 = or i1 %230, %234
  br i1 %235, label %bodyBB88, label %bodyBB88cloneBB

bodyBB88:                                         ; preds = %bodyBB88cloneBB, %227
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %swVar.ptr.reload9 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 2044819374, i32* %swVar.ptr.reload9, align 4
  %x92 = alloca i32, align 4
  %y93 = alloca i32, align 4
  %237 = load i32, i32* %x92, align 4
  %238 = load i32, i32* %y93, align 4
  %239 = icmp slt i32 %238, 10
  %240 = add i32 %237, 1
  %241 = mul i32 %240, %237
  %242 = urem i32 %241, 2
  %243 = icmp eq i32 %242, 0
  %244 = or i1 %239, %243
  br i1 %244, label %endBB89, label %bodyBB88cloneBB

endBB89:                                          ; preds = %bodyBB88
  br label %245

245:                                              ; preds = %endBB89
  br label %returnBB

246:                                              ; preds = %endBB25
  %x96 = alloca i32, align 4
  %y97 = alloca i32, align 4
  %247 = load i32, i32* %x96, align 4
  %248 = load i32, i32* %y97, align 4
  %249 = icmp slt i32 %248, 10
  %250 = add i32 %247, 1
  %251 = mul i32 %250, %247
  %252 = urem i32 %251, 2
  %253 = icmp eq i32 %252, 0
  %254 = or i1 %249, %253
  br i1 %254, label %bodyBB94, label %bodyBB94cloneBB

bodyBB94:                                         ; preds = %bodyBB94cloneBB, %246
  %swVar.ptr.reload8 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 820807999, i32* %swVar.ptr.reload8, align 4
  %x98 = alloca i32, align 4
  %y99 = alloca i32, align 4
  %255 = load i32, i32* %x98, align 4
  %256 = load i32, i32* %y99, align 4
  %257 = icmp slt i32 %256, 10
  %258 = add i32 %255, 1
  %259 = mul i32 %258, %255
  %260 = urem i32 %259, 2
  %261 = icmp eq i32 %260, 0
  %262 = or i1 %257, %261
  br i1 %262, label %endBB95, label %bodyBB94cloneBB

endBB95:                                          ; preds = %bodyBB94
  br label %263

263:                                              ; preds = %endBB95
  %x102 = alloca i32, align 4
  %y103 = alloca i32, align 4
  %264 = load i32, i32* %x102, align 4
  %265 = load i32, i32* %y103, align 4
  %266 = icmp slt i32 %265, 10
  %267 = add i32 %264, 1
  %268 = mul i32 %267, %264
  %269 = urem i32 %268, 2
  %270 = icmp eq i32 %269, 0
  %271 = or i1 %266, %270
  br i1 %271, label %bodyBB100, label %bodyBB100cloneBB

bodyBB100:                                        ; preds = %bodyBB100cloneBB, %263
  %x104 = alloca i32, align 4
  %y105 = alloca i32, align 4
  %272 = load i32, i32* %x104, align 4
  %273 = load i32, i32* %y105, align 4
  %274 = icmp slt i32 %273, 10
  %275 = add i32 %272, 1
  %276 = mul i32 %275, %272
  %277 = urem i32 %276, 2
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %274, %278
  br i1 %279, label %endBB101, label %bodyBB100cloneBB

endBB101:                                         ; preds = %bodyBB100
  br label %returnBB

280:                                              ; preds = %endBB25
  %x108 = alloca i32, align 4
  %y109 = alloca i32, align 4
  %281 = load i32, i32* %x108, align 4
  %282 = load i32, i32* %y109, align 4
  %283 = icmp slt i32 %282, 10
  %284 = add i32 %281, 1
  %285 = mul i32 %284, %281
  %286 = urem i32 %285, 2
  %287 = icmp eq i32 %286, 0
  %288 = or i1 %283, %287
  br i1 %288, label %bodyBB106, label %bodyBB106cloneBB

bodyBB106:                                        ; preds = %bodyBB106cloneBB, %280
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %swVar.ptr.reload7 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1836996258, i32* %swVar.ptr.reload7, align 4
  %x110 = alloca i32, align 4
  %y111 = alloca i32, align 4
  %290 = load i32, i32* %x110, align 4
  %291 = load i32, i32* %y111, align 4
  %292 = icmp slt i32 %291, 10
  %293 = add i32 %290, 1
  %294 = mul i32 %293, %290
  %295 = urem i32 %294, 2
  %296 = icmp eq i32 %295, 0
  %297 = or i1 %292, %296
  br i1 %297, label %endBB107, label %bodyBB106cloneBB

endBB107:                                         ; preds = %bodyBB106
  br label %298

298:                                              ; preds = %endBB107
  %x114 = alloca i32, align 4
  %y115 = alloca i32, align 4
  %299 = load i32, i32* %x114, align 4
  %300 = load i32, i32* %y115, align 4
  %301 = icmp slt i32 %300, 10
  %302 = add i32 %299, 1
  %303 = mul i32 %302, %299
  %304 = urem i32 %303, 2
  %305 = icmp eq i32 %304, 0
  %306 = or i1 %301, %305
  br i1 %306, label %bodyBB112, label %bodyBB112cloneBB

bodyBB112:                                        ; preds = %bodyBB112cloneBB, %298
  %x116 = alloca i32, align 4
  %y117 = alloca i32, align 4
  %307 = load i32, i32* %x116, align 4
  %308 = load i32, i32* %y117, align 4
  %309 = icmp slt i32 %308, 10
  %310 = add i32 %307, 1
  %311 = mul i32 %310, %307
  %312 = urem i32 %311, 2
  %313 = icmp eq i32 %312, 0
  %314 = or i1 %309, %313
  br i1 %314, label %endBB113, label %bodyBB112cloneBB

endBB113:                                         ; preds = %bodyBB112
  br label %returnBB

315:                                              ; preds = %endBB25
  %swVar.ptr.reload6 = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 820807999, i32* %swVar.ptr.reload6, align 4
  br label %316

316:                                              ; preds = %315
  %x120 = alloca i32, align 4
  %y121 = alloca i32, align 4
  %317 = load i32, i32* %x120, align 4
  %318 = load i32, i32* %y121, align 4
  %319 = icmp slt i32 %318, 10
  %320 = add i32 %317, 1
  %321 = mul i32 %320, %317
  %322 = urem i32 %321, 2
  %323 = icmp eq i32 %322, 0
  %324 = or i1 %319, %323
  br i1 %324, label %bodyBB118, label %bodyBB118cloneBB

bodyBB118:                                        ; preds = %bodyBB118cloneBB, %316
  %x122 = alloca i32, align 4
  %y123 = alloca i32, align 4
  %325 = load i32, i32* %x122, align 4
  %326 = load i32, i32* %y123, align 4
  %327 = icmp slt i32 %326, 10
  %328 = add i32 %325, 1
  %329 = mul i32 %328, %325
  %330 = urem i32 %329, 2
  %331 = icmp eq i32 %330, 0
  %332 = or i1 %327, %331
  br i1 %332, label %endBB119, label %bodyBB118cloneBB

endBB119:                                         ; preds = %bodyBB118
  br label %returnBB

333:                                              ; preds = %endBB25
  %x126 = alloca i32, align 4
  %y127 = alloca i32, align 4
  %334 = load i32, i32* %x126, align 4
  %335 = load i32, i32* %y127, align 4
  %336 = icmp slt i32 %335, 10
  %337 = add i32 %334, 1
  %338 = mul i32 %337, %334
  %339 = urem i32 %338, 2
  %340 = icmp eq i32 %339, 0
  %341 = or i1 %336, %340
  br i1 %341, label %bodyBB124, label %bodyBB124cloneBB

bodyBB124:                                        ; preds = %bodyBB124cloneBB, %333
  %342 = load i32, i32* %3, align 4
  store i32 %342, i32* %.reg2mem3, align 4
  %x128 = alloca i32, align 4
  %y129 = alloca i32, align 4
  %343 = load i32, i32* %x128, align 4
  %344 = load i32, i32* %y129, align 4
  %345 = icmp slt i32 %344, 10
  %346 = add i32 %343, 1
  %347 = mul i32 %346, %343
  %348 = urem i32 %347, 2
  %349 = icmp eq i32 %348, 0
  %350 = or i1 %345, %349
  br i1 %350, label %endBB125, label %bodyBB124cloneBB

endBB125:                                         ; preds = %bodyBB124
  br label %351

351:                                              ; preds = %endBB125
  %swVar.ptr.reload = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1588063422, i32* %swVar.ptr.reload, align 4
  br label %returnBB

352:                                              ; preds = %endBB25
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  br label %353

353:                                              ; preds = %352
  %x132 = alloca i32, align 4
  %y133 = alloca i32, align 4
  %354 = load i32, i32* %x132, align 4
  %355 = load i32, i32* %y133, align 4
  %356 = icmp slt i32 %355, 10
  %357 = add i32 %354, 1
  %358 = mul i32 %357, %354
  %359 = urem i32 %358, 2
  %360 = icmp eq i32 %359, 0
  %361 = or i1 %356, %360
  br i1 %361, label %bodyBB130, label %bodyBB130cloneBB

bodyBB130:                                        ; preds = %bodyBB130cloneBB, %353
  %x134 = alloca i32, align 4
  %y135 = alloca i32, align 4
  %362 = load i32, i32* %x134, align 4
  %363 = load i32, i32* %y135, align 4
  %364 = icmp slt i32 %363, 10
  %365 = add i32 %362, 1
  %366 = mul i32 %365, %362
  %367 = urem i32 %366, 2
  %368 = icmp eq i32 %367, 0
  %369 = or i1 %364, %368
  br i1 %369, label %endBB131, label %bodyBB130cloneBB

endBB131:                                         ; preds = %bodyBB130
  ret i32 %.reload4

returnBB:                                         ; preds = %351, %endBB119, %endBB113, %endBB101, %245, %224, %endBB83, %endBB77, %endBB63, %endBB57, %endBB51, %endBB45, %61, %swDefault
  %x138 = alloca i32, align 4
  %y139 = alloca i32, align 4
  %370 = load i32, i32* %x138, align 4
  %371 = load i32, i32* %y139, align 4
  %372 = icmp slt i32 %371, 10
  %373 = add i32 %370, 1
  %374 = mul i32 %373, %370
  %375 = urem i32 %374, 2
  %376 = icmp eq i32 %375, 0
  %377 = or i1 %372, %376
  br i1 %377, label %bodyBB136, label %bodyBB136cloneBB

bodyBB136:                                        ; preds = %bodyBB136cloneBB, %returnBB
  %x140 = alloca i32, align 4
  %y141 = alloca i32, align 4
  %378 = load i32, i32* %x140, align 4
  %379 = load i32, i32* %y141, align 4
  %380 = icmp slt i32 %379, 10
  %381 = add i32 %378, 1
  %382 = mul i32 %381, %378
  %383 = urem i32 %382, 2
  %384 = icmp eq i32 %383, 0
  %385 = or i1 %380, %384
  br i1 %385, label %endBB137, label %bodyBB136cloneBB

endBB137:                                         ; preds = %bodyBB136
  br label %dispatchBB

bodyBBcloneBB:                                    ; preds = %bodyBB, %7
  %386 = alloca i8, align 1
  store i8* %386, i8** %.reg2mem2, align 8
  store i32 0, i32* %3, align 4
  %swVar.ptrcloneBB = alloca i32, align 4
  store i32* %swVar.ptrcloneBB, i32** %swVar.ptr.reg2mem, align 8
  %swVar.ptr.reload19cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 985482766, i32* %swVar.ptr.reload19cloneBB, align 4
  %.reg2memcloneBB = alloca i1, align 1
  store i1* %.reg2memcloneBB, i1** %.reg2mem.reg2mem, align 8
  br label %bodyBB

bodyBB24cloneBB:                                  ; preds = %bodyBB24, %25
  br label %bodyBB24

bodyBB30cloneBB:                                  ; preds = %bodyBB30, %42
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %387 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %388 = load i32, i32* %4, align 4
  store i32 %388, i32* %.reg2mem32, align 4
  br label %bodyBB30

bodyBB38cloneBB:                                  ; preds = %bodyBB38, %64
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %bodyBB38

bodyBB44cloneBB:                                  ; preds = %bodyBB44, %82
  %swVar.ptr.reload16cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 2123708365, i32* %swVar.ptr.reload16cloneBB, align 4
  br label %bodyBB44

bodyBB50cloneBB:                                  ; preds = %bodyBB50, %100
  br label %bodyBB50

bodyBB56cloneBB:                                  ; preds = %bodyBB56, %122
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  %391 = bitcast [100 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %391, i8 0, i64 100, i1 false)
  %swVar.ptr.reload14cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1064663363, i32* %swVar.ptr.reload14cloneBB, align 4
  br label %bodyBB56

bodyBB62cloneBB:                                  ; preds = %bodyBB62, %146
  %392 = icmp eq i64 %145, 22
  %393 = select i1 %392, i32 2019953326, i32 260774751
  %swVar.ptr.reload13cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 %393, i32* %swVar.ptr.reload13cloneBB, align 4
  %.reg2mem.reload21cloneBB = load volatile i1*, i1** %.reg2mem.reg2mem, align 8
  store i1 false, i1* %.reg2mem.reload21cloneBB, align 1
  br label %bodyBB62

bodyBB68cloneBB:                                  ; preds = %bodyBB68, %165
  %394 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %395 = call i32 @memcmp(i8* %394, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i64 0, i64 0), i64 22) #5
  %396 = icmp ne i32 %395, 0
  store i1 %396, i1* %.reg2mem70, align 1
  br label %bodyBB68

bodyBB76cloneBB:                                  ; preds = %bodyBB76, %185
  %.reload71cloneBB = load volatile i1, i1* %.reg2mem70, align 1
  store i1 %.reload71cloneBB, i1* %.reg2mem1, align 1
  %swVar.ptr.reload12cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1668432026, i32* %swVar.ptr.reload12cloneBB, align 4
  br label %bodyBB76

bodyBB82cloneBB:                                  ; preds = %bodyBB82, %204
  %.reg2mem.reload20cloneBB = load volatile i1*, i1** %.reg2mem.reg2mem, align 8
  store i1 %203, i1* %.reg2mem.reload20cloneBB, align 1
  br label %bodyBB82

bodyBB88cloneBB:                                  ; preds = %bodyBB88, %227
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %swVar.ptr.reload9cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 2044819374, i32* %swVar.ptr.reload9cloneBB, align 4
  br label %bodyBB88

bodyBB94cloneBB:                                  ; preds = %bodyBB94, %246
  %swVar.ptr.reload8cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 820807999, i32* %swVar.ptr.reload8cloneBB, align 4
  br label %bodyBB94

bodyBB100cloneBB:                                 ; preds = %bodyBB100, %263
  br label %bodyBB100

bodyBB106cloneBB:                                 ; preds = %bodyBB106, %280
  %398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %swVar.ptr.reload7cloneBB = load volatile i32*, i32** %swVar.ptr.reg2mem, align 8
  store i32 1836996258, i32* %swVar.ptr.reload7cloneBB, align 4
  br label %bodyBB106

bodyBB112cloneBB:                                 ; preds = %bodyBB112, %298
  br label %bodyBB112

bodyBB118cloneBB:                                 ; preds = %bodyBB118, %316
  br label %bodyBB118

bodyBB124cloneBB:                                 ; preds = %bodyBB124, %333
  %399 = load i32, i32* %3, align 4
  store i32 %399, i32* %.reg2mem3, align 4
  br label %bodyBB124

bodyBB130cloneBB:                                 ; preds = %bodyBB130, %353
  br label %bodyBB130

bodyBB136cloneBB:                                 ; preds = %bodyBB136, %returnBB
  br label %bodyBB136
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
