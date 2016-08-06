# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/linear-algebra/blas/gemm/bin/gemm

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n1=$(shuf -i 1000-2000 -n 1)
	n2=$(shuf -i 1000-2000 -n 1)
	n3=$(shuf -i 1000-2000 -n 1)	
	echo $bin $n1 $n2 $n3 out.txt ori_gemm_rt.csv	
	$bin $n1 $n2 $n3 out.txt ori_gemm_rt.csv	
	  
	echo $bin\_dtr $n1 $n2 $n3 out_dtr.txt dtr_gemm_rt.csv fpr_gemm.csv
	$bin\_dtr $n1 $n2 $n3 out_dtr.txt dtr_gemm_rt.csv fpr_gemm.csv
	
	echo $bin\_dtr_ty1 $n1 $n2 $n3 out_dtr_ty1.txt dtr_ty1_gemm_rt.csv fpr_ty1_gemm.csv
	$bin\_dtr_ty1 $n1 $n2 $n3 out_dtr_ty1.txt dtr_ty1_gemm_rt.csv fpr_ty1_gemm.csv
	
	echo $bin\_dtr_ty2 $n1 $n2 $n3 out_dtr_ty2.txt dtr_ty2_gemm_rt.csv fpr_ty2_gemm.csv
	$bin\_dtr_ty2 $n1 $n2 $n3 out_dtr_ty2.txt dtr_ty2_gemm_rt.csv fpr_ty2_gemm.csv
done





