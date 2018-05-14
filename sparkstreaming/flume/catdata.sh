#!/bin/sh

ITER=1
FILE=${PWD}/words.dat
LINES=$(wc -l ${FILE} | awk -F' ' '{print $1}')

while true
do
    sed -n ${ITER}p ${FILE}
    if [ $((ITER % 5)) -eq 0 ]; then
        sleep 1
    fi
    ITER=$(((ITER % LINES)+1))
done
