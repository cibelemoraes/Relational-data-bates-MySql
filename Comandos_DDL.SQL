
   -- RECOLHENDO O VALOR DO INSS
select Fname, Lname, Salary, Salary*0.011 from employee;
select Fname, Lname, Salary, round(Salary*0.011) as INSS from employee;

   -- EXPRESSÕES E CONCATENAÇÃO DE STRINGS
   -- RECUPERANDO INFORMAÇÕES DOS DEPARTAMENTOS PRESENTES EM STARFORD

desc dept_location;
select Dname as Department_Name, Mgr_ssn as Manager from departamente d, dept_location l, employee e 
where d.Dnumer  = l.Dnumber and Dlocation ='Stafford' and Mgr__ssn = e.Ssn ;

DESC DEPARTAMENT;
   -- RECUPERANDO TODOS OS GERNTES, DEPARTAMENTOS E SEUS NOMES
select Danme as Department_Name, concat(fname,' ', Lname) as Manager from departament d, dep_locations l, employee e
where d.Dnumber = l.Dnumber and Mgr_ssn = e.Ssn;
  
  -- LIKE E BETWEEN
  
select * from projects;

select concat(Fname, ' ', Lname) Complete_name, Dname as Departament_Name from employee departament
where (Dnu= Dnumber and Address like'%Houston%');

select concat(Fname, ' ', Lname) Complete_name, employee departament
where (Dnu= Dnumber and Address like'%Houston%');

select Fname, Lname from employee where (Salary Between 20000 and 40000);

-- OPERADORES LOGICOS

select Bdate, Address from employee where Fname='John' and Minit='B' and Lname='Smith';
select* from departament;
select* from departament where Dname = 'Research' or Dname = 'Afministration';