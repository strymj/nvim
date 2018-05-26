#!/bin/bash

target=".git"
dir="build"
max_depth=10

if [ $# -ne 1 ]; then
	echo "[$0] Args error."
fi

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
	git add --all
	git commit -m $1
	git push origin master
else
	echo "[$0] Cannot find ${target}."
fi
