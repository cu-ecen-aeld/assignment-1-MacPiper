#!/bin/sh
# Writer script for assignment 1

if [ $# -ne 2 ]
then
        echo "Please pass exactly 2 parameters writeFile and writeStr"
        exit 1
fi

writeFile="$1"
writeStr="$2"
mkdir -p "$(dirname "$writeFile")"
cat > $writeFile << EOF
$writeStr
EOF
if [ $? -ne 0 ]
then
	echo "Fehler aufgetreten"
	exit 1
fi
