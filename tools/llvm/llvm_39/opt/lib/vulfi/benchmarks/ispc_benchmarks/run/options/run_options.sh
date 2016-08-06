intype=(sim_small sim_medium sim_large)
input=(in_4K.txt in_16K.txt in_64K.txt)
for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  idx=$(shuf -i 0-2 -n 1)
  for d in ./*/*/; 
  do 
  echo "Entering directory: " ${d} 
  (cd ${d} && timeout 300s make n=${input[$idx]} inty=${intype[$idx]} th=100000); 
  echo "Leaving directory: " ${d} 
  done
done
