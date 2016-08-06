# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/stencils/seidel-2d/bin/seidel-2d

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n=$(shuf -i 256-512 -n 1)
	t=$(shuf -i 1000-2000 -n 1)	  
	
	echo $bin $n $t  out.txt ori_seidel-2d_rt.csv	  
	$bin $n $t  out.txt ori_seidel-2d_rt.csv	  
	
	echo $bin\_dtr $n $t out_dtr.txt dtr_seidel-2d_rt.csv fpr_seidel-2d.csv
	$bin\_dtr $n $t out_dtr.txt dtr_seidel-2d_rt.csv fpr_seidel-2d.csv
	
	echo $bin\_dtr_ty1 $n $t out_dtr_ty1.txt dtr_ty1_seidel-2d_rt.csv fpr_ty1_seidel-2d.csv
	$bin\_dtr_ty1 $n $t out_dtr_ty1.txt dtr_ty1_seidel-2d_rt.csv fpr_ty1_seidel-2d.csv
	
	echo $bin\_dtr_ty2 $n $t out_dtr_ty2.txt dtr_ty2_seidel-2d_rt.csv fpr_ty2_seidel-2d.csv
	$bin\_dtr_ty2 $n $t out_dtr_ty2.txt dtr_ty2_seidel-2d_rt.csv fpr_ty2_seidel-2d.csv
done





