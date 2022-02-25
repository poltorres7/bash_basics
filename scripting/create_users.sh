#!/bin/bash

# This is a program to add users to N servers
# How to executre
# requirements

# debemos crear un programa que cree 5 usuarios en N servers
# Estos usuarios deben pertenecer al grupo auditores
# deben terner solo permiso de read dentro de la ruta /var/log

NEW_USERS=$@ #('jose' 'maria' 'lius' 'manuel' 'santiago');

#echo "${NEW_USERS[1]}"
#echo "${NEW_USERS[@]}"
#echo "${#NEW_USERS[@]}"
#echo "${!NEW_USERS[@]}"
#echo "${NEW_USERS[@]:3:5}"

REPORT_FILE="new_users$(date +%F-%T).txt"
MY_GROUP="auditores"

groupadd $MY_GROUP

echo "USERS     PASSWORD" > ${REPORT_FILE}
for NEW_USER in ${NEW_USERS[@]}
do
  echo $NEW_USER
  useradd $NEW_USER -G $MY_GROUP
  USER_PASSWORD=$(openssl rand -base64 32 | head -c 8)
  echo "${USER_PASSWORD}" | passwd $NEW_USER --stdin 
  echo "$NEW_USER       $USER_PASSWORD" >> ${REPORT_FILE}
done

#chmod



