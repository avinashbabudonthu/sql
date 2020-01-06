use practice;

select * from emp;
select * from dept;
select * from salgrade;
select count(*) from emp;
select count(*) from dept;
select count(*) from salgrade;
select * from emp e join dept d on e.deptno = d.deptno;
