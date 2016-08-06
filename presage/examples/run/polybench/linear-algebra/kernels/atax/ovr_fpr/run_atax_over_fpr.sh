# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/kernels/atax/bin/atax

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	m=$(shuf -i 9000-10000 -n 1)		
	n=$(shuf -i 9000-10000 -n 1)		
	
	echo $bin $m $n out.txt ori_atax_rt.csv	  	
	$bin $m $n out.txt ori_atax_rt.csv	  	
	
	echo $bin\_dtr $m $n out_dtr.txt dtr_atax_rt.csv fpr_atax.csv	
	$bin\_dtr $m $n out_dtr.txt dtr_atax_rt.csv fpr_atax.csv	
	
	echo $bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_atax_rt.csv fpr_ty1_atax.csv	
	$bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_atax_rt.csv fpr_ty1_atax.csv	
	
	echo $bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_atax_rt.csv fpr_ty2_atax.csv	
	$bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_atax_rt.csv fpr_ty2_atax.csv	
done





