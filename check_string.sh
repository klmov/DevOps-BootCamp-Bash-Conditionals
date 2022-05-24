#!/bin/bash

array=(`echo $@ | grep -o .`)
array_l=()
array_c=()
array_n=()

ren='^[0-9]+$'
rel='^[a-zA-Z]+$'
res='^[!@#$%^&()_+]'

for element in "${array[@]}"; do
    if [[ $element =~ $ren ]] ; then
        array_n+=($element)
    elif [[ $element =~ $rel ]] ; then
        array_l+=($element)
    else [[ $element =~ $res ]]
        array_s+=($element)
    fi
done

echo "Numbers: ${#array_n[@]} Symbols: ${#array_s[@]} Letters: ${#array_l[@]}"