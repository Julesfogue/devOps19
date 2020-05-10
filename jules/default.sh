#!/bin/bash


#DESCRIPTION: this script is to check if in the grub.conf the default is set to 0
# AUTHOR: Jules
#DATE : 11-14-2016

def=`cat /etc/grub.conf |head -10 | tail -1 |awk -F"=" '{print $2 }'`

if [ $def -eq 0 ] 

then 
 echo " The default is already set to 0 nothing to do "

else 

sed -i '10s/.*/default=0/' /etc/grub.conf

fi

