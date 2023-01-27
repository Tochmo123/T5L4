#!/bin/bash
maxLineas=`cat disc.txt | wc -l`

echo "Las carpetas de ocupacion de disco entre 10% al 35% son: "
sed -i 's/%/ %/g' disc.txt
for i in `seq 1 $maxLineas`
do
    ficheros=`cat disc.txt | awk '{print($1)}' | head -n$i | tail -n1`
    porcentaje=`cat disc.txt | awk '{print($5)}' | head -n$i | tail -n1`
    if [ $porcentaje == Uso ]
    then
    echo ""
    else
    if [ $porcentaje -ge 10 ] && [ $porcentaje -le 35 ]
    then
    echo "$ficheros" >> sol.txt
    fi
    fi
done
sed -i 's/ %/%/g' disc.txt