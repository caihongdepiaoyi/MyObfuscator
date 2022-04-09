source common.sh

rm -rf TestProgram

extract TestProgram
link TestProgram
compileAndExec TestProgram.bc test.o