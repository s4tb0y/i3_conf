#!/bin/bash

status=$(cat /sys/class/power_supply/BAT0/status)
perc=$(cat /sys/class/power_supply/BAT0/capacity)

empty_file=/tmp/batteryempty;
full_file=/tmp/batteryfull


if [ $status = 'Discharging' ] && [ -f $full_file ]
then
	rm $full_file
elif [ $status = 'Charging' ] && [ -f $empty_file ]
then
	rm $empty_file
fi

if [ $perc -le 100 ] && [ $perc -gt 99 ] && [ $status = 'Charging' ] && [ ! -f $full_file ]
then
	notify-send "Battery Information:" "It fucking FULL wtf my dude unplug this badboy !" -u low
	touch $full_file
elif [ $perc -le 20 ] && [ $status = 'Discharging' ] && [ ! -f $empty_file ]
then
	notify-send "Battery Information:" "Just to warn you that YOUR COMPUTER NEEDS TO BE FUCKING CHARGED ! LIKE RIGHT NOW !" -u critical
	touch $empty_file
fi	

if [ $status = 'Charging' ]
then
	if [ $perc -le 100 ] && [ $perc -gt 90 ]
	then
		echo  $perc%
	elif [ $perc -le 90 ] && [ $perc -gt 80 ]
	then
		echo  $perc%
	elif [ $perc -le 80 ] && [ $perc -gt 70 ]
	then
		echo  $perc%
	elif [ $perc -le 70 ] && [ $perc -gt 60 ]
	then
		echo  $perc%
	elif [ $perc -le 60 ] && [ $perc -gt 50 ]
	then
		echo  $perc%
	elif [ $perc -le 50 ] && [ $perc -gt 40 ]
	then
		echo  $perc%
	elif [ $perc -le 40 ] && [ $perc -gt 30 ]
	then
		echo  $perc%
	elif [ $perc -le 30 ] && [ $perc -gt 20 ]
	then
		echo  $perc%
	elif [ $perc -le 20 ] && [ $perc -gt 10 ]
	then
		echo  $perc%
	elif [ $perc -le 10 ]
	then
		echo  $perc%
	fi
else	
	if [ $perc -le 100 ] && [ $perc -gt 90 ]
	then
		echo  $perc%
	elif [ $perc -le 90 ] && [ $perc -gt 80 ]
	then
		echo  $perc%
	elif [ $perc -le 80 ] && [ $perc -gt 70 ]
	then
		echo  $perc%
	elif [ $perc -le 70 ] && [ $perc -gt 60 ]
	then
		echo  $perc%
	elif [ $perc -le 60 ] && [ $perc -gt 50 ]
	then
		echo  $perc%
	elif [ $perc -le 50 ] && [ $perc -gt 40 ]
	then
		echo  $perc%
	elif [ $perc -le 40 ] && [ $perc -gt 30 ]
	then
		echo  $perc%
	elif [ $perc -le 30 ] && [ $perc -gt 20 ]
	then
		echo  $perc%
	elif [ $perc -le 20 ] && [ $perc -gt 10 ]
	then
		echo  $perc%
	elif [ $perc -le 10]
	then
		echo  $perc%
	fi
fi
