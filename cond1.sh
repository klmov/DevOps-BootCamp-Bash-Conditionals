#!/bin/bash

# Conditionals
# Hard: 2

#This one should be here
IFS=',' read -r -a array <<< "$1"

#Write your code
sum=0
for number in "${array[@]}"
do
    if [ $((number%2)) -eq 0 ]
    then
        sum=$((sum+number))
    fi
done

echo $sum