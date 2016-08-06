# run_dtr_gep.sh


for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  nx=$(shuf -i 32-64 -n 1)
  ny=$(shuf -i 32-64 -n 1)
  tstep=$(shuf -i 500-700 -n 1)
  c1=$nx" "$ny" "$tstep" noerror.txt"
  o1="noerror.txt" 
  c2=$nx" "$ny" "$tstep" error.txt"
  o2="error.txt"   
  echo make ex_dti_gep FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
  make ex_dti_idx FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
done



