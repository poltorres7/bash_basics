#!/bin/bash

NUM1=$1
NUM2=$2

if [ $(echo "$NUM1==$NUM2" | bc) -eq 1 ]; then
	echo "num1: $NUM1  es igual a num2: $NUM2"
elif [ $(echo "$NUM1<$NUM2" | bc) -eq 1 ]; then
	echo "num2: $NUM2 es mayor"
elif [ $(echo "$NUM1>$NUM2" | bc) -eq 1 ]; then
	echo "num1: $NUM1 es mayor"
fi
