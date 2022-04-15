# ---------------------------------------------------------------------------------#
# "THE BEER-WARE LICENSE":                                                         #
# <jonas.h.ferreira@me.com> wrote this file. As long as you retain this notice you #
# can do whatever you want with this stuff. If we meet some day, and you think     #
# this stuff is worth it, you can buy me a beer in return.                         #
# ---------------------------------------------------------------------------------#

if [ "$1" == "-h" ] ; then
    echo "This script generates 10 numbers from 1 to 10 in a random order." 
    exit 0
elif [ "$1" != "" ]; then
    echo "Use -h for help!"
    exit 0	
fi

#test if shuf command exists
command -v shuf >/dev/null

if (test $? -ne 0)
then

#if command doesn´t exists, try to install with yum or apt-get

        if [ -n "$(which yum)" ]
        then
                sudo yum install coreutils
        elif [ -n "$(which apt-get)" ]
        then
                sudo apt-get install coreutils
        fi

else
        #command shuf with parameters that randomizes from 1 to 10, 10 times.
        echo "Generating Random Numbers:"
        shuf -i 1-10 -n 10
fi

