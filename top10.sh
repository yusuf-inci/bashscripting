#!/bin/bash
dir=$1
if [ "$2" = "-a" ]; then
    sudo du -hax /$dir/* | sort -rh | head -10
else
    sudo du -hsx /$dir/* | sort -rh | head -10
fi
