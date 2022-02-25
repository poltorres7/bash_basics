#!/bin/bash

NUM1=$1
NUM2=$2

if (( $NUM1 == $NUM2 )); then
  echo "$NUM1 es igual que $NUM2"
elif (( $NUM1 > $NUM2 )); then
  echo "$NUM1 es mayor que $NUM2"
else
  echo "$NUM2 es mayor que $NUM1"
fi

