# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/blas/gesummv/bin/gesummv

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n1=$(shuf -i 7000-9000 -n 1)		
	echo $bin $n1 out.txt ori_gesummv_rt.csv	  
	$bin $n1 out.txt ori_gesummv_rt.csv	  
	
	echo $bin\_dtr $n1 out_dtr.txt dtr_gesummv_rt.csv fpr_gesummv.csv
	$bin\_dtr $n1 out_dtr.txt dtr_gesummv_rt.csv fpr_gesummv.csv	
	
	echo $bin\_dtr_ty1 $n1 out_dtr_ty1.txt dtr_ty1_gesummv_rt.csv fpr_ty1_gesummv.csv	
	$bin\_dtr_ty1 $n1 out_dtr_ty1.txt dtr_ty1_gesummv_rt.csv fpr_ty1_gesummv.csv	
	
	echo $bin\_dtr_ty2 $n1 out_dtr_ty2.txt dtr_ty2_gesummv_rt.csv fpr_ty2_gesummv.csv	
	$bin\_dtr_ty2 $n1 out_dtr_ty2.txt dtr_ty2_gesummv_rt.csv fpr_ty2_gesummv.csv	
done





