#!/bin/bash

echo "Soy un programa"
echo "Ingresa tu suma (1):"

read NUM1

echo "Ingresa tu suma (1):"

read NUM2
echo "tu suma es:"

echo "${NUM1}+${NUM2}" | bc
