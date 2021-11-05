#!/bin/bash

for filename in $(ls)
do  
    if [ "$filename" != "setup.sh" ]
    then
        cp -r "$filename" ~/."$filename"
        echo $filename
    fi
done

source ~/.bash_profile
