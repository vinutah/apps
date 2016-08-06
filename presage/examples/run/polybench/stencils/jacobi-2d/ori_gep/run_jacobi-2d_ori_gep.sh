# run_dtr_gep.sh


for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  n=$(shuf -i 32-256 -n 1)
  tstep=$(shuf -i 500-1000 -n 1)
  c1=$n" "$tstep" noerror.txt"
  o1="noerror.txt" 
  c2=$n" "$tstep" error.txt"
  o2="error.txt"   
  echo make ex_dti_gep FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
  make ex_ori_gep FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
done



