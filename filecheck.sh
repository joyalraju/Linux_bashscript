#!/bin/bash
#cleanup
FILE=$1
if [ -e "$FILE" ]
then
echo "Hooray! file exist"
else
echo "Sorry...! file doesnot exist!"
fi
exit 0
