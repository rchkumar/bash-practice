#!/bin/bash
echo "Enter your file to encrypt"
read -r filename

if [ -f $filename ]
then
  echo "The file is present and The file you entered is $filename"
  gpg -c $filename
  echo "Your encryption file is "
  find *.gpg

else
  echo "THe file is not present "

fi


# decryption command
# gpg -d filename.gpg > filename