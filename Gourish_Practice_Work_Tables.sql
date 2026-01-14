--SQL TABLE's

--DEPTR Table

CREATE TABLE DEPT
       (DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
    DNAME VARCHAR2(14) ,
    LOC VARCHAR2(13) ) ;

INSERT INTO DEPT VALUES
    (10,'ACCOUNTING','NEW YORK');
INSERT INTO DEPT VALUES (20,'RESEARCH','DALLAS');
INSERT INTO DEPT VALUES
    (30,'SALES','CHICAGO');
INSERT INTO DEPT VALUES
    (40,'OPERATIONS','BOSTON');

select * from dept;
---------------------------------------------------------------------

--EMP Table

CREATE TABLE EMP
       (EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9),
    MGR NUMBER(4),
    HIREDATE DATE,
    SAL NUMBER(7,2),
    COMM NUMBER(7,2),
    DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES DEPT);


INSERT INTO EMP VALUES
(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO EMP VALUES
(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
INSERT INTO EMP VALUES
(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
INSERT INTO EMP VALUES
(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20);
INSERT INTO EMP VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
INSERT INTO EMP VALUES
(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30);
INSERT INTO EMP VALUES
(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10);
INSERT INTO EMP VALUES
(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,NULL,20);
INSERT INTO EMP VALUES
(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO EMP VALUES
(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
INSERT INTO EMP VALUES
(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87', 'dd-mm-rr')-51,1100,NULL,20);
INSERT INTO EMP VALUES
(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30);
INSERT INTO EMP VALUES
(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20);
INSERT INTO EMP VALUES
(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10);

select * from emp;

---------------------------------------------------------------------------------------------

--SALGRADE Table

CREATE TABLE SALGRADE
      ( GRADE NUMBER,
    LOSAL NUMBER,
    HISAL NUMBER );

INSERT INTO SALGRADE VALUES (1,700,1200);
INSERT INTO SALGRADE VALUES (2,1201,1400);
INSERT INTO SALGRADE VALUES (3,1401,2000);
INSERT INTO SALGRADE VALUES (4,2001,3000);
INSERT INTO SALGRADE VALUES (5,3001,9999);

select * from SALGRADE;

---------------------------------------------------------------------------------------------------

--Randum_Numbers Table

create table Randum_Numbers (R_num NUMBER(4));
insert INTO  Randum_Numbers values(12);
insert INTO  Randum_Numbers values(9);
insert INTO  Randum_Numbers values(-9);
insert INTO  Randum_Numbers values(10);
insert INTO  Randum_Numbers values(30);
insert INTO  Randum_Numbers values(0);
insert INTO  Randum_Numbers values(-12);
insert INTO  Randum_Numbers values(3);
insert INTO  Randum_Numbers values(15);
insert INTO  Randum_Numbers values(20);
insert INTO  Randum_Numbers values(-10);
insert INTO  Randum_Numbers values(18);
insert INTO  Randum_Numbers values(-13);
insert INTO  Randum_Numbers values(19);

select * from Randum_Numbers;

-----------------------------------------------------------------------------------------------------------

--AA Table and BB
create table AA(X number(5));
insert into AA values(1);
insert into AA values(null);
insert into AA values(2);

select * from AA;

--------------------------------------------------------------------------------------

create table BB(X number(5));
insert into BB values(1);
insert into BB values(null);
insert into BB values(null);

select * from BB;

---------------------------------------------------------------------------------------------------------------

--pk1 Table

CREATE TABLE pk1
       (EMPNO NUMBER(4)  ,
    ENAME VARCHAR2(10),
    JOB VARCHAR2(9) ,
    MGR NUMBER(4),
    HIREDATE DATE,
    SAL NUMBER(7,2),
    COMM NUMBER(7,2),
    DEPTNO NUMBER(2));

INSERT INTO pk1 VALUES
(7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,NULL,20);
INSERT INTO pk1 VALUES
(7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
INSERT INTO pk1 VALUES
(7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
INSERT INTO pk1 VALUES
(7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,NULL,20);
INSERT INTO pk1 VALUES
(7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
INSERT INTO pk1 VALUES
(7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,NULL,30);
INSERT INTO pk1 VALUES
(7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,NULL,10);
INSERT INTO pk1 VALUES
(7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,NULL,20);
INSERT INTO pk1 VALUES
(7839,'KING','PRESIDENT',NULL,to_date('17-11-1981','dd-mm-yyyy'),5000,NULL,10);
INSERT INTO pk1 VALUES
(7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
INSERT INTO pk1 VALUES
(7876,'ADAMS','CLERK',7788,to_date('13-JUL-87', 'dd-mm-rr')-51,1100,NULL,20);
INSERT INTO pk1 VALUES
(7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,NULL,30);
INSERT INTO pk1 VALUES
(7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,NULL,20);
INSERT INTO pk1 VALUES
(7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,NULL,10);

select * from pk1;

-----------------------------------------------------------------------------------------------------------

--A and B Table

create table A(X number(5));
insert into A values(1);
insert into A values(null);
insert into A values(2);
insert into A values(null);
insert into A values(0);
insert into A values(' ');
insert into A values(9);

select * from A;

--------------------------------------------------

create table B(X number(5));
insert into B values(2);
insert into B values(1);
insert into B values(null);
insert into B values(3);
insert into B values(null);
insert into B values(0);
insert into B values(8);
insert into B values(1);

select * from B;

----------------------------------------------------------------------------------------------------------

--date1 Tabble

create table date1(dob date);
insert into date1 values (to_date( '12-08-2003' ,'dd-mm-yy'));
insert into date1 values (to_date( '12-aug-2003' ,'dd-mm-yy'));

select * from date1;

-------------------------------------------------------------------------------------------------------------

--decode_demo Table

create table decode_demo(id number(5),name varchar2(10),loc varchar2(10));
insert into decode_demo values(1,'ram','bng');
insert into decode_demo values(2,'sham','hyd');

select * from decode_demo;

-----------------------------------------------------------------------------------------------------------

--numbers Table

create table numbers(nums number(1));
insert into numbers values(4);
insert into numbers values(-2);
insert into numbers values(-4);
insert into numbers values(3);
insert into numbers values(2);
insert into numbers values(5);
insert into numbers values(-6);

select * from numbers;

-------------------------------------------------------------------------------------------------------------

--setA and setB Table

create table setA(x number(2));
insert into setA values(6);
insert into setA values(3);
insert into setA values(6);
insert into setA values(1);
insert into setA values(9);
insert into setA values(1);
insert into setA values(6);
insert into setA values(null);
insert into setA values(3);
insert into setA values(null);

select * from setA;

-------------------------------------------------

create table setB(x number(2));
insert into setB values(8);
insert into setB values(0);
insert into setB values(7);
insert into setB values(3);
insert into setB values(3);
insert into setB values(null);
insert into setB values(6);
insert into setB values(8);
insert into setB values(3);
insert into setB values(7);

select * from setB;

----------------------------------------------------------------------------------------------------



