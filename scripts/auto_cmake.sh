#!/bin/bash
echo "##### auto_cmake.sh #####"

file="CMakeLists.txt"
dir="build"
max_depth=10

found="false"
for i in $(seq 1 ${max_depth})
do
	if [ -e ${file} ]; then
		found="true"
		break
	fi

	cd ..
done

if [ ${found} = "true" ]; then

	if [ ! -e ${dir} ]; then
		mkdir ${dir}
	fi
	cd ${dir}

	rm -rf ./*

	cmake ..
	make
else
	echo "Cannot find CMakeLists.txt"
fi
