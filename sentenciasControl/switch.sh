#!/bin/bash
#Control de flujo: case
echo "Adivina mi edad"
read edad
case $edad in
  27)
    echo "¡Correcto!"
  ;;
  *)
    echo "¡Incorrecto!"
  ;;
esac
