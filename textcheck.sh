#!/bin/bash
#cleanup
FILE=$1
WORD=$2
NO=0
if [ -e "$FILE" ]
then
echo "Hooray! file exist"
else
echo "Sorry...! file doesnot exist!"
fi
COUNT=$(grep -i -o $WORD $FILE | wc -l)
if [ "$COUNT" -ne "$NO" ]
then
echo  $WORD " appered"  $COUNT "times"
else
echo "No words"
fi
exit 0
