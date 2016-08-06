for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   make $2
done
