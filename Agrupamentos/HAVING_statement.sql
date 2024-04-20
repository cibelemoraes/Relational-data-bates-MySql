-- GROUP BY AND HAVING

select Pnumber, Pname, count(*)
From project, works_on
where Pnumber = Pno
group by Pnumber, Pname
HAVING count(*) > 2;


select Dno, count(*)
From employee
where Salary > 40000
group by Dno
HAVING count (*)>=2;

-- exemplo com uma subquery
 select Dno as Department, count(*) as Number_of_employees from employee
  where Salary>2000
     and Dno in (select Dno from employee)
     group by Dno
     HAVING count(*) >-2

 group by Dno;

