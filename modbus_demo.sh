
#/bin/bash

echo "Enter ip for MODBUS coil:"
read ipaddress
echo "Enter timer (in Seconds):"
read timer
while :
do
  for ((i=$timer; i>0; i--))
  do
    sleep 1
    echo -n "$i | "
    done
    echo -e "\n"
  ./mbtget/scripts/mbtget -r1 -u 1 -n 10 $ipaddress
done
#while [ $COUNTER -lt 1000 ]; do
#  ./mbtget/scripts/mbtget -r1 -u 1 -n 10 $ipaddress
#  echo "Heartbeat $COUNTER"
#  let COUNTER=COUNTER+1
#done
