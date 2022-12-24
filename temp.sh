#!/bin/bash

input=$1
temp=0
if [[ ${input:((${#input}-1)):1} = "C" ]]; then
    ((temp=${input:0:((${#input}-1))}+273))
    echo $temp"K"
elif [[ ${input:((${#input}-1)):1} = "K" ]]; then
    ((temp=${input:0:((${#input}-1))}-273))
     echo $temp"C"
fi

