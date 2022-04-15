#/bin/bash

# ---------------------------------------------------------------------------------#
# "THE BEER-WARE LICENSE":                                                         #
# <jonas.h.ferreira@me.com> wrote this file. As long as you retain this notice you #
# can do whatever you want with this stuff. If we meet some day, and you think     #
# this stuff is worth it, you can buy me a beer in return.                         #
# ---------------------------------------------------------------------------------#
#

#Generates 50 numbers and saves it into an array
for i in $(seq 1 50); 
do
RNDNUM[$i]=$(echo $(($RANDOM% 10+1)))
done

#TR converts spaces into lines
#AWK searches only for uniq lines
#TR reconverts again lines into spaces to save to a new array called UNIQNUM
UNIQNUM=($(tr ' ' '\n' <<<"${RNDNUM[@]}" | awk '!u[$0]++' | tr '\n' ' '))

#Shows UNIQNUM array, containing numbers from 1 to 10 in random order
echo ${UNIQNUM[*]}









