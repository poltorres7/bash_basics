#!/bin/bash


echo $@
PARAM1=$2
PARAM2=$3
PARAM3=$4

echo "  P1: $PARAM1 - P2: $PARAM2 - P3: $PARAM3"

funcion1(){
echo $@
echo "Esto es la funcion 1"
echo "  P1: $1 - P2: $2 - P3: $3"
}

funcion2(){
echo $@
echo "Esto es la funcion 2"
echo "  P1: $1 - P2: $2 - P3: $3"
}


case $1 in
  f1)
#    funcion1 $2 $3 $4
    funcion1 $PARAM1 $PARAM2 $PARAM3
  ;;
  f2)
    funcion2 esto es diferente 
  ;;
  *)
#    echo "Aqui ponemos un helper"
    funcion1 $PARAM1 $PARAM2 $PARAM3
    funcion2 esto es diferente 
  ;;
esac




