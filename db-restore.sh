# Shell Script for simplifying database restore from backup file
#!/bin/bash

today=$(date +%Y-%m-%d)
defaultFileName="your_file_name_$today.backup"
defaultDatabase="your_database_name"

read -e -p "Drop/Create Database (Defalut: $defaultDatabase): " database
database="${database:-$defaultDatabase}"

psql -U postgres -c "DROP DATABASE $database;"
echo ====================================

psql -U postgres -c "CREATE DATABASE $database;"
echo ====================================

read -e -p "Database Backup File Name (Defalut: $defaultFileName): " file
file="${file:-$defaultFileName}"

pg_restore -U postgres -d $database ~/Downloads/"$file"
echo ====================================

echo RESTORE COMPLETE
