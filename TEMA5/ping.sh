#!/bin/bash​

IPS=("8.8.8.8" "1.1.1.1" "192.168.1.1")

for ip in "${IPS[@]}"; do
ping -c 2 "$ip" > "ping_$ip.log" 2>&1 &
done
wait

echo "Todos los pings finalizaron"