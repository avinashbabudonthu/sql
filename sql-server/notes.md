# Create DB
* Ceate database
```
create database db1;
```
* Drop database
```
drop database db1;
```
* Backup database
```
backup database db1 to disk = 'filePath';
backup database db1 to disk = 'D:\backups\testDB.bak';
```
* Backup database with differential. A differential back up only backs up the parts of the database that have changed since the last full database backup.
```
backup database db1 to disk = 'filePath' with differential;
backup database db1 to disk = 'D:\backups\testDB.bak' with differential;
```

# Create table
```
create table person(
	id int,
	name varchar(50),
	address varchar(100)
);
```

# Drop table
```
drop table table_name;
drop table person;
```

# Truncate table
```
truncate table table_name;
truncate table person;
```

# Insert
```
insert into person (id, name, address) values (3, 'jim', 'US');
```

# Insert into new table by select on another table
```
create table person2(
	id int,
	name varchar(50),
	address varchar(100)
);

insert into person2 (id, name, address) select id, name, address from person;
```

# Select
* Select all records
```
select * from person;
```