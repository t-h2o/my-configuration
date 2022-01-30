# Manipulate string
# https://www.geeksforgeeks.org/string-manipulation-in-shell-scripting/

if [ $1"." == "." ]
then
	echo missing argument
	exit
fi
TOKEN=`cat ~/.token`
URL=$1
END=`echo ${URL:19}`
CLONE=`echo https://$TOKEN@github.com/$END`
echo $CLONE
git clone $CLONE
