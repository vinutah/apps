for i in $(eval echo {1..$1})
do
   echo "Running iteration $i."
   c1=$(shuf -i 1000-2000 -n 1)
   c2=$(shuf -i 1000-2000 -n 1)
   t=$(shuf -i 100-200 -n 1)
   ($2 $c1 $c2 $t "out.txt" "runtime_ntv.csv" "fpr_ntv.csv";)
   ($2"_psg_dtr" $c1 $c2 $t "out_dtr.txt" "runtime_dtr.csv" "fpr_dtr.csv";)
   echo "Finished iteration # $i."
   echo "Array size : " $c1"x"$c2
   echo "Time steps : " $t
done
