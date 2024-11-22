#!/bin/bash

getsize() {
local path="$1"
local size=$(du -hs "$path" 2>/dev/null |cut -f1)
echo $size
}
 
folder=$(ls -A)

for i in $folder; do 
    size=$(getsize "$i")
    echo  -e "$size\t$i"
done | sort -rh -k1,1