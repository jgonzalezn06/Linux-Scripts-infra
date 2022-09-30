#!/bin/bash
end=$((SECONDS+3600))
while [ $SECONDS -lt $end ]; do
    nc -zvw 2 x.x.x.x xx  # ( IP PORT )
done ; echo
