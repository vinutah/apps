# run_dtr_gep.sh


if [ $1 == 0 ]
then

	n1=($(shuf -i 32-128 -n 100))
	bin=~/apps/presage/examples/src/polybench/linear-algebra/solvers/cholesky/bin/cholesky_prf
	for i in $(eval echo {0..99})
	do	  
	  $bin ${n1[$i]}
	done

else

	for i in $(eval echo {1..$1})
	do
	python ~/apps/presage/scripts/presage.py t1 relidnoerrorgepid_$i.txt 1 $i linv.txt
	done

fi



