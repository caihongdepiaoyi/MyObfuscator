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
wasmtime="/home/starfish/.wasmtime/bin/wasmtime"
function extract() {
  ORIGINAL=$1

  if [ ! -d  $ORIGINAL ]; then
    mkdir $ORIGINAL
  fi
  mkdir $ORIGINAL/data
  mkdir $ORIGINAL/bc
  mkdir $ORIGINAL/ll
  mkdir $ORIGINAL/out
  echo -n > $ORIGINAL/$DATAF
  echo -n > $ORIGINAL/$LOCALVARF
  echo -n > $ORIGINAL/$GLOBALVARF
  
  for l in $(llvm-nm "$ORIGINAL.bc" | grep -E " T " | awk '{print $3}') # Get defined functions in original
  do
    llvm-extract --func=$l "$ORIGINAL.bc" -o $ORIGINAL/bc/"$l".bc
    echo -n $l.bc " " >> $ORIGINAL/$DATAF
    #llvm-dis $ORIGINAL/"$l".bc
    #md5sum $ORIGINAL/"$l".bc | awk '{print $1}' >> $ORIGINAL/$DATAF
  done
  #local varible
  for l in $(llvm-nm -a "$ORIGINAL.bc" | grep -E " d " | awk '{print $3}')
  do
    local=$(echo $l | grep ".L" | awk -F L '{print $2}')
    name=$(echo $l | grep ".L" | awk -F . '{print $3$4}')
    llvm-extract --glob=$local "$ORIGINAL.bc" -o $ORIGINAL/bc/"$name".bc
    llvm-dis $ORIGINAL/bc/"$name".bc -o $ORIGINAL/out/"$name".ll
    echo -n $name.bc " " >> $ORIGINAL/$LOCALVARF
  done
  #global var
  for l in $(llvm-nm -a "$ORIGINAL.bc" | grep -E " D " | awk '{print $3}')
  do
    llvm-extract --glob=$l "$ORIGINAL.bc" -o $ORIGINAL/bc/"$l".bc
    llvm-dis $ORIGINAL/bc/"$l".bc -o $ORIGINAL/out/"$l".ll
    echo -n $l.bc " " >> $ORIGINAL/$GLOBALVARF
  done

}

function link() {
  ORIGINAL=$1
  llvm-link -o $ORIGINAL/$ORIGINAL.bc $ORIGINAL/out/*.ll
  llvm-dis $ORIGINAL/$ORIGINAL.bc

}

function different() {
  ORIGINAL=$1
  if $(llvm-diff $ORIGINAL/$ORIGINAL.ll $ORIGINAL.ll);then
    echo "same"
  else 
    echo "different"
  fi
}

function getLLVMIR() {
  cfile=$1
  $cc --target=wasm32-unknown-wasi -emit-llvm -c -S $cfile
}

function ll2wasm() {
  source=$1
  $cc --target=wasm32-unknown-wasi $source/$source.ll -o $source/$source.wasm
  wasm2wat $source/$source.wasm -o $source/$source.wat
}

function obfuscation() {
  param=$1
  input=$2
  output=$3
  opt -load $sofile $1 -enable-new-pm=0 -S $2 -o $3
}

function fla() {
  obfuscation -fla $1 $2
}

function bcf() {
  obfuscation -bcf $1 $2
}

function str() {
  obfuscation -str $1 $2
}

function echoColor() {
  color=$2
  var_str=$1
  if [ "${color}" == "green" ];then
    var_str="\033[32m${var_str}\033[0m"
  elif [ "${color}" == "yellow" ];then
    var_str="\033[33m${var_str}\033[0m"
  elif [ "${color}" == "red" ];then
    var_str="\033[1;41;33m${var_str}\033[0m"
  else
    var_str="\033[37m${var_str}\033[0m"
  fi
  echo -e ${var_str}
}