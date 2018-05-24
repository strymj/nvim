#!/bin/bash

target=".git"
dir="build"
max_depth=10

found="false"
for i in $(seq 1 ${max_depth})
do
	if [ -e ${target} ]; then
		found="true"
		break
	fi

	cd ..
done

if [ ${found} = "true" ]; then
	echo "[$0] Found ${target}."
else
	echo "[$0] Cannot find ${target}."
fi
