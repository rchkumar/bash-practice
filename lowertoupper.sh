#!/bin/bash
echo "Enter the charcter/letter/word you want to convert to upper"
read -r letter
echo "You have entered ${letter} "
echo "converting to upper"
echo "$letter"  | tr [:lower:] [:upper:]