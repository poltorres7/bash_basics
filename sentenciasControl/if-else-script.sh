#!/bin/bash

NUM1=$1
NUM2=$2

if [ $NUM1 -eq $NUM2 ]; then
	echo "n1: $NUM1  es igual a n2: $NUM2"
elif [ $NUM1 -gt  $NUM2 ]; then
	echo "n1: $NUM1 es mayor"
else
	echo "n2: $NUM2 es mayor"
fi
