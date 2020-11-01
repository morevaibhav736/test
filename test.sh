#!/bin/bash
#VAIBHAV
for i in $@
do
ping -c 1 $i &> /dev/null

if [ $? -ne 0 ]; then
echo "`date` $i down"| mail -s "$i host down" morevaibhav736@gmail.com

fi
done
