#!/bin/bash

echo "Params: ${@}"

echo "Ingresa tu pais: "
read PAIS_DEFAULT


NOMBRE=${1-Octavio}
PAIS_ACTUAL=${PAIS_DEFAULT:=Mexico}

echo ""
echo "Datos de usuario:"
echo "Nombre: $NOMBRE"
echo "Pais actual: $PAIS_ACTUAL"
