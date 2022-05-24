# DevOps BootCamp: Bash Conditionals

## Task 1
An unsorted list is passed to the script. Write a program that will output the sum of even numbers

### Check
`./cond1.sh "1,2,3,4,5,6,7"`

12

`./cond1.sh "4,3,1"`

4

`./cond1.sh "2,2,9,3,8"`

12

## Task 2
Develop a script that takes the temperature value in Celsius OR Fahrenheit and returns the inverse value

### Check
If the result is a fractional number, rounding should be done to tenths:

`./temp.sh 55C`

131F

`./temp.sh 122F`

50C

`./temp.sh 98F`

36,7C


## Task 3
Develop script that takes any string and calculate count of letters, numbers, symbols `!@#$%^&()_+` inside except whitespaces

### Check

`./check_ctring.sh 'Hello !! ** 564gfhf'`

Numbers: 4 Symbols: 7 Letters: 0

`./check_string.sh 'Hello !!   +'`

Numbers: 0 Symbols: 3 Letters: 5

`./check_string.sh 'Hello !!+'`

Numbers: 0 Symbols: 3 Letters: 5