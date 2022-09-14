#!/bin/bash
if [ $# -eq 0 ]; then
    echo "script requires an argument"
else
    grep -r $1 *
fi
