# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/kernels/bicg/bin/bicg

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	m=$(shuf -i 9000-10000 -n 1)		
	n=$(shuf -i 9000-10000 -n 1)		
	
	echo $bin $m $n out.txt ori_bicg_rt.csv
	$bin $m $n out.txt ori_bicg_rt.csv
	
	echo $bin\_dtr $m $n out_dtr.txt dtr_bicg_rt.csv fpr_bicg.csv	
	$bin\_dtr $m $n out_dtr.txt dtr_bicg_rt.csv fpr_bicg.csv	
	
	echo $bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_bicg_rt.csv fpr_ty1_bicg.csv
	$bin\_dtr_ty1 $m $n out_dtr_ty1.txt dtr_ty1_bicg_rt.csv fpr_ty1_bicg.csv
	
	echo $bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_bicg_rt.csv fpr_ty2_bicg.csv
	$bin\_dtr_ty2 $m $n out_dtr_ty2.txt dtr_ty2_bicg_rt.csv fpr_ty2_bicg.csv
	
done





