#!/bin/bash

# Code for counting numbers/letters/symbols in a user input (string)

string=$1

countLetters=0
countNumbers=0
countSymbols=0

letter="[a-zA-Z]"
number="[0-9]"
symbols="+_!@#{}*-=~?/\|$%^&()"

# Letters count

for (( i=0; i<${#string}; i++ ))
do
    count=${string:$i:1}
    if [[ $count =~ $letter ]]
    then
        countLetters=$(($countLetters+1))
    fi
done

# code for Numbers Count

for (( i=0; i<${#string}; i++ ))
do
    count=${string:$i:1}
    if [[ $count =~ $number ]]
    then
        countNumbers=$(($countNumbers+1))
    fi
done

# code for symbol count

for (( i=0; i<${#string}; i++ ))
do
    count=${string:$i:1}
    if [[ $symbols == *"$count"* ]]
    then
        countSymbols=$(($countSymbols+1))
    fi
done

echo "Number: $countNumbers" "Symbols: $countSymbols" " Letters: $countLetters"


