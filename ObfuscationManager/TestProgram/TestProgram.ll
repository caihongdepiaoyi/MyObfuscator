; ModuleID = 'TestProgram/TestProgram.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-i64:64-n32:64-S128-ni:1:10:20"
target triple = "wasm32-unknown-wasi"

@input = hidden global i8* null, align 4
@enc = hidden global <{ [22 x i8], [78 x i8] }> <{ [22 x i8] c"\86\8A}\87\93\8BM\81\80\8AC\7FII\86q\7FbSi(\9D", [78 x i8] zeroinitializer }>, align 16
@.str.1.1 = global [33 x i8] c".\09\17\12\13G\1E\08\12\15G\01\0B\06\00G\06\14G\06\09G\06\15\00\12\0A\02\09\13Img"
@.str.2.2 = global [18 x i8] c"\9F\A9\B3\B4\E6\A0\AA\A7\A1\E6\AF\B5\FC\E6\E3\B5\CC\C6"
@.str.3.3 = global [18 x i8] c"*\06\07\0E\1B\08\1D\1C\05\08\1D\00\06\07\1A\17ci"
@.str.4.4 = global [18 x i8] c" \1C\01\01\0AS\07\01\0AS\12\14\12\1A\1D]ys"
@.str.5 = global [26 x i8] c"\064=2><4q%>q\1D\1D\07\1Cq&>#=5\7F\7F\7F[Q"
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @.datadiv_decode424238335, i8* null }]

; Function Attrs: mustprogress noinline norecurse optnone
define hidden i32 @__main_argc_argv(i32 %0, i8** %1) #0 {
  %.reload103.reg2mem = alloca i32, align 4
  %.reg2mem102 = alloca i32, align 4
  %.reg2mem70 = alloca i1, align 1
  %.reg2mem62 = alloca i1, align 1
  %.reg2mem54 = alloca i1, align 1
  %.reg2mem46 = alloca i1, align 1
  %.reg2mem20 = alloca i1, align 1
  %.reg2mem13 = alloca i8*, align 4
  %.reg2mem9 = alloca [100 x i8]*, align 4
  %.reg2mem6 = alloca i8***, align 4
  %.reg2mem3 = alloca i32*, align 4
  %.reg2mem = alloca i32*, align 4
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
  store i32* %11, i32** %.reg2mem, align 4
  %12 = alloca i32, align 4
  store i32* %12, i32** %.reg2mem3, align 4
  %13 = alloca i8**, align 4
  store i8*** %13, i8**** %.reg2mem6, align 4
  %14 = alloca [100 x i8], align 16
  store [100 x i8]* %14, [100 x i8]** %.reg2mem9, align 4
  %15 = alloca i8, align 1
  store i8* %15, i8** %.reg2mem13, align 4
  %.reload2 = load volatile i32*, i32** %.reg2mem, align 4
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
  %x22 = alloca i32, align 4
  %y23 = alloca i32, align 4
  %25 = load i32, i32* %x22, align 4
  %26 = load i32, i32* %y23, align 4
  %27 = icmp slt i32 %26, 10
  %28 = add i32 %25, 1
  %29 = mul i32 %28, %25
  %30 = urem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %27, %31
  br i1 %32, label %bodyBB18, label %bodyBB18cloneBB

bodyBB18:                                         ; preds = %bodyBB18cloneBB, %24
  %.reload5 = load volatile i32*, i32** %.reg2mem3, align 4
  store i32 %0, i32* %.reload5, align 4
  %.reload8 = load volatile i8***, i8**** %.reg2mem6, align 4
  store i8** %1, i8*** %.reload8, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  %.reload4 = load volatile i32*, i32** %.reg2mem3, align 4
  %34 = load i32, i32* %.reload4, align 4
  %35 = icmp sle i32 %34, 1
  store i1 %35, i1* %.reg2mem20, align 1
  %x24 = alloca i32, align 4
  %y25 = alloca i32, align 4
  %36 = load i32, i32* %x24, align 4
  %37 = load i32, i32* %y25, align 4
  %38 = icmp slt i32 %37, 10
  %39 = add i32 %36, 1
  %40 = mul i32 %39, %36
  %41 = urem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %38, %42
  br i1 %43, label %endBB19, label %bodyBB18cloneBB

endBB19:                                          ; preds = %bodyBB18
  %.reload21 = load volatile i1, i1* %.reg2mem20, align 1
  br i1 %.reload21, label %44, label %79

44:                                               ; preds = %endBB19
  %x28 = alloca i32, align 4
  %y29 = alloca i32, align 4
  %45 = load i32, i32* %x28, align 4
  %46 = load i32, i32* %y29, align 4
  %47 = icmp slt i32 %46, 10
  %48 = add i32 %45, 1
  %49 = mul i32 %48, %45
  %50 = urem i32 %49, 2
  %51 = icmp eq i32 %50, 0
  %52 = or i1 %47, %51
  br i1 %52, label %bodyBB26, label %bodyBB26cloneBB

bodyBB26:                                         ; preds = %bodyBB26cloneBB, %44
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.1, i32 0, i32 0))
  %.reload1 = load volatile i32*, i32** %.reg2mem, align 4
  store i32 0, i32* %.reload1, align 4
  %x30 = alloca i32, align 4
  %y31 = alloca i32, align 4
  %54 = load i32, i32* %x30, align 4
  %55 = load i32, i32* %y31, align 4
  %56 = icmp slt i32 %55, 10
  %57 = add i32 %54, 1
  %58 = mul i32 %57, %54
  %59 = urem i32 %58, 2
  %60 = icmp eq i32 %59, 0
  %61 = or i1 %56, %60
  br i1 %61, label %endBB27, label %bodyBB26cloneBB

endBB27:                                          ; preds = %bodyBB26
  br label %62

62:                                               ; preds = %endBB27
  %x34 = alloca i32, align 4
  %y35 = alloca i32, align 4
  %63 = load i32, i32* %x34, align 4
  %64 = load i32, i32* %y35, align 4
  %65 = icmp slt i32 %64, 10
  %66 = add i32 %63, 1
  %67 = mul i32 %66, %63
  %68 = urem i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = or i1 %65, %69
  br i1 %70, label %bodyBB32, label %bodyBB32cloneBB

bodyBB32:                                         ; preds = %bodyBB32cloneBB, %62
  %x36 = alloca i32, align 4
  %y37 = alloca i32, align 4
  %71 = load i32, i32* %x36, align 4
  %72 = load i32, i32* %y37, align 4
  %73 = icmp slt i32 %72, 10
  %74 = add i32 %71, 1
  %75 = mul i32 %74, %71
  %76 = urem i32 %75, 2
  %77 = icmp eq i32 %76, 0
  %78 = or i1 %73, %77
  br i1 %78, label %endBB33, label %bodyBB32cloneBB

endBB33:                                          ; preds = %bodyBB32
  br label %253

79:                                               ; preds = %endBB19
  %x40 = alloca i32, align 4
  %y41 = alloca i32, align 4
  %80 = load i32, i32* %x40, align 4
  %81 = load i32, i32* %y41, align 4
  %82 = icmp slt i32 %81, 10
  %83 = add i32 %80, 1
  %84 = mul i32 %83, %80
  %85 = urem i32 %84, 2
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %82, %86
  br i1 %87, label %bodyBB38, label %bodyBB38cloneBB

bodyBB38:                                         ; preds = %bodyBB38cloneBB, %79
  %.reload7 = load volatile i8***, i8**** %.reg2mem6, align 4
  %88 = load i8**, i8*** %.reload7, align 4
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  %90 = load i8*, i8** %89, align 4
  store i8* %90, i8** @input, align 4
  %91 = load i8*, i8** @input, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.2, i32 0, i32 0), i8* %91)
  %.reload12 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %93 = bitcast [100 x i8]* %.reload12 to i8*
  call void @llvm.memset.p0i8.i32(i8* align 16 %93, i8 0, i32 100, i1 false)
  %x42 = alloca i32, align 4
  %y43 = alloca i32, align 4
  %94 = load i32, i32* %x42, align 4
  %95 = load i32, i32* %y43, align 4
  %96 = icmp slt i32 %95, 10
  %97 = add i32 %94, 1
  %98 = mul i32 %97, %94
  %99 = urem i32 %98, 2
  %100 = icmp eq i32 %99, 0
  %101 = or i1 %96, %100
  br i1 %101, label %endBB39, label %bodyBB38cloneBB

endBB39:                                          ; preds = %bodyBB38
  br label %102

102:                                              ; preds = %endBB39
  %x48 = alloca i32, align 4
  %y49 = alloca i32, align 4
  %103 = load i32, i32* %x48, align 4
  %104 = load i32, i32* %y49, align 4
  %105 = icmp slt i32 %104, 10
  %106 = add i32 %103, 1
  %107 = mul i32 %106, %103
  %108 = urem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  %110 = or i1 %105, %109
  br i1 %110, label %bodyBB44, label %bodyBB44cloneBB

bodyBB44:                                         ; preds = %bodyBB44cloneBB, %102
  %.reload11 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11, i32 0, i32 0
  %112 = load i8*, i8** @input, align 4
  call void @_Z7encryptPhPc(i8* %111, i8* %112)
  %113 = load i8*, i8** @input, align 4
  %114 = call i32 @strlen(i8* %113) #5
  %115 = icmp eq i32 %114, 22
  store i1 %115, i1* %.reg2mem46, align 1
  %x50 = alloca i32, align 4
  %y51 = alloca i32, align 4
  %116 = load i32, i32* %x50, align 4
  %117 = load i32, i32* %y51, align 4
  %118 = icmp slt i32 %117, 10
  %119 = add i32 %116, 1
  %120 = mul i32 %119, %116
  %121 = urem i32 %120, 2
  %122 = icmp eq i32 %121, 0
  %123 = or i1 %118, %122
  br i1 %123, label %endBB45, label %bodyBB44cloneBB

endBB45:                                          ; preds = %bodyBB44
  %.reload47 = load volatile i1, i1* %.reg2mem46, align 1
  br i1 %.reload47, label %124, label %162

124:                                              ; preds = %endBB45
  %x56 = alloca i32, align 4
  %y57 = alloca i32, align 4
  %125 = load i32, i32* %x56, align 4
  %126 = load i32, i32* %y57, align 4
  %127 = icmp slt i32 %126, 10
  %128 = add i32 %125, 1
  %129 = mul i32 %128, %125
  %130 = urem i32 %129, 2
  %131 = icmp eq i32 %130, 0
  %132 = or i1 %127, %131
  br i1 %132, label %bodyBB52, label %bodyBB52cloneBB

bodyBB52:                                         ; preds = %bodyBB52cloneBB, %124
  %.reload10 = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %133 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10, i32 0, i32 0
  %134 = call i32 @memcmp(i8* %133, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i32 0, i32 0), i32 22)
  %135 = icmp ne i32 %134, 0
  store i1 %135, i1* %.reg2mem54, align 1
  %x58 = alloca i32, align 4
  %y59 = alloca i32, align 4
  %136 = load i32, i32* %x58, align 4
  %137 = load i32, i32* %y59, align 4
  %138 = icmp slt i32 %137, 10
  %139 = add i32 %136, 1
  %140 = mul i32 %139, %136
  %141 = urem i32 %140, 2
  %142 = icmp eq i32 %141, 0
  %143 = or i1 %138, %142
  br i1 %143, label %endBB53, label %bodyBB52cloneBB

endBB53:                                          ; preds = %bodyBB52
  br label %144

144:                                              ; preds = %endBB53
  %x64 = alloca i32, align 4
  %y65 = alloca i32, align 4
  %145 = load i32, i32* %x64, align 4
  %146 = load i32, i32* %y65, align 4
  %147 = icmp slt i32 %146, 10
  %148 = add i32 %145, 1
  %149 = mul i32 %148, %145
  %150 = urem i32 %149, 2
  %151 = icmp eq i32 %150, 0
  %152 = or i1 %147, %151
  br i1 %152, label %bodyBB60, label %bodyBB60cloneBB

bodyBB60:                                         ; preds = %bodyBB60cloneBB, %144
  %.reload55 = load volatile i1, i1* %.reg2mem54, align 1
  %153 = xor i1 %.reload55, true
  store i1 %153, i1* %.reg2mem62, align 1
  %x66 = alloca i32, align 4
  %y67 = alloca i32, align 4
  %154 = load i32, i32* %x66, align 4
  %155 = load i32, i32* %y67, align 4
  %156 = icmp slt i32 %155, 10
  %157 = add i32 %154, 1
  %158 = mul i32 %157, %154
  %159 = urem i32 %158, 2
  %160 = icmp eq i32 %159, 0
  %161 = or i1 %156, %160
  br i1 %161, label %endBB61, label %bodyBB60cloneBB

endBB61:                                          ; preds = %bodyBB60
  %.reload63 = load volatile i1, i1* %.reg2mem62, align 1
  br label %162

162:                                              ; preds = %endBB61, %endBB45
  %163 = phi i1 [ false, %endBB45 ], [ %.reload63, %endBB61 ]
  %x72 = alloca i32, align 4
  %y73 = alloca i32, align 4
  %164 = load i32, i32* %x72, align 4
  %165 = load i32, i32* %y73, align 4
  %166 = icmp slt i32 %165, 10
  %167 = add i32 %164, 1
  %168 = mul i32 %167, %164
  %169 = urem i32 %168, 2
  %170 = icmp eq i32 %169, 0
  %171 = or i1 %166, %170
  br i1 %171, label %bodyBB68, label %bodyBB68cloneBB

bodyBB68:                                         ; preds = %bodyBB68cloneBB, %162
  %172 = zext i1 %163 to i8
  %.reload15 = load volatile i8*, i8** %.reg2mem13, align 4
  store i8 %172, i8* %.reload15, align 1
  %.reload14 = load volatile i8*, i8** %.reg2mem13, align 4
  %173 = load i8, i8* %.reload14, align 1
  %174 = trunc i8 %173 to i1
  store i1 %174, i1* %.reg2mem70, align 1
  %x74 = alloca i32, align 4
  %y75 = alloca i32, align 4
  %175 = load i32, i32* %x74, align 4
  %176 = load i32, i32* %y75, align 4
  %177 = icmp slt i32 %176, 10
  %178 = add i32 %175, 1
  %179 = mul i32 %178, %175
  %180 = urem i32 %179, 2
  %181 = icmp eq i32 %180, 0
  %182 = or i1 %177, %181
  br i1 %182, label %endBB69, label %bodyBB68cloneBB

endBB69:                                          ; preds = %bodyBB68
  %.reload71 = load volatile i1, i1* %.reg2mem70, align 1
  br i1 %.reload71, label %183, label %218

183:                                              ; preds = %endBB69
  %x78 = alloca i32, align 4
  %y79 = alloca i32, align 4
  %184 = load i32, i32* %x78, align 4
  %185 = load i32, i32* %y79, align 4
  %186 = icmp slt i32 %185, 10
  %187 = add i32 %184, 1
  %188 = mul i32 %187, %184
  %189 = urem i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = or i1 %186, %190
  br i1 %191, label %bodyBB76, label %bodyBB76cloneBB

bodyBB76:                                         ; preds = %bodyBB76cloneBB, %183
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.3, i32 0, i32 0))
  %x80 = alloca i32, align 4
  %y81 = alloca i32, align 4
  %193 = load i32, i32* %x80, align 4
  %194 = load i32, i32* %y81, align 4
  %195 = icmp slt i32 %194, 10
  %196 = add i32 %193, 1
  %197 = mul i32 %196, %193
  %198 = urem i32 %197, 2
  %199 = icmp eq i32 %198, 0
  %200 = or i1 %195, %199
  br i1 %200, label %endBB77, label %bodyBB76cloneBB

endBB77:                                          ; preds = %bodyBB76
  br label %201

201:                                              ; preds = %endBB77
  %x84 = alloca i32, align 4
  %y85 = alloca i32, align 4
  %202 = load i32, i32* %x84, align 4
  %203 = load i32, i32* %y85, align 4
  %204 = icmp slt i32 %203, 10
  %205 = add i32 %202, 1
  %206 = mul i32 %205, %202
  %207 = urem i32 %206, 2
  %208 = icmp eq i32 %207, 0
  %209 = or i1 %204, %208
  br i1 %209, label %bodyBB82, label %bodyBB82cloneBB

bodyBB82:                                         ; preds = %bodyBB82cloneBB, %201
  %x86 = alloca i32, align 4
  %y87 = alloca i32, align 4
  %210 = load i32, i32* %x86, align 4
  %211 = load i32, i32* %y87, align 4
  %212 = icmp slt i32 %211, 10
  %213 = add i32 %210, 1
  %214 = mul i32 %213, %210
  %215 = urem i32 %214, 2
  %216 = icmp eq i32 %215, 0
  %217 = or i1 %212, %216
  br i1 %217, label %endBB83, label %bodyBB82cloneBB

endBB83:                                          ; preds = %bodyBB82
  br label %253

218:                                              ; preds = %endBB69
  %x90 = alloca i32, align 4
  %y91 = alloca i32, align 4
  %219 = load i32, i32* %x90, align 4
  %220 = load i32, i32* %y91, align 4
  %221 = icmp slt i32 %220, 10
  %222 = add i32 %219, 1
  %223 = mul i32 %222, %219
  %224 = urem i32 %223, 2
  %225 = icmp eq i32 %224, 0
  %226 = or i1 %221, %225
  br i1 %226, label %bodyBB88, label %bodyBB88cloneBB

bodyBB88:                                         ; preds = %bodyBB88cloneBB, %218
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.4, i32 0, i32 0))
  %x92 = alloca i32, align 4
  %y93 = alloca i32, align 4
  %228 = load i32, i32* %x92, align 4
  %229 = load i32, i32* %y93, align 4
  %230 = icmp slt i32 %229, 10
  %231 = add i32 %228, 1
  %232 = mul i32 %231, %228
  %233 = urem i32 %232, 2
  %234 = icmp eq i32 %233, 0
  %235 = or i1 %230, %234
  br i1 %235, label %endBB89, label %bodyBB88cloneBB

endBB89:                                          ; preds = %bodyBB88
  br label %236

236:                                              ; preds = %endBB89
  %x96 = alloca i32, align 4
  %y97 = alloca i32, align 4
  %237 = load i32, i32* %x96, align 4
  %238 = load i32, i32* %y97, align 4
  %239 = icmp slt i32 %238, 10
  %240 = add i32 %237, 1
  %241 = mul i32 %240, %237
  %242 = urem i32 %241, 2
  %243 = icmp eq i32 %242, 0
  %244 = or i1 %239, %243
  br i1 %244, label %bodyBB94, label %bodyBB94cloneBB

bodyBB94:                                         ; preds = %bodyBB94cloneBB, %236
  %x98 = alloca i32, align 4
  %y99 = alloca i32, align 4
  %245 = load i32, i32* %x98, align 4
  %246 = load i32, i32* %y99, align 4
  %247 = icmp slt i32 %246, 10
  %248 = add i32 %245, 1
  %249 = mul i32 %248, %245
  %250 = urem i32 %249, 2
  %251 = icmp eq i32 %250, 0
  %252 = or i1 %247, %251
  br i1 %252, label %endBB95, label %bodyBB94cloneBB

endBB95:                                          ; preds = %bodyBB94
  br label %253

253:                                              ; preds = %endBB95, %endBB83, %endBB33
  %x104 = alloca i32, align 4
  %y105 = alloca i32, align 4
  %254 = load i32, i32* %x104, align 4
  %255 = load i32, i32* %y105, align 4
  %256 = icmp slt i32 %255, 10
  %257 = add i32 %254, 1
  %258 = mul i32 %257, %254
  %259 = urem i32 %258, 2
  %260 = icmp eq i32 %259, 0
  %261 = or i1 %256, %260
  br i1 %261, label %bodyBB100, label %bodyBB100cloneBB

bodyBB100:                                        ; preds = %bodyBB100cloneBB, %253
  %.reload = load volatile i32*, i32** %.reg2mem, align 4
  %262 = load i32, i32* %.reload, align 4
  store i32 %262, i32* %.reg2mem102, align 4
  %x106 = alloca i32, align 4
  %y107 = alloca i32, align 4
  %263 = load i32, i32* %x106, align 4
  %264 = load i32, i32* %y107, align 4
  %265 = icmp slt i32 %264, 10
  %266 = add i32 %263, 1
  %267 = mul i32 %266, %263
  %268 = urem i32 %267, 2
  %269 = icmp eq i32 %268, 0
  %270 = or i1 %265, %269
  br i1 %270, label %endBB101, label %bodyBB100cloneBB

endBB101:                                         ; preds = %bodyBB100
  br label %271

271:                                              ; preds = %endBB101
  %x110 = alloca i32, align 4
  %y111 = alloca i32, align 4
  %272 = load i32, i32* %x110, align 4
  %273 = load i32, i32* %y111, align 4
  %274 = icmp slt i32 %273, 10
  %275 = add i32 %272, 1
  %276 = mul i32 %275, %272
  %277 = urem i32 %276, 2
  %278 = icmp eq i32 %277, 0
  %279 = or i1 %274, %278
  br i1 %279, label %bodyBB108, label %bodyBB108cloneBB

bodyBB108:                                        ; preds = %bodyBB108cloneBB, %271
  %.reload103 = load volatile i32, i32* %.reg2mem102, align 4
  store i32 %.reload103, i32* %.reload103.reg2mem, align 4
  %x112 = alloca i32, align 4
  %y113 = alloca i32, align 4
  %280 = load i32, i32* %x112, align 4
  %281 = load i32, i32* %y113, align 4
  %282 = icmp slt i32 %281, 10
  %283 = add i32 %280, 1
  %284 = mul i32 %283, %280
  %285 = urem i32 %284, 2
  %286 = icmp eq i32 %285, 0
  %287 = or i1 %282, %286
  br i1 %287, label %endBB109, label %bodyBB108cloneBB

endBB109:                                         ; preds = %bodyBB108
  %.reload103.reload = load volatile i32, i32* %.reload103.reg2mem, align 4
  ret i32 %.reload103.reload

bodyBBcloneBB:                                    ; preds = %bodyBB, %2
  %288 = alloca i32, align 4
  store i32* %288, i32** %.reg2mem, align 4
  %289 = alloca i32, align 4
  store i32* %289, i32** %.reg2mem3, align 4
  %290 = alloca i8**, align 4
  store i8*** %290, i8**** %.reg2mem6, align 4
  %291 = alloca [100 x i8], align 16
  store [100 x i8]* %291, [100 x i8]** %.reg2mem9, align 4
  %292 = alloca i8, align 1
  store i8* %292, i8** %.reg2mem13, align 4
  %.reload2cloneBB = load volatile i32*, i32** %.reg2mem, align 4
  store i32 0, i32* %.reload2cloneBB, align 4
  br label %bodyBB

bodyBB18cloneBB:                                  ; preds = %bodyBB18, %24
  %.reload5cloneBB = load volatile i32*, i32** %.reg2mem3, align 4
  store i32 %0, i32* %.reload5cloneBB, align 4
  %.reload8cloneBB = load volatile i8***, i8**** %.reg2mem6, align 4
  store i8** %1, i8*** %.reload8cloneBB, align 4
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0))
  %.reload4cloneBB = load volatile i32*, i32** %.reg2mem3, align 4
  %294 = load i32, i32* %.reload4cloneBB, align 4
  %295 = icmp sle i32 %294, 1
  store i1 %295, i1* %.reg2mem20, align 1
  br label %bodyBB18

bodyBB26cloneBB:                                  ; preds = %bodyBB26, %44
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.1, i32 0, i32 0))
  %.reload1cloneBB = load volatile i32*, i32** %.reg2mem, align 4
  store i32 0, i32* %.reload1cloneBB, align 4
  br label %bodyBB26

bodyBB32cloneBB:                                  ; preds = %bodyBB32, %62
  br label %bodyBB32

bodyBB38cloneBB:                                  ; preds = %bodyBB38, %79
  %.reload7cloneBB = load volatile i8***, i8**** %.reg2mem6, align 4
  %297 = load i8**, i8*** %.reload7cloneBB, align 4
  %298 = getelementptr inbounds i8*, i8** %297, i32 1
  %299 = load i8*, i8** %298, align 4
  store i8* %299, i8** @input, align 4
  %300 = load i8*, i8** @input, align 4
  %301 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.2, i32 0, i32 0), i8* %300)
  %.reload12cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %302 = bitcast [100 x i8]* %.reload12cloneBB to i8*
  call void @llvm.memset.p0i8.i32(i8* align 16 %302, i8 0, i32 100, i1 false)
  br label %bodyBB38

bodyBB44cloneBB:                                  ; preds = %bodyBB44, %102
  %.reload11cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %303 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload11cloneBB, i32 0, i32 0
  %304 = load i8*, i8** @input, align 4
  call void @_Z7encryptPhPc(i8* %303, i8* %304)
  %305 = load i8*, i8** @input, align 4
  %306 = call i32 @strlen(i8* %305) #5
  %307 = icmp eq i32 %306, 22
  store i1 %307, i1* %.reg2mem46, align 1
  br label %bodyBB44

bodyBB52cloneBB:                                  ; preds = %bodyBB52, %124
  %.reload10cloneBB = load volatile [100 x i8]*, [100 x i8]** %.reg2mem9, align 4
  %308 = getelementptr inbounds [100 x i8], [100 x i8]* %.reload10cloneBB, i32 0, i32 0
  %309 = call i32 @memcmp(i8* %308, i8* getelementptr inbounds ([100 x i8], [100 x i8]* bitcast (<{ [22 x i8], [78 x i8] }>* @enc to [100 x i8]*), i32 0, i32 0), i32 22)
  %310 = icmp ne i32 %309, 0
  store i1 %310, i1* %.reg2mem54, align 1
  br label %bodyBB52

bodyBB60cloneBB:                                  ; preds = %bodyBB60, %144
  %.reload55cloneBB = load volatile i1, i1* %.reg2mem54, align 1
  %311 = xor i1 %.reload55cloneBB, true
  store i1 %311, i1* %.reg2mem62, align 1
  br label %bodyBB60

bodyBB68cloneBB:                                  ; preds = %bodyBB68, %162
  %312 = zext i1 %163 to i8
  %.reload15cloneBB = load volatile i8*, i8** %.reg2mem13, align 4
  store i8 %312, i8* %.reload15cloneBB, align 1
  %.reload14cloneBB = load volatile i8*, i8** %.reg2mem13, align 4
  %313 = load i8, i8* %.reload14cloneBB, align 1
  %314 = trunc i8 %313 to i1
  store i1 %314, i1* %.reg2mem70, align 1
  br label %bodyBB68

bodyBB76cloneBB:                                  ; preds = %bodyBB76, %183
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.3, i32 0, i32 0))
  br label %bodyBB76

bodyBB82cloneBB:                                  ; preds = %bodyBB82, %201
  br label %bodyBB82

bodyBB88cloneBB:                                  ; preds = %bodyBB88, %218
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.4, i32 0, i32 0))
  br label %bodyBB88

bodyBB94cloneBB:                                  ; preds = %bodyBB94, %236
  br label %bodyBB94

bodyBB100cloneBB:                                 ; preds = %bodyBB100, %253
  %.reloadcloneBB = load volatile i32*, i32** %.reg2mem, align 4
  %317 = load i32, i32* %.reloadcloneBB, align 4
  store i32 %317, i32* %.reg2mem102, align 4
  br label %bodyBB100

bodyBB108cloneBB:                                 ; preds = %bodyBB108, %271
  %.reload103cloneBB = load volatile i32, i32* %.reg2mem102, align 4
  store i32 %.reload103cloneBB, i32* %.reload103.reg2mem, align 4
  br label %bodyBB108
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nocallback nounwind readonly willreturn
declare i32 @strlen(i8*) #3

declare i32 @memcmp(i8*, i8*, i32) #1

; Function Attrs: mustprogress noinline nounwind optnone
define hidden void @_Z7encryptPhPc(i8* %0, i8* %1) #4 {
  %.reg2mem5 = alloca i32, align 4
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem1 = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %3 = alloca i8*, align 4
  %4 = alloca i8*, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 4
  store i8* %1, i8** %4, align 4
  %swVar.ptr = alloca i32, align 4
  store i32 275367002, i32* %swVar.ptr, align 4
  br label %dispatchBB

dispatchBB:                                       ; preds = %returnBB, %2
  %swVar = load i32, i32* %swVar.ptr, align 4
  switch i32 %swVar, label %swDefault [
    i32 275367002, label %7
    i32 1467266101, label %10
    i32 1485198215, label %13
    i32 1349287204, label %16
    i32 509354572, label %25
    i32 1984534891, label %32
    i32 1927918039, label %35
    i32 579149757, label %36
  ]

swDefault:                                        ; preds = %dispatchBB
  br label %returnBB

7:                                                ; preds = %dispatchBB
  %8 = load i8*, i8** %4, align 4
  %9 = call i32 @strlen(i8* %8) #5
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1467266101, i32* %swVar.ptr, align 4
  br label %returnBB

10:                                               ; preds = %dispatchBB
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %.reg2mem, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %.reg2mem1, align 4
  store i32 1485198215, i32* %swVar.ptr, align 4
  br label %returnBB

13:                                               ; preds = %dispatchBB
  %.reload = load volatile i32, i32* %.reg2mem, align 4
  %.reload2 = load volatile i32, i32* %.reg2mem1, align 4
  %14 = icmp slt i32 %.reload, %.reload2
  %15 = select i1 %14, i32 1349287204, i32 579149757
  store i32 %15, i32* %swVar.ptr, align 4
  br label %returnBB

16:                                               ; preds = %dispatchBB
  %17 = load i8*, i8** %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds i8, i8* %17, i32 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = sub nsw i32 32, %22
  %24 = add nsw i32 %21, %23
  store i32 %24, i32* %.reg2mem3, align 4
  store i32 509354572, i32* %swVar.ptr, align 4
  br label %returnBB

25:                                               ; preds = %dispatchBB
  %26 = load i32, i32* %6, align 4
  %.reload4 = load volatile i32, i32* %.reg2mem3, align 4
  %27 = xor i32 %.reload4, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds i8, i8* %29, i32 %30
  store i8 %28, i8* %31, align 1
  store i32 1984534891, i32* %swVar.ptr, align 4
  br label %returnBB

32:                                               ; preds = %dispatchBB
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %.reg2mem5, align 4
  store i32 1927918039, i32* %swVar.ptr, align 4
  br label %returnBB

35:                                               ; preds = %dispatchBB
  %.reload6 = load volatile i32, i32* %.reg2mem5, align 4
  store i32 %.reload6, i32* %6, align 4
  store i32 1467266101, i32* %swVar.ptr, align 4
  br label %returnBB

36:                                               ; preds = %dispatchBB
  ret void

returnBB:                                         ; preds = %35, %32, %25, %16, %13, %10, %7, %swDefault
  br label %dispatchBB
}

define void @.datadiv_decode424238335() {
entry:
  br label %for-body

for-body:                                         ; preds = %for-body, %entry
  %i = phi i32 [ 0, %entry ], [ %next-value, %for-body ]
  %arrayIdx = getelementptr [33 x i8], [33 x i8]* @.str.1.1, i32 0, i32 %i
  %0 = load i8, i8* %arrayIdx, align 1
  %xor = xor i8 %0, 103
  store i8 %xor, i8* %arrayIdx, align 1
  %next-value = add i32 %i, 1
  %end-condition = icmp ult i32 %i, 32
  %loop-condition = icmp ne i1 %end-condition, false
  br i1 %loop-condition, label %for-body, label %for-end

for-end:                                          ; preds = %for-body
  br label %for-body1

for-body1:                                        ; preds = %for-body1, %for-end
  %i3 = phi i32 [ 0, %for-end ], [ %next-value6, %for-body1 ]
  %arrayIdx4 = getelementptr [18 x i8], [18 x i8]* @.str.2.2, i32 0, i32 %i3
  %1 = load i8, i8* %arrayIdx4, align 1
  %xor5 = xor i8 %1, -58
  store i8 %xor5, i8* %arrayIdx4, align 1
  %next-value6 = add i32 %i3, 1
  %end-condition7 = icmp ult i32 %i3, 17
  %loop-condition8 = icmp ne i1 %end-condition7, false
  br i1 %loop-condition8, label %for-body1, label %for-end2

for-end2:                                         ; preds = %for-body1
  br label %for-body9

for-body9:                                        ; preds = %for-body9, %for-end2
  %i11 = phi i32 [ 0, %for-end2 ], [ %next-value14, %for-body9 ]
  %arrayIdx12 = getelementptr [18 x i8], [18 x i8]* @.str.3.3, i32 0, i32 %i11
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
  %arrayIdx20 = getelementptr [18 x i8], [18 x i8]* @.str.4.4, i32 0, i32 %i19
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
  %arrayIdx28 = getelementptr [26 x i8], [26 x i8]* @.str.5, i32 0, i32 %i27
  %4 = load i8, i8* %arrayIdx28, align 1
  %xor29 = xor i8 %4, 81
  store i8 %xor29, i8* %arrayIdx28, align 1
  %next-value30 = add i32 %i27, 1
  %end-condition31 = icmp ult i32 %i27, 25
  %loop-condition32 = icmp ne i1 %end-condition31, false
  br i1 %loop-condition32, label %for-body25, label %for-end26

for-end26:                                        ; preds = %for-body25
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
