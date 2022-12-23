#!/bin/bash

# Script for counting Words, numbers and symbols in a string

string=$@

# Word count

words=$(echo -n "$string" | tr -cd '[:alpha:]' | wc -c)

# numbers count

numbers=$(echo -n "$string" | tr -cd '[:digit:]' | wc -c)

# symbols count

symbols=$(echo -n "$string" | tr -cd '[:punct:]' | wc -c)

# output

echo -n "Letters: $words,"
echo -n "Numbers: $numbers,"
echo "Symbols: $symbols."

