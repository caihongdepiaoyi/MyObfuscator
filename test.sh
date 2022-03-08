cd ./Build
cmake ../Transforms
make
cd ../Test
clang -S -emit-llvm TestProgram.cpp -o TestProgram.ll
opt -load ../Build/LLVMObfuscator.so -splitBB -split_num 3 -S -enable-new-pm=0 TestProgram.ll -o TestProgram_split.ll
clang TestProgram_split.ll -o TestProgram_split
./TestProgram_split