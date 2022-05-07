WASI_SDK_PATH=/home/starfish/Public/毕业论文/test/wasi-sdk-14.0
cc="${WASI_SDK_PATH}/bin/clang++ --sysroot=${WASI_SDK_PATH}/share/wasi-sysroot"
lld="${WASI_SDK_PATH}/bin/wasm-ld"
cfile="${NAME}.cpp"
llfile="${NAME}.ll"
wasmfile="${NAME}.wasm"


echo "-- build obfuscate"
if [ ! -d "Build" ]; then
    mkdir Build
fi
cd ./Build
cmake ../Transforms
make
#cd ../Test

echo "-- build manager"
cd ../ObfuscationManager
g++ manager.cpp -o manager

echo "-- build diversification"
