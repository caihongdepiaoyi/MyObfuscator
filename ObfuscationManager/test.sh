source common.sh
cd test
for l in $(ls .);
do
  echo "execute" $l
  echo $(wasmtime $l flag{s1mpl3_11vm_d3m0} | grep "Congratulations~")
  echo $(wasmtime $l helloworld | grep "Sorry try again")
done

