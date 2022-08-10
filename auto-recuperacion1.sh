#!/bin/bash
# ESTE SCRIPT ENCUENTRA UNA PALABRA CLAVE EN ESPECIFICO "DE ERROR" Y REINICIA EL SERVICIO
FILE=$(docker logs -n 100 container)
SEARCH="Caused by: java.sql.SQLTransientConnectionException: HikariPool-1 - Connection is not available, request timed out after 30000ms."
if echo $FILE | grep -q "$SEARCH" ; then
    docker restart container
    exit 1
fi
