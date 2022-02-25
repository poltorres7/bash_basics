#!/bin/bash

#crea un archivo
copiar(){
ORIGEN=$1
DEST=$2

cp $ORIGEN $DEST
}

#mueve un archivo
mover(){
ORIGEN=$1
DEST=$2

mv $ORIGEN $DEST
}



#if [ $1 == "copiar" ]; then
#  copiar $2 $3
#elif [ $1 == "mover" ]; then
#  mover $2 $3
#fi


case $1 in
  copiar)
    copiar $2 $3
  ;;
  mover)
    mover $2 $3
  ;;
  *)
    echo "Aqui ponemos un helper"
  ;;
esac
