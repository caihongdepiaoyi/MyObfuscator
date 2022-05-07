source common.sh

function run() {
    flag=$1
    case $flag in
    1) 
    rm -rf $2
    extract $2
    ;;
    2) 
    link $2
    ;;
    3)  echo '你选择了 3'
    ;;
    4)
    llvm-as $2/$2.ll -o $2/$2.bc
    ll2wasm $2
    $wasmtime $2/$2.wasm 
    different $2
    ;;
    5)  echo '5' 
    fla $3/bc/$2.bc $3/out/$2.fla.ll
    llvm-as $3/out/$2.fla.ll
    ;;
    6) echo '6'
    bcf $3/bc/$2.bc $3/out/$2.bcf.ll
    llvm-as $3/out/$2.bcf.ll
    ;;
    7) echo '7'
    str $2/$2.bc $2/$2.ll
    ;;
    *)  echo '你没有输入 1 到 7 之间的数字'
    ;;
    esac
}

run $1 $2 $3