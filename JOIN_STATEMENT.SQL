USE companY;
-- JOIN STATEMENT
desc Employee;
desc works_on;

select* FROM Employee JOIN works_on ON Ssn = Essn; --NÃO DEFENIO O JOIN
--select * FROM Employee, works_on where Ssn = Essn; -- exemplo sem o join 


-- JOIN
select * from employee JOIN works_on;


-- JOIN ON -> INNER JOIN ON 

show tables;
desc dept_location; --Dnumber

select* FROM Employee JOIN departament ON Ssn = Essn;

select* FROM Employee JOIN works_on ON Ssn = Mgr__ssn;

select Fname, Lname, Adress
     from(employee join departament on Dno= Dnumber)
     where Dname = 'Research'

select * from dept_location; --vizualizar colunas da tabela
select * from departament;   -- vizualizar colunas da tabela

select Dname, Dept_create_date, dlocation
      from departament join dependentes using(Dnumber);
      order by Dept_create_date

-- CROSS JOIN -- produto cartesino

select * from employee cross join dependent;


