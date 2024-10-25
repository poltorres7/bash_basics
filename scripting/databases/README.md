Practice Excersise
======

## Objective

Create a Backup script to backup the data from an important database

### Prepare your environment

1. Spin up a container with mysql. can be docker, ec2, rds
2. execute the `db_schemas.sql` to create the database and table
3. insert dummy data with the script `simulate-insert-data.sh`
4. create an script to execute a backup of the database



### Some help

how to backup a mysql database

```bash
   $ mysqldump -u [uname] -p db_name > db_backup.sql
```

[How to backup a mysql database](https://stackoverflow.com/questions/13484667/export-mysql-dump-from-command-line)

