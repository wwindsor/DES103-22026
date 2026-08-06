for ip in 192.168.1.10 192.168.1.20 192.168.1.30; do
echo "Verificando $ip"​
done

for archivo in /var/log/*.log; do
echo "Procesando $archivo"​
done

for ((i=1; i<=5; i++)); do
echo "Iteración $i"​
done
