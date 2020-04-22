#!/bin/bash

for filename in $(ls)
do  
    if [ "$filename" != "setup.sh" ]
    then
        cp "$filename" ~/."$filename"
        echo $filename
    fi
done

source ~/.bash_profile
