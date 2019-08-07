search=$1
touch "addr.txt"
host www."$search".com > addr.txt
red=`cat addr.txt`
cond=`echo ${red%:*}`
cond=`echo ${cond##*not}`
if [  $cond == "found" ]
then 
echo "Address not found" >> addr.txt
else
echo ${red##*has address} >> addr.txt
fi
cat addr.txt
exit 0
