#!/bin/bash
X=$( cat test_grub.conf | grep 'default=*' | awk -F"=" '{print $2}' )
Y=0
if [ "$X" -eq "$Y" ]
  then
      echo " The default is already set to 0, nothing to do "
  else
      echo " The default should be set to 0, please wait..."
      echo " You are allset... "
      sleep 5

      sed -i  '10s/.*/default=0/' test_grub.conf
fi

