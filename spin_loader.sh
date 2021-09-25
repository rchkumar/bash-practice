#!/bin/bash

array1=('-' '\' '|' '/')

while true;
do
   for each in "${array1[@]}"
   do
      echo -en "\r $each"

   done

done