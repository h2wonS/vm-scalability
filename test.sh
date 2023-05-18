#!/bin/bash

G=$((1024*1024*1024))
for dev_util in $((57*$G))
#for dev_util in $((57*$G)) $((112*$G)) $((167*$G)) $((222*$G)) $((277*$G)) $((332*$G)) $((387*$G)) $((442*$G)) $((497*$G)) $((550*$G))
    do
        echo "Dev Util = $(( $(($dev_util*100)) / $((550*$G)) )) %"
        sudo /home/hwshin/vm-scalability/case-anon-w-rand-mt $dev_util
    done
