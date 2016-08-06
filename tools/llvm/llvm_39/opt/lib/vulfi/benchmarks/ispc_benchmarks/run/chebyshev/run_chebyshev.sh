for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  var1=$(shuf -i 1-256 -n 1)
  var2=$(shuf -i 1-3 -n 1)
  for d in ./*/*/; 
  do 
  echo "Entering directory: " ${d} 
  (cd ${d} && timeout 300s make n=$var1 fnt=$var2 th=10000 ;) 
  echo "Leaving directory: " ${d} 
  done
done
