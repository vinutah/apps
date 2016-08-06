# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/solvers/lu/bin/lu

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n=$(shuf -i 900-1000 -n 1)		
	
	echo $bin $n out.txt ori_lu_rt.csv	  
	$bin $n out.txt ori_lu_rt.csv	  
	
	echo $bin\_dtr $n out_dtr.txt dtr_lu_rt.csv fpr_lu.csv	
	$bin\_dtr $n out_dtr.txt dtr_lu_rt.csv fpr_lu.csv	
	
	echo $bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_lu_rt.csv fpr_ty1_lu.csv
	$bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_lu_rt.csv fpr_ty1_lu.csv
	
	echo $bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_lu_rt.csv fpr_ty2_lu.csv
	$bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_lu_rt.csv fpr_ty2_lu.csv
	
done





