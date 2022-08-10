#!/bin/bash

# SI ENCUENTRA 4 O MAS ERRORES EN LAS ULTIMAS 500 LINEAS DEL FICHERO SE REINICIARA EL SERVICIO
FILE=$(tail -500 /file | grep -i 'error' | wc -l)
if [ $FILE -gt 4 ] ; then
    /usr/bin/comando restart
    else
    echo "Servicio Normal"
fi
