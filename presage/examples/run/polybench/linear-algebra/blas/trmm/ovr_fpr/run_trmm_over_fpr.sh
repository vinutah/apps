# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/blas/trmm/bin/trmm

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	m=$(shuf -i 1000-1100 -n 1)		
	n=$(shuf -i 1000-1100 -n 1)		
	echo $bin $m $n out.txt ori_trmm_rt.csv	  
	$bin $m $n out.txt ori_trmm_rt.csv	  
	
	echo $bin\_dtr $m $n out_dtr.txt dtr_trmm_rt.csv fpr_trmm.csv
	$bin\_dtr $m $n out_dtr.txt dtr_trmm_rt.csv fpr_trmm.csv	
	
	echo $bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_trmm_rt.csv fpr_ty1_trmm.csv	
	$bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_trmm_rt.csv fpr_ty1_trmm.csv	
	
	echo $bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_trmm_rt.csv fpr_ty2_trmm.csv	
	$bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_trmm_rt.csv fpr_ty2_trmm.csv	
done





