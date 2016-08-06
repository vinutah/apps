#check for timeout period
# arglist to make
for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  var=$(shuf -i 100-1000 -n 1)
  for d in ./*/*/; do 
  echo "Entering directory: " ${d} 
  (cd ${d} && make len=$var); 
  echo "Leaving directory: " ${d} 
  done
done
