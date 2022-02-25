#!/bin/bash


echo "Soy un programa"
echo "Ingresa tu numero 1: "
read NUM1
echo "Ingresa tu numero 2: "
read NUM2

echo "Variable NUM1 tiene: ${NUM1}"
echo "                   +"
echo "Variable NUM2 tiene: ${NUM2}"
echo "                 -------------- "

echo "${NUM1}+${NUM2}" | bc 
