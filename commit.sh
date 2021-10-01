#########################################################
# filename : commit.sh
# author   : moonwhite
# version  : v1.0.0
# function : 1. Get current date and time.
#            2. commit and push to github. 
#########################################################
usage()
{
	echo "使用方法："
	echo "commit.sh"
	echo " or"
	echo "commit.sh 提交注释"
	exit 2
}

if [ $# -eq 1 ]; then
	comment=$1
else
	comment=`date +'%Y%m%d-%H%M%S'`
fi

###############
# copy file
###############

git pull github main
git pull gitee main
git add .
git commit -m "$comment"
git push github main
git push gitee main
echo "commit ok"

#/usr/local/bin/python3 /Users/yiny/bin/deploy.py

