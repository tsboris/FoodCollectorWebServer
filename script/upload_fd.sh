#/bin/bash
# ------------------------------------------------------------------------------------------
# Upload_fd.sh
#The script clone specific branch to current machine and upload it to properly heroku branch
# Created 20 Feb 2015
#############################################################################################


function processBranch () {
echo "Start process $1 branch"
	cd $tmpFolder
	# create new tmp folder
	tmpDir=tmp_$branch_$(date +%Y%m%d)
	mkdir $tmpDir
	chmod 777 tmp_$branch
	cd $tmpDir
	if [ $1 = "dev" ] 
	then
		# clone project from Git
		git clone $masterLocation
	else
		git clone -b $branch --single-branch $masterLocation
	fi

	cd $prodName
	# add heroku remote to git
	git remote add heroku git@heroku.com:$herokuAppName.git
	git remote -v
	git status
	#push code to heroku and migrate db
	if [ $1 = "dev" ]
	then
		git push heroku master
	else
		git push heroku $branch:master
	fi
	#migrate db
	heroku run rake db:migrate
	# remove tmp directory
	cd $tmpFolder
	rm -rf ./$tmpDir
}



usage="Usage:$(basename $0) arg1 arg2 arg2
	where:
	arg1 branch name on Github
	arg2 branch type [dev|prod|test]
	arg3 temporary folder"

if [ "$#" -ne 3 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

# check tmp directory existance
if [ ! -d "$tmpFolder" ]; then
  echo "$tmpFolder does not exists on current machine"
  exit 1
fi


# set variables
masterLocation="https://github.com/tsboris/FoodCollectorWebServer.git"
devBranch="fd-server"
testBranch="test-fd-server"
prodBranch="prod-fd-server"
prodName=FoodCollectorWebServer
branch=$1
tmpFolder=$3
#echo "$masterLocation $branch $tmpFolder" 
case "$2" in 
	dev)
		herokuAppName=$devBranch
		processBranch "dev"
		;;
	prod)
		herokuAppName=$prodBranch
		processBranch "prod"
		;;
	test)
		herokuAppName=$testBranch
		processBranch "test"
		;;
	*)
	echo "Wrong branch type."
	echo $usage
	exit 1
	
esac


