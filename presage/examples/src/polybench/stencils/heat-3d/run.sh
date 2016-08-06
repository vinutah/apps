for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c=$(shuf -i 32-80 -n 1)
   t=$(shuf -i 100-200 -n 1)
   ($2 $c $t;)
   echo "Finished iteration # $i."
   echo "Array size : " $c"x"$c"x"$c
   echo "Time steps : " $t
done
