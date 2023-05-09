## Shell Script for Simplifying Database Restore from Backup File

This is a shell script that simplifies the process of restoring a PostgreSQL database from a backup file. The script expects the backup file to be located in the `~/Downloads/` directory.

### Usage

1. Save the script to a file with a `.sh` extension.
2. Open a terminal and navigate to the directory where the script is saved.
3. Make the script executable using the command `chmod +x scriptname.sh`.
4. Run the script using the command `./scriptname.sh`.
5. The script will prompt you to confirm whether to drop and recreate the database or use the default database name.
6. If you choose to drop and recreate the database, the script will prompt you to confirm whether to use the default database name or enter a new name.
7. The script will drop and recreate the database using the chosen or default database name.
8. The script will prompt you to enter the backup file name or use the default file name.
9. The script will restore the database using the chosen or default backup file name.
10. Once the restore process is complete, the script will print a message indicating that the process is complete.

Note: The script expects the backup file to be located in the `~/Downloads/` directory. If the backup file is not located in that directory, the script will fail to restore the database.

### Customization

You can customize the script by changing the default file name and database name. To do this, edit the following lines in the script:

```
defaultFileName="your_file_name_$today.backup"
defaultDatabase="your_database_name"
```

Replace `your_file_name` with the name of your backup file and `your_database_name` with the name of your database.
