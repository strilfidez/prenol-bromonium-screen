#!/bin/bash


while read -r line
do
    i=$line
    echo $i > temp.txt
    testrt < temp.txt
    if [ $? -eq 0 ]; then
        echo $i STATUS Success!
    else
        echo $i STATUS FAILED
    fi
done < theory.txt


