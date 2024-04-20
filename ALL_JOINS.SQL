-- JOIN COM MAIS DE 3 TABELAS



desc works_on
--PROJECT, WORKS_ON E EMPLOYEE


select concat(Fname'', Lname) as complete_name, Dno as DeprNumber , Pname as ProjetcName, 
       Pno as ProjectNumber, Plocation as Location from employee
     INNER JOIN works_on on Ssn = Essn
     INNER JOIN PROJECT ON Pno = Pnumber
     where Plocation LIKE 'Product%%'
     order by Pnumber;


-- DEPARTAMENT, DEPT_LOCATION, EMPLOYEE
select Dnumber, Dname, concat(Fname'', Lname), as Manager, Salary, round(Salary*0,5,2) as Bonus FROM DEPARTAMENT
         INNER JOIN DEPT_LOCATION using(Dnumber)
         INNER JOIN (dependent inner join employee on Ssn = Ssn) EMPLOYEE ON Ssn = Mgr_ssn
         group by Dnumber
         having count(*)>1;


-- DEPARTAMENT, PROJECT, EMPLOYEE

select Dnumber, Dname, concat(Fname'', Lname), as Manager, Salary, round(Salary*0,5,2) as Bonus FROM DEPARTAMENT
         INNER JOIN Project using(Pname)
         INNER JOIN  EMPLOYEE ON Ssn = Mgr_ssn
         group by Pname
         having count(*)>1;