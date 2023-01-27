#!/bin/bash

grep -E ' [5-9][1-9]%| 100%' disc.txt | awk '{ if ($5 >= "51%") print $1}' >> sol.txt
