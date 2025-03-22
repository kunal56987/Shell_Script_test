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

while true
do
        read -p "Enter 2nd folder name: " folder2_name
        if [ -z $folder2_name ]
        then
		echo "Folder name can not be Empty plz provide some other name"

        elif [ -d $folder2_name ]
        then
                echo "folder is alredy Exist plz provide different name"
        else
                
		mkdir $folder2_name
		for i in {1..2} 
		do
			 read -p "Enter $i  file name: " file1_name
			 if [ -z $file1_name ]
			 then
				 echo "file name can not be empty plz provide non empty name"
			 elif [ -e $folder2_name/$file1_name ]
			 then
				  echo "File is alredy exist with this name"
			  else
				  touch $folder2_name/$file1_name
			fi
		
		done
		break
		
        fi
done
