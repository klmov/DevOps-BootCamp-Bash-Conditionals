#!/bin/bash

temp=${1: -1}
val=${1%?}
if [[ "$temp" == "F" ]];
then
    #echo C = 5/9 x (F - 32)
    #echo 5/9*($val-32)
    #C_32=$(( $val - 32 ))
    #C=$(bc<<<"scale=2;5/9*$C_32")
    #C=$(echo "5.0 / 9.0" | bc)
    #echo $C
    echo "scale=4;5 / 9 * ($val - 32) + .005" | bc -l
else 
    echo "C"
fi