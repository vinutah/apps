for i in {1..1000}
do
   echo "Running fault injection experiment # $i"
   timeout $1 make
done
