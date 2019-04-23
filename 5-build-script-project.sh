#!/bin/bash

echo "Hi there!"

firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline

version=${splitfirstline[1]}
echo "You are building version" $version

echo "Do you want to continue? Enter 1 for yes and 0 for no"
read versioncontinue

if [ $versioncontinue -eq 1 ]
	then 
  	echo "OK"
    cd build/
    echo "Build version $version contains:"
		ls
    cd ..
  for file in source/*
  do
  	echo $file
    done
    
    if [ "$file" == "source/secretinfo.md" ]
    then 
    	echo "The file is not being copied - " $file
		else 
    	echo "The file is being copied - " $file
      cp $file build/.
      fi
      
      else 
  	echo "Please come back when you are ready."
fi