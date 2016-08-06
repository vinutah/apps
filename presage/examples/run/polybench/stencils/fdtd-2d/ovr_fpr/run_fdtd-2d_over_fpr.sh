# run_dtr_gep.sh

bin=~/apps/presage/examples/src/polybench/stencils/fdtd-2d/bin/fdtd-2d

for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i
	n1=$(shuf -i 500-1000 -n 1)
	n2=$(shuf -i 500-1000 -n 1)
	t=$(shuf -i 1000-2000 -n 1)	  	
	
	echo $bin $n1 $n2 $t  out.txt ori_fdtd-2d_rt.csv	  
	$bin $n1 $n2 $t  out.txt ori_fdtd-2d_rt.csv	  
	
	echo $bin\_dtr $n1 $n2 $t out_dtr.txt dtr_fdtd-2d_rt.csv fpr_fdtd-2d.csv
	$bin\_dtr $n1 $n2 $t out_dtr.txt dtr_fdtd-2d_rt.csv fpr_fdtd-2d.csv
	
	echo $bin\_dtr_ty1 $n1 $n2 $t out_dtr_ty1.txt dtr_ty1_fdtd-2d_rt.csv fpr_ty1_fdtd-2d.csv
	$bin\_dtr_ty1 $n1 $n2 $t out_dtr_ty1.txt dtr_ty1_fdtd-2d_rt.csv fpr_ty1_fdtd-2d.csv
	
	echo $bin\_dtr_ty2 $n1 $n2 $t out_dtr_ty2.txt dtr_ty2_fdtd-2d_rt.csv fpr_ty2_fdtd-2d.csv
	$bin\_dtr_ty2 $n1 $n2 $t out_dtr_ty2.txt dtr_ty2_fdtd-2d_rt.csv fpr_ty2_fdtd-2d.csv
done





