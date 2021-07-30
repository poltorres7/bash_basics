#!/bin/bash


#APELLIDO_DEFAULT=Juarez

NOMBRE=${1-Santi} # If patter doesn't exist assign this value
APELLIDO_PAT=${APELLIDO_DEFAULT=Hernandez} # If var is not defined put this value
APELLIDO_MAT=${3?Varibale no definida} # exit with error if var doesn't exist
CONFIRMAR_VAR=${4+1} #confirm a operator exist
SIZE=${5} #Length operator


echo $NOMBRE
echo $APELLIDO_PAT
echo $APELLIDO_MAT
echo "Variable definida: $CONFIRMAR_VAR"
echo ${#SIZE}
echo ${#NOMBRE}
echo ${#APELLIDO_PAT}
echo ${#APELLIDO_MAT}

