# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/kernels/mvt/bin/mvt

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i	
	n=$(shuf -i 9000-10000 -n 1)		
	echo $bin $n out.txt ori_mvt_rt.csv	  
	$bin $n out.txt ori_mvt_rt.csv	  
	
	echo $bin\_dtr $n out_dtr.txt dtr_mvt_rt.csv fpr_mvt.csv	
	$bin\_dtr $n out_dtr.txt dtr_mvt_rt.csv fpr_mvt.csv	
	
	echo $bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_mvt_rt.csv fpr_ty1_mvt.csv	
	$bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_mvt_rt.csv fpr_ty1_mvt.csv	
	
	echo $bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_mvt_rt.csv fpr_ty2_mvt.csv	
	$bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_mvt_rt.csv fpr_ty2_mvt.csv	
done





