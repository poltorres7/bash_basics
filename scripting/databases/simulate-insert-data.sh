#!/bin/bash
# This script simulates write behavior on the DB

HOST=<add the IP/URL to your host>
DB_USER=<Add your user to connect to the DB>
echo $HOST
echo $DB_USER
echo "Starting write behavior"


for i in $(seq 1 2500); do
  echo "i: $i" >> insert.log
  mysql -h $HOST -u $DB_USER -p<CHANGE_PASSWORD> -e "INSERT INTO People.Persons(LastName, FirstName, PersonID) values ('Torres', 'Paul', $i);" >> mysql.log 2>&1
  sleep 1;
#  if [ $i -eq 5 ]; then
#    break;
#  fi
done

echo "End of script"
