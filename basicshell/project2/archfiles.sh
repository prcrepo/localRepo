# Project 2
# Archieve large size folders with size of 20 mb and 10 days older folders 
# Steps 
#  1. Provide the path of directory
#  2. check if directory present or not 
#  3. Create archieve folder if not prasent 
#  4. find all files with size og greater than 20 mb
#  5. compress these files
#  6. Move these files in archieve folders 
#  7. Make a crone job to run this script at everyday at given time

#!/bin/bash
#version 1.00
#Tue Sep 23 15:31:23 IST 2025



# create variables 

location="/C/users/Ganesh Lokhande/shellpractice/localRepo/basicshell/project2"
Days=10 
Depth=1
Run=0


 #Check if directory is prasent or not

 if [ ! -d $location ]
  then
	echo "Directory is not pesent"
	exit 1
 fi

 # Create archieve folder if not prasent
  
  if [ ! -d $location/archieve ]
  then
	  mkdir $location/archieve
  fi



  #Find the lists of files larger then 20 MB

  for i in find $location -maxdepth $Depth -type f -size +20M
  do 
	  if [ $Run -eq 0 ]
	  then
		  gzip $1 || exit 1
		  mv $1.gz $location/archieve || exit 1
	  fi
  done











