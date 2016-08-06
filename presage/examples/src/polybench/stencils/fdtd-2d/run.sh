for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c1=$(shuf -i 20-500 -n 1)
   c2=$(shuf -i 20-500 -n 1)
   t=$(shuf -i 100-500 -n 1)
   ($2 $c1 $c2 $t;)
   echo "Finished iteration # $i."
   echo "Array size : " $c1"x"$c2
   echo "Time steps : " $t
done
