#!/bin/bash

while true
do
	read -p "Enter folder name: " folder_name
	if [ -z $folder_name ]
	then
		echo "Folder name can not be Empty plz provide some other name"
	elif [ -d $folder_name ]
	then
		echo "folder is alredy Exist plz provide different name"
	else
		mkdir $folder_name
		read -p "Enter file name: " file_name
		if [ -z $file_name ]
		then
			echo "file name can not be empty plz provide non empty name"
		elif [ -e $folder_name/$file_name ]
		then
			echo "File is alredy exist with this name"
		else
			touch $folder_name/$file_name
			break
		fi
	fi
done
