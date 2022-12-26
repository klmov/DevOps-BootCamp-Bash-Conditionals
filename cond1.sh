#!/bin/bash

IFS=',' read -r -a nums <<< "$1"
declare -i sum=0
for val in "${nums[@]}"; do

  if (( val%2==0 )); then
    ((sum+=val))
  fi
done
echo "$sum"

