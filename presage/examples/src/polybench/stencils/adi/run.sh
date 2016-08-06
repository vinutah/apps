for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c=$(shuf -i 20-500 -n 1)
   t=$(shuf -i 100-500 -n 1)
   ($2 $c $t;)
   echo "Finished iteration # $i."
   echo "Array size : " $cx$c
   echo "Time steps : " $t
done
