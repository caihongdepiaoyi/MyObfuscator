WASI_SDK_PATH=/home/starfish/Public/毕业论文/test/wasi-sdk-14.0
cc="${WASI_SDK_PATH}/bin/clang++ --sysroot=${WASI_SDK_PATH}/share/wasi-sysroot"
lld="${WASI_SDK_PATH}/bin/wasm-ld"
cfile="${NAME}.cpp"
llfile="${NAME}.ll"
wasmfile="${NAME}.wasm"

if [ ! -d "Build" ]; then
    mkdir Build
fi
cd ./Build
cmake ../Transforms
make
cd ../Test

# 未混淆的ELF文件
#$cc --target=wasm32-unknown-wasi -S -emit-llvm TestProgram.cpp -o IR/TestProgram_orig.ll
clang -S -emit-llvm TestProgram.cpp -o IR/TestProgram_orig.ll

#$cc --target=wasm32-unknown-wasi IR/TestProgram_orig.ll -o Bin/TestProgram_orig
#echo -e "\n\033[32m> Test case on original binary <\033[0m"
#./Bin/TestProgram_orig flag{s1mpl3_11vm_d3m0}

# 基本块分割
#opt -load ../Build/LLVMObfuscator.so -splitBB -enable-new-pm=0 -split_num 2 -S IR/TestProgram_orig.ll -o IR/TestProgram_split.ll
#$cc --target=wasm32-unknown-wasi IR/TestProgram_split.ll -o Bin/TestProgram_split

# 控制流平坦化
opt -lowerswitch -S IR/TestProgram_orig.ll -o IR/TestProgram_lowerswitch.ll 
opt -load ../Build/LLVMObfuscator.so -fla -enable-new-pm=0 -S IR/TestProgram_lowerswitch.ll -o IR/TestProgram_fla.ll #-split_num  3
clang IR/TestProgram_fla.ll -o Bin/TestProgram_fla
#$cc --target=wasm32-unknown-wasi IR/TestProgram_fla.ll -o Bin/TestProgram_fla
#echo -e "\n\033[32m> Test case on Flattening <\033[0m"
#wasmtime ./Bin/TestProgram_fla flag{s1mpl3_11vm_d3m0}

#bogus
opt -load ../Build/LLVMObfuscator.so -bcf -enable-new-pm=0 -S IR/TestProgram_fla.ll -o IR/TestProgram_bcf.ll
echo -e "============================"
clang IR/TestProgram_bcf.ll -o Bin/TestProgram_bcf
#$cc --target=wasm32-unknown-wasi IR/TestProgram_bcf.ll -o Bin/TestProgram_bcf
#echo -e "\n\033[32m> Test case on BogusCF <\033[0m"
#wasmtime ./Bin/TestProgram_bcf flag{s1mpl3_11vm_d3m0}
#bogus
opt -load ../Build/LLVMObfuscator.so -bcf -enable-new-pm=0 -S IR/TestProgram_orig.ll -o IR/TestProgram_bcf_1.ll
echo -e "============================"
clang IR/TestProgram_bcf_1.ll -o Bin/TestProgram_bcf_1

#stringObfuscation
opt -load ../Build/LLVMObfuscator.so -str -enable-new-pm=0 -S IR/TestProgram_orig.ll -o IR/TestProgram_str.ll
echo -e "============================"
$cc --target=wasm32-unknown-wasi IR/TestProgram_str.ll -o Bin/TestProgram_str
echo -e "\n\033[32m> Test case on StringObfuscation <\033[0m"
wasmtime ./Bin/TestProgram_str flag{s1mpl3_11vm_d3m0}

#cognitive complexity

opt -load ../Build/LLVMObfuscator.so -function-info -enable-new-pm=0 -S test.ll -o IR/test.ll
