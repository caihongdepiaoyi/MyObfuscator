if [ ! -d "Build" ]; then
    mkdir Build
fi
cd ./Build
cmake ../Transforms
make
cd ../Test

# 未混淆的ELF文件
clang -S -emit-llvm TestProgram.cpp -o IR/TestProgram_orig.ll
clang IR/TestProgram_orig.ll -o Bin/TestProgram_orig
echo -e "\n\033[32m> Test case on original binary <\033[0m"
./Bin/TestProgram_orig flag{s1mpl3_11vm_d3m0}

# 基本块分割
opt -load ../Build/LLVMObfuscator.so -splitBB -enable-new-pm=0 -split_num 3 -S IR/TestProgram_orig.ll -o IR/TestProgram_split.ll
clang IR/TestProgram_split.ll -o Bin/TestProgram_split

# 控制流平坦化
opt -lowerswitch -S IR/TestProgram_orig.ll -o IR/TestProgram_lowerswitch.ll
opt -load ../Build/LLVMObfuscator.so -fla -enable-new-pm=0 -split_num  3 -S IR/TestProgram_lowerswitch.ll -o IR/TestProgram_fla.ll
clang IR/TestProgram_fla.ll -o Bin/TestProgram_fla
echo -e "\n\033[32m> Test case on Flattening <\033[0m"
./Bin/TestProgram_fla flag{s1mpl3_11vm_d3m0}

#bogus
opt -load ../Build/LLVMObfuscator.so -bcf -enable-new-pm=0 -S IR/TestProgram_orig.ll -o IR/TestProgram_bcf.ll
echo -e "============================"
clang IR/TestProgram_bcf.ll -o Bin/TestProgram_bcf
echo -e "\n\033[32m> Test case on BogusCF <\033[0m"
./Bin/TestProgram_bcf flag{s1mpl3_11vm_d3m0}
