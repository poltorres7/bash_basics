#!/bin/bash

NUM1=${1?Falta param 1}
NUM2=${2?Falta param 2}
OPERACION=${3:-suma}

comparativa(){
  if [ $(echo "$NUM1==$NUM2" | bc) -eq 1 ]; then
	echo "num1: $NUM1  es igual a num2: $NUM2"
  elif [ $(echo "$NUM1<$NUM2" | bc) -eq 1 ]; then
	echo "num2: $NUM2 es mayor"
  elif [ $(echo "$NUM1>$NUM2" | bc) -eq 1 ]; then
	echo "num1: $NUM1 es mayor"
  fi
}

suma(){
  local NUM1=$1
  local NUM2=$2
  local RESULTADO=$(echo "$NUM1+$NUM2"| bc)
  echo $RESULTADO
}

resta(){
  local RESULTADO=$(echo "$1-$2"| bc)
  echo $RESULTADO
}

mul(){
  echo $(echo "$1*$2"| bc)
}

div(){
  echo $(echo "$1/$2"| bc)
}


case $OPERACION in
	suma)
		echo "Suma: $(suma $NUM1 $NUM2)"
	;;
	resta)
		echo "Resta: $(resta $NUM1 $NUM2)"
	;;
	mul)
		echo "Mul: $(mul $NUM1 $NUM2)"
	;;
	div)
		echo "Div: $(div $NUM1 $NUM2)"
	;;
	*)
		echo "No recibimos operacion"
	;;
esac
