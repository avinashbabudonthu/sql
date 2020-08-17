## Date queries
* Change the time zone
```
set global time_zone = \"+05:30\"; set time_zone = \"+05:30\"; set @@session.time_zone = \"+05:30\";
```

## Select queries
* select all records in table
```
select * from table_name;
```
* Concatenate 2 varchar
```
select concat(first_name, \"-\", last_name) as name from student;
```
* Current Date
```
SELECT CURDATE()
```
* Current Date Time
```
SELECT SYSDATE()
```