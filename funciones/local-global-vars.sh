#!/bin/bash

GLOBAL="Esta es una var global"


fun(){
  echo "Estamos dentro de fun"
  local LOC="Var local"
  echo "LOC= $LOC"
  echo "Global= $GLOBAL"
}

echo "Estamos en el script"
echo "Global= $GLOBAL"
echo "LOC= $LOC"


fun
