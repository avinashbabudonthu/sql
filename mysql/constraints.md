# MySQL Constraints

## Not Null constraint
* The `NOT NULL` constraint is a column constraint that ensures values stored in a column are not `NULL`
```
column_name data_type NOT NULL;
```
* A column may contain only one NOT NULL constraint which specifies a rule that the column must not contain any NULL value. In other words, if you update or insert NULL into a NOT NULL column, MySQL will issue an error. The following `CREATE TABLE` statement creates the emp table
```
CREATE TABLE emp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE
);
```
* In the tasks table, we explicitly define the title and start_date columns with NOT NULL constraints. The id column has the PRIMARY KEY constraint, therefore, it implicitly includes a NOT NULL constraint.
* The end_date column can have NULL values, assuming that when you create a new task, you may not know when the task can be completed.
* It’s a good practice to have the NOT NULL constraint in every column of a table unless you have a good reason not to do so.
* Generally, the NULL value makes your queries more complicated because you have to use functions such as ISNULL(), IFNULL(), and NULLIF() for handling NULL

### Not Null constraint to existing column
* Follow below steps
	* Check the current values of the column if there is any NULL
	* Update the NULL to non-NULL if NULLs exist
	* Modify the column with a NOT NULL constraint
```
ALTER TABLE table_name CHANGE old_column_name new_column_name column_definition;

ALTER TABLE emp CHANGE end_date end_date DATE NOT NULL;
```

### Drop Not Null constraint
* Use `Alter Table.. modify` statement
```
ALTER TABLE table_name MODIFY column_name column_definition;
```
* Column definition (column_definition) must restate the original column definition without the NOT NULLconstraint
* Following statement removes the NOT NULL constraint from the end_date column in the emp table
```
ALTER TABLE tasks MODIFY end_date end_date DATE NOT NULL;
```

## Composite primary key
* Using `alter`
* Create table
```
create table t_student
(
	id int,
	name varchar(100),
	age int
);
```
* Add composite primary key
```
ALTER table t_student add primary key(id, name);
```