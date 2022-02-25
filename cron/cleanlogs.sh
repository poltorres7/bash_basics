#!/bin/bash

DEST=${1?Missing Path variable}

                            # stderr --> stdou --> /dev/null
ls ${DEST} > /dev/null 2>&1 # Manda stderr hacia stdout y todo eso hacia /dev/null
if [ $? -eq 0 ]; then #valida que el comando anterior (ls) haya terminado con exito o no

  # revisa tamaño de un archivo
  TAM=$(du -h ${DEST}/dummy-$(date +%F).log | cut -f 1 | grep -o '[[:digit:]]*')

  if [ $TAM -gt 10 ]; then
    echo "" > ${DEST}/dummy-$(date +%F).log
    echo "Logs limpios"
  fi
fi

