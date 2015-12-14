#!/bin/sh
ps -ef | grep -v "grep" | grep "$1" > /dev/null 2>&1
if [ "$?" = "1" ];then
    /bin/sh -c $1
else
    exit 1
fi
