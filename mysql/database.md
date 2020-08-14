### Create Database
* Query
```
create database if not exists database-name;
```
* Example
```
create database if not exists practice;
```

### Drop Database
* Query
```
drop database database-name;
```

### See all databases
* Query
```
show databases;
```

### Use database
* Query
```
use database_name
```

-- create db and user

create user 'practice_admin'@'localhost' identified by 'practice_admin'; 
grant all on practice.* to 'practice_admin'@'localhost';