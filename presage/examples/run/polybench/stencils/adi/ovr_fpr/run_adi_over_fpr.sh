# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/stencils/adi/bin/adi

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n=$(shuf -i 256-512 -n 1)
	t=$(shuf -i 1000-1500 -n 1)	  
	
	echo $bin $n $t  out.txt ori_adi_rt.csv
	$bin $n $t  out.txt ori_adi_rt.csv
		  
	echo $bin\_dtr $n $t out_dtr.txt dtr_adi_rt.csv fpr_adi.csv	
	$bin\_dtr $n $t out_dtr.txt dtr_adi_rt.csv fpr_adi.csv	
	
	echo $bin\_dtr_ty1 $n $t out_dtr_ty1.txt dtr_adi_ty1_rt.csv fpr_ty1_adi.csv		  
	$bin\_dtr_ty1 $n $t out_dtr_ty1.txt dtr_adi_ty1_rt.csv fpr_ty1_adi.csv		  
	
	echo $bin\_dtr_ty2 $n $t out_dtr_ty2.txt dtr_adi_ty2_rt.csv fpr_ty2_adi.csv
	$bin\_dtr_ty2 $n $t out_dtr_ty2.txt dtr_adi_ty2_rt.csv fpr_ty2_adi.csv
done





