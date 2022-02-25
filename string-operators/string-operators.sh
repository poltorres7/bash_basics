#!/bin/bash


VALIDATION=${1+1}




echo "VALIDATION= $VALIDATION"
GENERIC_PASSWD=${1?ERROR: Password no encontrada}


RESET_PASSWD=${2+false}

if [ ${RESET_PASSSWD} ]; then
  echo "QUIERO RESETEAR MI PASSWD"
else
  echo "NO QUIERO CAMBIAR MI PASSWD"
fi


if [ -z $GENERIC_PASSWD ]; then
  echo "doing unset..."
  unset $GENERIC_PASSWD
fi

echo "Ingresa un password: "
read VAR
echo ${#VAR}

if [ ${#VAR} -lt 8 ]; then
  echo "Password menor a 8 caracteres"
else
  echo "password bien: $VAR"
fi


#MI_FILE=${1-defaultDIR}
#mkdir -p ${MI_FILE}


MY_PASSWD=${GENERIC_PASSWD=defaultpasswd}

echo ${MY_PASSWD}
