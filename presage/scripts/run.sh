# Arguments
# arg1: max gep id
# arg2: max idx id
# arg3: input_directory
# arg4: name of the output file

for i in $(eval echo {1..$1})
do
    echo "Processing GEP ID: "$i
    for j in $(eval echo {0..$2})
    do
	dirname=$3/"gep_inidx_"$i"_idx"$j
	if [ ! -d "$dirname" ];
	then
	   mkdir $dirname
	fi	
	# for k in $(eval echo {0..$3})
	# do	
	flname1=$3/"gep_inidx_"$i"_idx"$j"_prf_noerror_*"
	#flname2=$3/"gep_inidx_"$i"_idx"$j"_prf_error_*"
	    # if [ -f "$flname" ];
	    # then 
	    # 	echo "File $flname exists"
	mv -f $flname1 $dirname
	#mv -f $flname2 $dirname
	    # fi
	# done
	python presage.py $dirname $i $j $4
    done 
done
