for i in $(eval echo {1..$1})
do
	echo "Running iteration # "$i 
	./add_OV
done
