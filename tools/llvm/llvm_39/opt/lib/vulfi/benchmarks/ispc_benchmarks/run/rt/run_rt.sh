screen_name=(sponza teapot cornell)
scale=(0.1 0.2 0.3 0.4 0.5)
for i in $(eval echo {1..$1})
do
  echo "Running iteration # "$i" .."
  var=$(shuf -i 0-2 -n 1)  
  sidx=$(shuf -i 0-4 -n 1)
  for d in ./*/*/; 
  do
  echo "Entering directory: " ${d} 
  (cd ${d} && timeout 300s make screen=${screen_name[$var]} sc=${scale[$sidx]} th=1000000000;)  
  echo "Leaving directory: " ${d} 
  done
done
