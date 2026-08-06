contador=0

while [[ "$contador" -lt 5 ]]; do
echo "Iteración $contador"
((contador++))
done

for i in {1..10}; do
[[ $i -eq 5 ]] && break
echo "$i"
done
