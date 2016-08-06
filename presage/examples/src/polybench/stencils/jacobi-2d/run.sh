for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c=$(shuf -i 64-128 -n 1)
   t=$(shuf -i 100-500 -n 1)
   (make $2 count=$c tstep=$t;)
   echo "Finished iteration # $i."
   echo "Array size : " $cx$c
   echo "Time steps : " $t
done
