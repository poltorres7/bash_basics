#!/bin/bash

NUM1=$1
NUM2=$2

echo "Bienvenido $USER Soy un programa que suma. Este es tu $HOME y estas en el PATH $PWD"
echo "Variable NUM1 tiene: ${NUM1}"
echo "Variable NUM2 tiene: ${NUM2}"
echo "Calculando tu suma..."
sleep 3
echo "Su suma es: "
echo "$NUM1+$NUM2" | bc
