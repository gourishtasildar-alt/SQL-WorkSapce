SQL Query Practice

--Oreder of Writing SQL Query

--select
select cn1,cn2 from emTN;
select ename,sal from emp;--display the selected column from table

--Distinct
select distinct cn from TN;
select distinct job from emp;--display the unique records from the table

--from
select * from TN;
select * from emp;--display the hole table

--where
select * from TN where condiction;
select * from emp where deptno=30;--its display the condition values and that attached all cn.
select ename from emp where deptno=30;--its display the ename to condition.
select ename from emp where comm is  null;--its display the emp names who are the not null comm.
select * from emp where deptno=20 and sal>2000;--and condition is apply to both column.
select * from emp where deptno=20 or sal>2000;--or condition is apply to both column but different different.

--Group By
select job, sum(sal) from emp group by job;--its display the sum of the sal and attached same condition value.

--Having
select job,sum(sal) from emp group by job having sum(sal)>5000;--
select deptno,sum(sal) from emp where deptno!=10 group by deptno having sum(sal)>5000;

--Order By
select ename from emp order by ename desc;

--Null Function

--NVL
select comm,nvl(comm, '100') as nvl from emp;--its replace the null to '100' from comm column
select emp.*,nvl (comm,'500') as nvl from emp;--its replace the null to '500' from comm column
select MGR,nvl(MGR,'1') as no_mgr from emp;--its replace the null to '1' from comm column

--NVL2
select comm, nvl2(comm,'n','p') nvl2 from emp;--its display the not null values  as '2' ,null values as '1' from comm column
select comm,nvl2(comm,'500','2000') nvl2 from emp;

--null if
select nullif (12,12)nullif from dual ;--its display null
select nullif(12,13)nullif from dual;--its display first column value 12
select nullif (15,12,12) from dual;--its display first coulmn value 15

--coalesce
select coalesce(12,null,15) from dual;--its display the first not null value from the column 12
select coalesce(11,12,15) from dual;--its display the first not null value from the column 11
select coalesce(null,15,100) from dual;--its display the first not null value from the column 15
select coalesce(null,null,12) from dual;--its display the first not null value from the column 12

--Bckup
create table employee as select * from emp;
select * from employee;
create table backup_deptno30 as select * from emp where deptno=30;
select * from backup_deptno30;--its gets only deptno 30 emp detaile from the emp table

--Duplicate values finding

--Syntax 
select cn ,count(*)
from tn
group by cn
having count(*)>1;

--Example
select ename ,count(*)
from pk1
group by ename
having count(*)>1;--its count the numbers of



--CONVERSION FUNCTION

--To_char
select to_char(hiredate,'YYYY') from emp;
select to_char(dob ,'dd') from date1;
select to_date(dob,'dd-mom-yyyy')from date1;

--To_date
select to_date(dob,'dd-mm-yyyy')from date1;


--CHARACTER FUNTIONS

--upper
select upper ('abcd') from dual;--its convert the abcd to ABCD
select upper ('sss academy') from dual;


--lower
select lower ('ABCD') from dual;--its convert the  ABCD TO abcd
select ename, lower(ename),upper (ename), initcap (ename) from emp;
--its display lower case     --its upper case   --its first latter upper remains lowers
select lower ('SSS ACADEMY') from dual;
SELECT  ename ,lower(ename) from emp;



--initcap
select initcap('abcd') from dual;--its display the Abcd
SELECT  ename ,initcap(ename) from emp;

--replace
select replace ('ram','ram',1000) from dual;
select replace ('a','a','b') from dual;
select replace ('a','a','A') from dual;
select replace('BASAVARAJA','A','Z') from dual;--its display the BZSZVZRZJZ
select ename, replace(ename,'A','Z') from emp;--its display the ename cn and ename A replace to Z
select replace(ename,'A','Z') from emp;--its display  ename A replace to Z
select replace('Ram','Ram','Sham') from dual;--its display Ram to Sham
select replace(ename,'SMITH','z') from emp;--its display ename column in that smith to z replace
select replace(ename,'z') from emp;--its display as it is ename column

--length
select length ('strig1')from dual;--its display the no of charecter =6
select ename, length (ename)from emp;--its display the ename and its character length
select length('basavaraja') - length(replace('basavaraja','a'))a_count from dual;--it's count the 'a' pre


--String Function

--substring
select substr('SSS Academy',6,3) from dual;--cad
select substr('SSS Academy',1,3) from dual;--SSS
select substr(ename,-1) from emp;--only display first latter are only

select replace ('12345',substr('12345',-2),'****')as rp from dual;

--instring
select instr(cn,'character to be search','start position','occurrence';


SELECT SUBSTR('RAM SITA LAXMAN')
              INSTR('RAM SITA LAXMAN',' ')+1,
              INSTR('RAM SITA LAXMAN',' ',1,2)-1-INSTR('RAM SITA LAXMAN',' '))
              AS MN from dual;


--PAD
select rpad ('INDIA',11,'*')from dual;
select replace ('Ram','Ram',1000)from dual;
select rpad(lpad('INDIA','11','*'),16,'*') from dual;

--TRIM
select trim('    INDIA    ') as trim from dual;
select ltrim('    INDIA    ') as trim from dual;
select rtrim('    INDIA    ') as trim from dual;
select ltrim('////INDIA####','/') as trim from dual;
select rtrim('////INDIA####','#') as trim from dual;
select rtrim(ltrim('////INDIA####','/'),'#') as trim from dual;

--Round
select round(1235.456,1)from dual;--its display 1235.5
select round(123.876)from dual;--its display 124
select round(123.876,2)from dual;--its display 123.88

--CONCAT Operater
select concat (empno,ename) single_column from emp;
select concat (empno,sal) single_column from emp;
select  empno||' '||ename||' '||sal from emp;
select empno||'   '||ename||'   '||sal||'   '|| hiredate from emp;


--Months_between
select ( months_between(sysdate,'27-oct-2001')/12 )from dual;
select Round( months_between(sysdate,'27-oct-2001')/12 )from dual;
select emp.*, round(months_between(sysdate,hiredate)/12) as yrs_exp from emp
where round(months_between(sysdate,hiredate)) > 43 ;

--decode
select id as empno,name as ename,
decode(loc,'bng','bengaluru','hyd','hyderabad')as city
from decode_demo;

--CASE
select emp.*, case
when sal>=4001 and sal<=6000 then 'Grade A'
when sal>=3001 and sal<=4000 then 'Grade B'
when sal>=2001 and sal<=3000 then 'Grade C'
when sal>=1001 and sal<=2000 then 'Grade D'
else 'Low Sal'
end Sal_Grade
from emp;

select count(case when num>0 then num end)as Positive_no,
count(case when num<0 then num end)as Negative_no
from numbers;

select (case when num>0 then num end)as Positive_no,
(case when num<0 then num end)as Negative_no
from numbers;

select sum(case when num>0 then num end)as Positive_no,
sum(case when num<0 then num end)as Negative_no
from numbers;

--SET OPERATERS

--union
select x from setA
union
select x from setB;


--union all
select x from setA
union all
select x from setB;

--intersect
select x from setA
intersect
select x from setB;

--minus
select x from setA
minus
select x from setB;
    and
select x from setB
minus
select x from setA;


--Analytic Functions

--rank()
select emp.*, rank() over(order by sal desc) as rank from emp;
select sal, rank() over(order by sal desc) as rank from emp;
select sal, rank() over(order by sal asc) as rank from emp;
select emp.*, rank() over(order by sal desc)rank from emp;

--dense_rank()
select emp.*, dense_rank() over(order by sal desc) as dense_rank from emp;
select sal,dense_rank() over(order by sal desc) as dense_rank from emp;
select sal, dense_rank() over(order by sal asc) as dense_rank from emp;
select emp.*, dense_rank() over(order by sal desc)drank from emp;
select emp.*, dense_rank() over(partition by deptno order by sal asc)drank from emp;
select emp.*, dense_rank() over(partition by deptno order by sal desc)drank from emp;
select emp.*, dense_rank() over(partition by job order by sal desc)drank from emp;
select emp.*, dense_rank() over(partition by job order by sal asc)drank from emp;
select emp.*, dense_rank() over(partition by job order by sal )drank from emp;

--row_number
select emp.*, row_number() over(order by sal desc) as row_number from emp;
select sal, row_number() over(order by sal desc) as dense_rank from emp;
select sal, row_number() over(order by sal asc) as dense_rank from emp;

--lead
select sal,lead (sal,3)over (order by sal desc) as lead from emp;
select sal,lead (sal,3,0)over (order by sal desc) as lead from emp;
select sal,lead (sal,3)over (order by sal asc) as lead from emp;
select * from (select (lead(sal) over (order by sal asc)-sal)as lead from emp) where lead<1;

--lag
select sal,Lag (sal,1,0)over (order by sal asc)from emp;
select sal,Lag (sal,1,0)over (order by sal desc)from emp;

---------------------------------------------------------------------------------------------------
--JOINS--

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
------------------------------------------

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

--cross join 
select a.x,b.x
from A a,B b;
        or
select a.x,b.x
from A a cross join B b;

--equi
select a.x,b.x
from A a, B b
where a.x=b.x;
        or
select a.x,b.x
from A a inner join B b
on a.x=b.x;

--non equi join
select a.x,b.x
from A a,B b
where a.x!=b.x;
        or
select a.x,b.x
from A a  inner join B b
on a.x!=b.x;   

--left outer join 
select a.x,b.x
from A a left join B b
on a.x=b.x;

--right outer join 
select a.x,b.x
from A a right join B b
on a.x=b.x;

--full outer join 
select a.x,b.x
from A a full outer join B b
on a.x=b.x;

------------------------------------------------------------------------------------------------

--SUB QUERY--
select * from emp;

--max sal
select * from emp where sal in (select max(sal) from emp);
                        --OR--
select * from emp where sal  = (select max(sal) from emp);

--second highest sal

--(FIRST WAY)

select * from emp where sal in (select max(sal) from emp
where sal <(select max (sal) from emp));
 
--(SECOND WAY)
select max(sal) from emp where sal<(select max(sal) from emp);
 
--(THIRD WAY)
select max (sal) from emp where sal not in (select max(sal) from emp);

--TO FINDIND Nth HIGHEST SAL
select * from emp A where
(select count(distinct(B.sal)) from emp B where A.sal<=B.sal) in '&n';


--display the first row value
select * from emp where sal in (select max(sal) from emp
where sal <(select max (sal) from emp) and rownum=1);

--avg sal is (2073) it returns the greater than (>) avg(2073) rocords
select * from emp where sal>(select round(avg (sal))from emp);

--avg sal is (2073) it returns the less than (<) avg(2073) rocords
select * from emp where sal<(select round(avg (sal))from emp);


--Pseudo Column's

--ROWNUM--
--adds the rownum column
select rownum,emp.* from emp;

--display the first row value
select * from emp where rownum =1;
                    --OR--
select * from emp where rownum in (select min (rownum)from emp);

--display the first 5 records
select * from emp where rownum<=5;



--ROWID--
select rowid,emp.* from emp;

--display the minimum rowid records (first record)
select rowid,emp.* from emp  where rowid in (select min(rowid)from emp);

--display the maximum rowid records (last record)
select rowid,emp.* from emp  where rowid in (select max(rowid)from emp);

--CO-RELATED SUB QUERY--
select * from emp A where rowid>(select min(B.rowid) from emp B where A.sal=B.sal);


select rowid,emp.* from emp;

commit;