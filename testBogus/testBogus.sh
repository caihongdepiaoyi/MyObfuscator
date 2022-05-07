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
cd ..


clang  --target=wasm32 -S -emit-llvm test.cpp -o test.ll
#$cc --target=wasm32-unknown-wasi IR/TestProgram_orig.ll -o Bin/TestProgram_orig



#bogus
opt -load ./Build/LLVMObfuscator.so -bcf -enable-new-pm=0 -S test.ll -o test_bcf.ll

llc -march=wasm32 -filetype=obj test_bcf.ll

wasm-ld-10  --no-entry --export-all -o test_bcf.wasm test_bcf.o

wasmtime test_bcf.wasm
#./Bin/TestProgram_bcf flag{s1mpl3_11vm_d3m0}

