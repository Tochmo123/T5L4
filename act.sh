#!/bin/bash

cat disc.txt | grep "[40-51]%" | awk '{if ($5 >= 41 && $5 <= 50) print $1}' >> david.txt