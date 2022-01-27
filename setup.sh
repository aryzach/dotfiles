#!/bin/bash

# autocomplete git things (ex. git checkout <TAB>)
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


for filename in $(ls)
do  
    if [ "$filename" != "setup.sh" ]
    then
        cp -r "$filename" ~/."$filename"
        echo $filename
    fi
done

source ~/.bashrc
