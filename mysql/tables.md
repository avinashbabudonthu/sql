### Create
* Simple create table
```
create table emp
(
	id varchar(50),
	name varchar(50)
);
```
* Table with primary key
```
create table emp
(
	id varchar(50),
	name varchar(50),
	primary key(id)
);
```
* Table with primary key auto increment
```
create table emp
(
	id bigint auto_increment,
	name varchar(50),
	primary key(id)
);
```
* Table with date column
```
create table student
(
	id bigint auto_increment,
	name varchar(50),
	course varchar(50),
	joining_date datetime,
	primary key(id)
);
```
* Table with datetime column
```
create table student
(
	id bigint auto_increment,
	name varchar(50),
	course varchar(50),
	joining_date datetime,
	primary key(id)
);
```

### Drop
* Drop table
```
drop table dept;
```
```
drop table emp;
```
```
drop table salgrade;
```

* Drop table if exists
```
drop table if exists table_name;
```

### Others
* See tables in a schema
```
show tables;
```

### Alter
* Add column to table
```
alter table [table-name] add column [column-name] [data-type];

alter table emp add column designation varchar(200);
```
* Add foreign constraint to column with on delete cascade
```
alter table [fk-table-name] add foreign key([fk-column-name]) references [pk-table-name]([pk-column-name]) on delete cascade;

alter table emp add foreign key(dept_no_fk) references dept(dept_no_pk) on delete cascade
```
* Add foreign constraint to column with on delete set null
```
alter table [fk-table-name] add foreign key([fk-column-name]) references [pk-table-name]([pk-column-name]) on delete set null;

alter table emp add foreign key(dept_no_fk) references dept(dept_no_pk) on delete set null
```
