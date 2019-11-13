CREATE SEQUENCE DEPT_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE DEPT
(
 DEPTNO bigint
,DNAME VARCHAR(50)
,LOC VARCHAR(50)
,CONSTRAINT DEPTNO_PK PRIMARY KEY(DEPTNO)
);

CREATE SEQUENCE EMP_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE EMP
(
 EMPNO bigint
,ENAME VARCHAR(50)
,DEPTNO bigint CONSTRAINT DEPTNO_FK REFERENCES DEPT(DEPTNO) ON DELETE CASCADE
,JOB VARCHAR(50)
,SAL bigint
,COMM bigint
,MGR bigint CONSTRAINT MGR_FK REFERENCES EMP(EMPNO)
,HIREDATE DATE
,ACTIVE int
,CONSTRAINT EMPNO_PK PRIMARY KEY(EMPNO)
);

CREATE SEQUENCE SALGRADE_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE SALGRADE
(
 HISAL bigint
,LOSAL bigint
,GRADE bigint
);

-- data
INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES(10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES(20,'RESEARCH','DALLAS');
INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES(30,'SALES','CHICAGO');
INSERT INTO DEPT(DEPTNO, DNAME, LOC) VALUES(40,'OPERATIONS','BOSTON');
COMMIT;

INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7839,'KING','PRESIDENT',NULL,to_date('17-11-1981', 'dd-MM-yyyy'),5000,NULL,10);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7698,'BLAKE','MANAGER',7839,to_date('01-05-1981', 'dd-MM-yyyy'),2850,NULL,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7782,'CLARK','MANAGER',7839,to_date('09-06-1981', 'dd-MM-yyyy'),2450,NULL,10);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7566,'JONES','MANAGER',7839,to_date('02-04-1981', 'dd-MM-yyyy'),2975,NULL,20);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7654,'MARTIN','SALESMAN',7698,to_date('28-09-1981', 'dd-MM-yyyy'),1250,1400,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7499,'ALLEN','SALESMAN',7698,to_date('20-02-1981', 'dd-MM-yyyy'),1600,300,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7844,'TURNER','SALESMAN',7698,to_date('08-09-1981', 'dd-MM-yyyy'),1500,0,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7900,'JAMES','CLERK',7698,to_date('03-12-1981', 'dd-MM-yyyy'),950,NULL,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7521,'WARD','SALESMAN',7698,to_date('22-02-1981', 'dd-MM-yyyy'),1250,500,30);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7902,'FORD','ANALYST',7566,to_date('03-12-1981', 'dd-MM-yyyy'),3000,NULL,20);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7369,'SMITH','CLERK',7902,to_date('17-12-1980', 'dd-MM-yyyy'),800,NULL,20);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7788,'SCOTT','ANALYST',7566,to_date('09-12-1982', 'dd-MM-yyyy'),3000,NULL,20);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7876,'ADAMS','CLERK',7788,to_date('12-01-1983', 'dd-MM-yyyy'),1100,NULL,20);
INSERT INTO EMP (EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO) VALUES (7934,'MILLER','CLERK',7782,to_date('23-01-1982', 'dd-MM-yyyy'),1300,NULL,10);
COMMIT;

INSERT INTO SALGRADE (HISAL, LOSAL, GRADE) VALUES (1, 700, 1200);
INSERT INTO SALGRADE (HISAL, LOSAL, GRADE) VALUES (2, 1201, 1400);
INSERT INTO SALGRADE (HISAL, LOSAL, GRADE) VALUES (3, 1401, 2000);
INSERT INTO SALGRADE (HISAL, LOSAL, GRADE) VALUES (4, 2001, 3000);
INSERT INTO SALGRADE (HISAL, LOSAL, GRADE) VALUES (5, 3001, 9999);
COMMIT;

-- delete
delete from salgrade;
delete from emp;
delete from dept;
commit;

-- drop tables
drop table emp;
drop table dept;
drop table salgrade;

-- drop sequences
drop sequence dept_seq;
drop sequence emp_seq;
drop sequence salgrade_seq;

-- select queries
select * from emp;
select * from dept;
select * from salgrade;