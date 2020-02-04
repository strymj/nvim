#!/bin/bash

target="CMakeLists.txt"
build_dir="build"
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
	# echo "[$0] Found ${target}. Try CMake."
	if [ ! -e ${build_dir} ]; then
		mkdir ${build_dir}
	fi
	cd ${build_dir}

	rm -rf ./*

	cmake ..
	make
else
	echo "[$0] Cannot find ${target}. Do nothing."
fi
