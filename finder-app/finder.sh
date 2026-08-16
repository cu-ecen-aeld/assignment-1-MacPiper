#!/bin/sh
# Finder script for assignment 1

if [ $# -ne 2 ]
then
	echo "Please pass exactly 2 parameters filesDir and searchstr"
	exit 1
else
	if [ ! -d "$1" ]
	then
		echo "First argument should be a directory path"
		exit 1
	fi
fi

filesDir="$1"
searchStr="$2"

noOfFindings=$(grep -r $searchStr $filesDir|wc -l)
noOfFiles=$(find $filesDir -type f|wc -l)

echo "Die Anzahl der Dateien beträgt $noOfFiles und die Anzahl der übereinstimmenden Zeilen beträgt $noOfFindings"
echo "The number of files are $noOfFiles and the number of matching lines are $noOfFindings"
