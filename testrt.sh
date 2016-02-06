#!/bin/bash

theory="b3lyp
m062x"

for i in $theory; do
    echo $i > temp.txt
    testrt < temp.txt
    if [ $? -eq 0 ]; then
        echo $i Success!
    else
        echo $i FAILED
    fi
done
