
for i in `cat qiniulist.txt`
do
	echo $i
	qshell get moonwhite $i
	sleep 1
done
