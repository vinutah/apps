# run_dtr_gep.sh


for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  ni=$(shuf -i 128-256 -n 1)
  nj=$(shuf -i 128-256 -n 1)
  nk=$(shuf -i 128-256 -n 1)  
  c1=$ni" "$nj" "$nk" noerror.txt"
  o1="noerror.txt" 
  c2=$ni" "$nj" "$nk" error.txt"
  o2="error.txt"   
  echo make ex_dti_gep FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
  make ex_dti_idx FCP="num" C1="$c1" O1="$o1" C2="$c2" O2="$o2" ;     
done



