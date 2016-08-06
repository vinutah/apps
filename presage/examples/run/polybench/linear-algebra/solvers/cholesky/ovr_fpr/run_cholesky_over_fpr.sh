# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/solvers/cholesky/bin/cholesky

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n=$(shuf -i 1000-1500 -n 1)		
	echo $bin $n out.txt ori_cholesky_rt.csv	  
	$bin $n out.txt ori_cholesky_rt.csv	  
	
	echo $bin\_dtr $n out_dtr.txt dtr_cholesky_rt.csv fpr_cholesky.csv	
	$bin\_dtr $n out_dtr.txt dtr_cholesky_rt.csv fpr_cholesky.csv	
	
	echo $bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_cholesky_rt.csv fpr_ty1_cholesky.csv	
	$bin\_dtr_ty1 $n out_dtr_ty1.txt dtr_ty1_cholesky_rt.csv fpr_ty1_cholesky.csv	
	
	echo $bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_cholesky_rt.csv fpr_ty2_cholesky.csv	
	$bin\_dtr_ty2 $n out_dtr_ty2.txt dtr_ty2_cholesky_rt.csv fpr_ty2_cholesky.csv	
done





