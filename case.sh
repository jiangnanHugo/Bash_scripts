#!/bin/bash
if [ $# -ne 0 ]; then
    case $1 in
        train) 
            echo "runing training.sh"
            python ./train.py        
        ;;
        valid) 
            echo "runing tuning.sh"
            python ./tuning.py

        ;;
        belu) 
            echo "runing belu.sh"
            python ./belu.py
        ;;
        *) 
          echo "command not found!"
        ;;
    esac
else
    echo "no parameter"
    exit
fi
