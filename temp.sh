#!/bin/bash

#!/bin/bash

input=$1
res=0
if [[ ${input:((${#input}-1)):1} = "C" ]]; then
    ((res=${input:0:((${#input}-1))}+273))
    echo $res"K"
elif [[ ${input:((${#input}-1)):1} = "K" ]]; then
    ((res=${input:0:((${#input}-1))}-273))
     echo $res"C"
fi
