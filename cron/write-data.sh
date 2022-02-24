#!/bin/bash
# Bash that simulates write logs to a file
# This example is to simulate for example an apache server writting logs
DEST=${1?Missing Path variable}

                            # stderr --> stdou --> /dev/null
ls ${DEST} > /dev/null 2>&1 # Manda stderr hacia stdout y todo eso hacia /dev/null
if [ $? -eq 0 ]; then #valida que el comando anterior (ls) haya terminado con exito o no

  while [ true ]; do
    echo "Esto es un log.." >> ${DEST}/dummy-$( date +%F).log
    sleep 1
  done
#  echo "while..."
else
  echo "PATH no valido"
fi
