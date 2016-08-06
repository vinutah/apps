for i in {1..100}
do
  var=$(shuf -i 16-4096 -n 1)
  ./inputgen $var "../data/in_"$i".txt"
done
