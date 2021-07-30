#!/bin/bash
echo $@

NUM1=${1?No ingresaste el numero 1}
NUM2=${2?NO ingresaste el numero 2}

NOMBRE=$3
VALIDA_NOMBRE=${3:+1}
VALIDA=${VALIDA_NOMBRE:=0}


if [ $VALIDA -eq 1 ]; then
	echo "Hola $NOMBRE el resultado de tu operacion es: "
fi

if [ $(echo "$NUM1>$NUM2" | bc) -eq 1 ]; then
	echo "$NUM1 es mayor que $NUM2"
elif [ $(echo "$NUM1==$NUM2" | bc) -eq 1 ]; then
	echo "$NUM1 es igual a $NUM2"
else
	echo "$NUM2 es mayor que $NUM1"

fi


