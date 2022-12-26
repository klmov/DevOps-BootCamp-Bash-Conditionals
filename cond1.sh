#!/bin/bash

IFS=',' read -r -a array <<< "$1"
declare -i sum=0
for digit in "${nums[@]}"; do

  if (( digit%2==0 )); then
    ((sum+=digit)) 
  fi
done
echo "$sum"
