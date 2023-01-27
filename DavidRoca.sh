#!/bin/bash
echo
maxLineas=`cat disc.txt | wc -l`

echo "Las carpetas de ocupación de disco de 2% a 9% son:" >> sol.txt
sed -i 's/%/ %/g' disc.txt
for i in `seq 1 $maxLineas`; do
nomCarpeta=`cat disc.txt | awk '{print $1}' | head -$i | tail -1`
porcentaje=`cat disc.txt | awk '{print $5}' | head -$i | tail -1`
if [[ $porcentaje =~ ^[0-9]+$ ]]
then
if [ $porcentaje -ge 2 ] && [ $porcentaje -le 9 ]
then
echo $nomCarpeta >> sol.txt
fi
fi
done
sed -i 's/ %/%/g' disc.txt