for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  var=$(shuf -i 32-256 -n 1)
  for d in ./*/*/; do 
  echo "Entering directory: " ${d} 
  (cd ${d} && timeout 300s make n=$var th=10 ;) 
  echo "Leaving directory: " ${d} 
  done
done
