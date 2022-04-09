WASI_SDK_PATH=/home/starfish/Public/毕业论文/test/wasi-sdk-14.0
cc="${WASI_SDK_PATH}/bin/clang++ --sysroot=${WASI_SDK_PATH}/share/wasi-sysroot"
lld="${WASI_SDK_PATH}/bin/wasm-ld"
cfile="${NAME}.cpp"
llfile="${NAME}.ll"
wasmfile="${NAME}.wasm"
sofile=../Build/LLVMObfuscator.so 

DATAF="data/data.txt"
LOCALVARF="data/local.txt"
GLOBALVARF="data/global.txt"
function extract() {
  ORIGINAL=$1

  if [ ! -d  $ORIGINAL ]; then
    mkdir $ORIGINAL
  fi
  mkdir $ORIGINAL/data
  echo -n > $ORIGINAL/$DATAF
  echo -n > $ORIGINAL/$LOCALVARF
  echo -n > $ORIGINAL/$GLOBALVARF
  
  for l in $(llvm-nm "$ORIGINAL.bc" | grep -E " T " | awk '{print $3}') # Get defined functions in original
  do
    llvm-extract --func=$l "$ORIGINAL.bc" -o $ORIGINAL/"$l".bc
    echo -n $l.bc " " >> $ORIGINAL/$DATAF
    #llvm-dis $ORIGINAL/"$l".bc
    #md5sum $ORIGINAL/"$l".bc | awk '{print $1}' >> $ORIGINAL/$DATAF
  done
  #local varible
  for l in $(llvm-nm -a "$ORIGINAL.bc" | grep -E " d " | awk '{print $3}')
  do
    local=$(echo $l | grep ".L" | awk -F L '{print $2}')
    name=$(echo $l | grep ".L" | awk -F . '{print $3$4}')
    llvm-extract --glob=$local "$ORIGINAL.bc" -o $ORIGINAL/"$name".bc
    #llvm-dis $ORIGINAL/"$name".bc
    echo $l >> $ORIGINAL/$LOCALVARF
  done
  #global var
  for l in $(llvm-nm -a "$ORIGINAL.bc" | grep -E " D " | awk '{print $3}')
  do
    llvm-extract --glob=$l "$ORIGINAL.bc" -o $ORIGINAL/"$l".bc
    #llvm-dis $ORIGINAL/"$l".bc
    echo $l >> $ORIGINAL/$GLOBALVARF
  done

}

function link() {
  ORIGINAL=$1
  cd $ORIGINAL
  llvm-link -o "$ORIGINAL".bc *.bc
  #llvm-link -o test.bc $(cat $DATAF)
  llvm-dis "$ORIGINAL".bc

  if $(llvm-diff "$ORIGINAL".bc ../$ORIGINAL.ll);then
    echo "same"
  else 
    echo "different"
  fi
}

function getLLVMIR() {
  cfile=$1
  $cc --target=wasm32-unknown-wasi -emit-llvm -c -S $cfile
}

function compileAndExec() {
  source=$1
  result=$2
  $cc --target=wasm32-unknown-wasi $source -o $result
  wasmtime $result
}

function obfuscation() {
  param=$1
  opt -load $sofile $1 -enable-new-pm=0 -S IR/TestProgram_orig.ll -o IR/TestProgram_str.ll
}