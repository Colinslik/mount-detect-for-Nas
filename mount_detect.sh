#!/bin/bash

device_list=($(sed -ne 's/\/dev\/sd...//'p /etc/mtab | sed -e 's/ .*//'))
for i in "${device_list[@]}"
do
	echo $i
	if [ -d "$i" ]; then
		echo `/bin/ls -A $i`
	else
		echo "NULL"
	fi
done
