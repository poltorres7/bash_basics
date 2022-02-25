#!/bin/bash

CONTADOR=$1
echo "$@"

while [ ${CONTADOR} -lt 6 ]; do
  echo "Bienvenido ${CONTADOR}"
  ((CONTADOR=CONTADOR+1))
done
