#!/bin/bash 

users="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

for user in $users ; do

ping $user -c 1 >/dev/null

if [ $? = 0 ] ; then
        echo "$user is alive"
else 
        echo "$user is not alive"
fi 
done
exit 0
