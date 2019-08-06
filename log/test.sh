sstring=$1
count=0
limit=10
while [ "$count" -lt "$limit" ]
 do
datestr=`date +%s`
touch "log_$datestr.txt"
uname >> log_$datestr.txt
date >> log_$datestr.txt
grep -m `expr $count + 1` $sstring words.txt | tail -1 >> log_$datestr.txt
sleep 10
count=`expr $count + 1`
done
echo 
exit 0
