#!/bin/bash

############
# Author:Femi
# About: Creates a Folder(del first, if it exist) and N number of files in that folder
#

set -e

if [ -d "resultFolder" ]; then 
	rm -rf resultFolder
fi

mkdir resultFolder
cd resultFolder


numberofFiles=10

for i in $(seq 1 $numberofFiles)
do 
	touch "test_file_$i.txt"
done
