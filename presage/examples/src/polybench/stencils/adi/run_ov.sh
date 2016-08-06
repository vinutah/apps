for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c=$(shuf -i 1000-2000 -n 1)
   t=$(shuf -i 100-200 -n 1)
   ($2 $c $t "out.txt" "runtime_ntv.csv" "fpr_ntv.csv";)
   ($2"_psg_dtr" $c $t "out_dtr.txt" "runtime_dtr.csv" "fpr_dtr.csv";)
   echo "Finished iteration # $i."
   echo "Array size : " $c"x"$c
   echo "Time steps : " $t
done
