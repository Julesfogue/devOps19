#!/bin/bash
X=$( find / -type f -name grub.conf | head -1 )
Y=$( cat $X | grep 'default=*' | awk -F"=" '{print $2}' )
Z=0
if [ "$Y" -eq "$Z" ];
  then
      echo " Let me check the default first, please wait..."
      sleep 5
      echo " The default is already set to 0, nothing to do "
  else
      echo " The default runlevel was: $Y "
      echo " The default should be set to 0, please wait... "
      sleep 6
 sed -i  '10s/.*/default=0/' $X
      sleep 6
      echo " You are all set, thank you! "
fi
