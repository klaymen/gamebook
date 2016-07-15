# gamebook

A simple PHP gamebook application

## setup
- Upload all the files to the target server 
- <optional> Create a database with utf8_general_ci collation
- Edit mysql host, credentials and database in ```config.php```
- Run chapters.sql to initialize the ```chapters``` table
- Go to an example adventure on your brand new gamebook installation

## add new chapters to your adventure
- Use an administration tool of MySQL to edit the corresponding table (e.g. phpMyAdmin). Sorry pals, no admin GUI yet.
- Add a unique name (this will be the reference of the given chapter)
- Write a chapter
- Add forward options in the format: ```Text|target_name;Text2|target_name2;```
- Add the image's filename from the defined image folder
- Adventure!

## confirmed minimum requirements
- PHP 5.6.16
- MySQL 2.4.17
