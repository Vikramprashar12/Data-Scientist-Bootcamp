use companydb;

select * from employee;

select ssn, fname, lname
from employee;

-- where clause

-- These are the operators you can use in the where clause. =, <,>,<=, >=, <> (not equal to)

select ssn, fname, lname, dno
from employee
where dno=5;
-- That was the equal to operator

select ssn, fname, lname, dno
from employee
where dno<>5;
-- That was the "not equal to" operator

select ssn, fname, salary
from employee
where salary > 30000;
-- That was the greater than operator

-- write a query to filter all the employees who earn < 30000. Columns: emp_id, emp_name, gender

select ssn, fname, lname, sex
from employee
where salary < 30000;

-- Logical Operators AND OR NOT

select ssn, fname, sex, salary, dno
from employee
where (salary > 30000) AND (dno=5);

select ssn, fname, sex, salary, dno
from employee
where (salary > 30000) OR (dno=5);

-- Advanced Query Operators

select * from department;

select dname from department
where mgr_ssn != '888665555';

select * from works_on;
-- Filter all employees from project #2 who have worked more than 5 hours. 
select essn, hours
from works_on
where (hours > 5)AND(pno='2');

select dno, sex, avg(salary), count(*)
from employee
group by dno, sex;

-- FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY










