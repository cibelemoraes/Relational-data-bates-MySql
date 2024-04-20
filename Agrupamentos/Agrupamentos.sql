-- CLÁUSULAS DE ORDENAÇÃO

use company_constraints;
select * from employee order by Fname, Lname;


-- nome do departamento, nome do gerente

select distinct d.Dname, concat(e.Fname, '', e.Lname) as Maneger, Adress 
    from departament as d, employee as e, works_on as w, project p
     where (d.Dnumber = e.Dno and e.Ssn=d.Mgr_ssn and  w.Pno = p.Pnumber)
     order by(d.Dname, e.Fname, e.Lanme);
     
-- recuperando todos os empregados e seus projetos em andamento 
select distinct  d.Dname as Department , concat(e.Fname, ' ', e.Lname) as Employee, p.Pname as Project_Name
    from departament as d, employee e, works_on w, projetc p
    where (d.Dnumber = e.Dno and e.Ssn = w.Essn and w.Pno = p.Pnumber)
    order by d.Dname desc, e.Fname asc, e.Lname asc;
    
-- funções e cláusulas de agrupamento 

select * from employee;

select count(*) from employee;


select count(*) from employee, departament;
   where Dno-Dnumber and Dname ='Research';


select Dno, count(*), round(avg(Salary),2) 
   from employee, 
   group by Dno;


select Dno, count(*) as Number_of_employees, round(avg(Salary),2) as Salary_avg
   from employee, 
   group by Dno;


select Pnumber, Pname, count(*)
   from projetc, works_on
   where Pnumber = Pno
   group by Pnumber, Pname;

select COUNT(distinct Salary) 
    FROM Employee;

select sum(Salary) as total_sal, max (Salary) as total_sal, min (Salary) as Min_sal, avg(Salary) AS AVG_SAL
    FROM Employee


-- CONTANDO INFORMAÇÃOES APARTIR DO TRABALHO ESPECIFICO PELO NOME DELES

select Pnumber, Pname, count(*)
  from project, works_on
  where Pnumber = Pno
  group by Pnumber = Pname;

show tables; 

select Pnumber, Pname, count(*) as Number_of_register, round(avg(Salary),2) as Avg_Salary
   from project, works_on, employee
   where Pnumber = Pno AND Ssn = Essn
   group by Pnumber
   order by Pnumber asc, avg(Salary) desc;