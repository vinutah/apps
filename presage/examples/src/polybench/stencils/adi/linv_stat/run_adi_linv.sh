# run_dtr_gep.sh


if [ $1 == 0 ]
then

	n=$(shuf -i 32-256 -n 100)

	bin=~/apps/presage/examples/src/polybench/stencils/adi/bin/adi_prf

	for i in ${n[@]}
	do
	  t=$(shuf -i 100-200 -n 1)
	  echo $bin $i $t
	  $bin $i $t
	done

else

	for i in $(eval echo {1..$1})
	do
	python ~/apps/presage/scripts/presage.py t1 relidnoerrorgepid_$i.txt 1 $i linv.txt	
	done

fi



