#!/bin/bash
echo "Enter your file or directory "
read -r file

if [ -e "$file" ]
then
   echo "Then file exists"
     if [ -f "$file"  ]
     then
     echo "Then file exists and it a regular file"
     fi

     if [ -r "$file" ]
     then
     echo "and it is readable file"
     fi

     if [ -d "$file" ]
     then
     echo "and it is directory file"
     fi
else

  echo "$file is not present"


fi