#!/bin/bash
set -o errexit

#Voici un petit script pour te simplifier la vie pour tes transferts entre la 
#Vogosphere et ton github.

Path_git="/Users/agonelle/Desktop/CptGraby_42/GNL"
Path_vogo="/Users/agonelle/Documents/GNL"
update_message="Mise a jour de mon git. "
version=0.1

function transf_2_git (){
	(cd ${Path_vogo}; git add -A; git commit -m "${update_message} "; git push)
	cp -R -v ${Path_vogo}/* ${Path_git}
	echo "commit -m :${update_message}"
	(cd ${Path_git}; git add -A; git commit -m "${update_message} "; git push)
}

function help_message (){
	echo "For now there is only 3 arguments for this functions"
	echo "-S "
	echo "	Start you day and copy everything from your git to"
	echo "	the Vogosphere dir."
	echo "-F"
	echo "	You finish your day pushing all in Vogosphere and by"
	echo "	copying everything in your Git dir to finaly push it."
	echo "	You can use this argument with a second one, to state"
	echo "	your git commit -m."
	echo "-P"
	echo "	Print the path that the script is using"
}

function print_path (){
	echo "You are working with those paths:"
	echo "Path git:		${Path_git}"
	echo "Path vogosphere:	${Path_vogo}"
}

if [[ "${Path_git}" = "..." || "${Path_vogo}" == "..." ]]; then
	print_path
	echo "Please update the working paths!"
	exit 0
fi
echo "Hello there, thx for using the 42_2_Home script."
if [ "$1" = "-S" ]; then
	cd ${Path_git}
	git pull
	cp -R -v ${Path_git}/* ${Path_vogo}
	echo "All files were transfered!" 

elif [ "$1" = "-P" ]; then
	print_path
elif [ "$1" = "-F" ]; then
	echo "You probably worked hard today."
	if [ $# = 2 ]; then
		update_message=$2
	fi
	transf_2_git 
	echo "Everything has been copied && and uploaded"
else
	help_message
fi
exit 0
