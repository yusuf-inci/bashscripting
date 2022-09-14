#!/bin/bash
if [ $# -eq 0 ]; then
    echo "you can append .gz onto the command line argumnet directly"
else
    tar -czvf $1.gz $1
fi
