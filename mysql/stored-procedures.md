## 0 in params, n out params
* Create store procedure
```
delimiter //
create procedure find_all_employees()
begin
	select e.empno, e.ename, e.job, e.sal, e.comm, e.mgr,e.hiredate, d.deptno, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno;
end //
delimiter ;
```
* call store procedure
```
call find_all_employees;
```
* drop stored procedure
```
drop procedure find_all_employees;
```

## 1 in param and n out params
* create stored procedure
```
delimiter //
create procedure find_employee_by_dept_id(in dept_id_in int)
begin
	select e.empno, e.ename, e.job, e.sal, e.comm, e.mgr,e.hiredate, d.deptno, d.dname, d.loc 
		from emp e join dept d 
        on e.deptno = d.deptno
        where d.deptno = dept_id_in
    ;
end //
delimiter ;
```
* drop stored procedure
```
drop procedure find_employee_by_dept_id;
```
* call stored procedure
```
call find_employee_by_dept_id(10);
call find_employee_by_dept_id(20);
call find_employee_by_dept_id(30);
call find_employee_by_dept_id(40);
```

## stored procedure return result from multiple selects
* create stored procedure
```
delimiter //
create procedure find_employees_and_depts()
begin
	select * from emp;
    
    select * from dept;
end //
delimiter ;
```
* drop stored procedure
```
drop procedure find_employees_and_depts;
```
* call stored procedure
```
call find_employees_and_depts;
```

## Drop
```
DROP PROCEDURE [procedure-name];
DROP PROCEDURE sp_find_person
```