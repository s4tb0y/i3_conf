#!/bin/bash

#mpstat -P ALL | grep all | awk '{printf(" %s\%\n", 100-$13)}'
#usage=$(top -n 1 | grep %Cpu | awk '{ printf(" %s\n", (100-$8)) }') 
#echo -n $usage 
#cat ~/scripts/cpu_usage_perc


sar -u 1 1 | grep Average | awk '{printf(" %s%\n", int(100-$8))}'
