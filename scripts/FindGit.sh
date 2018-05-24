#!/bin/bash
echo "##### FindGit.sh #####"

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

if [ ${found} = "false" ]; then
	echo "Cannot find ${target}"
fi
