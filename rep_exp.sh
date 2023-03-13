#!/bin/bash

sudo pkill -9 vmstat
sudo pkill -9 dstat

filename=$1
sudo vmstat 1 > result/$filename.vmstat &            

echo "Start To Run:: please verify and input the pid"
sudo ./case-anon-w-rand-mt
#sudo dstat -D /dev/nvme1n1 > result/$filename.dstat &
#sudo dmesg -w | tee result/$filename.dmesg &


sudo pkill -9 vmstat
sudo pkill -9 dstat
