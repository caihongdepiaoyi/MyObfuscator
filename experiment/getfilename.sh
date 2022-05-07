dir="file"
echo -n "" > data.txt
for l in $(ls ${dir} | grep "bc")
do
  llvm-dis $dir/$l
done
for l in $(ls ${dir} | grep "ll")
do
  echo -n $dir/$l " " >> data.txt
done
