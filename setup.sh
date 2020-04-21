#!/bin/bash

for filename in $(ls -a)
do  
    if [ "$filename" != "setup.sh" ]
    then
        ln -s $filename ~/$filename
        echo $filename
    fi
done
