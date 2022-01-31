#!/bin/bash
# Manipulate string
# https://www.geeksforgeeks.org/string-manipulation-in-shell-scripting/

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit
fi

TOKEN=`cat ~/.token`
URL=$1
END=${URL:19}
CLONE="https://"$TOKEN"@github.com/"$END

echo -----------
echo -e "TOKEN\t$TOKEN"
echo -e "URL\t\t$URL"
echo -e "END\t\t$END"
echo -e "CLONE\t$CLONE"
echo -----------
git clone $CLONE
