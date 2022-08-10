#!/bin/bash

FILE=$(tail -500 /file | grep -i 'error' | wc -l)
if [ $FILE -gt 4 ] ; then
    /usr/bin/comando restart
    else
    echo "Servicio Normal"
fi
