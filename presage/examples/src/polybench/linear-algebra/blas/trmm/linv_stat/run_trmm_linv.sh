# run_dtr_gep.sh


if [ $1 == 0 ]
then

	n1=($(shuf -i 32-256 -n 100))
	n2=($(shuf -i 32-256 -n 100))
	bin=~/apps/presage/examples/src/polybench/linear-algebra/blas/trmm/bin/trmm_prf
	for i in $(eval echo {0..99})
	do	  
	  $bin ${n1[$i]} ${n2[$i]}
	done

else

	for i in $(eval echo {1..$1})
	do
	python ~/apps/presage/scripts/presage.py t1 relidnoerrorgepid_$i.txt 2 $i linv.txt
	python ~/apps/presage/scripts/presage.py t3 relidnoerrorgepid_$i.txt 2 $i linv.txt	
	done

fi



