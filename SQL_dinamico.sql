 show databases;
use teste;
show tables;
-- primeiro exemplo de função
create function first_function (num decimal(10.2), numb int)
returns int
return num * numb;

select first_function(10.2, 2);


-- primeiro exemplo procedure

use company_constraints;
select * from employee;
select *from departament;

delimiter \\
create procedure procedure_test()
begin
     -- procedimento
     -- instrução sql;
end\\

delimiter $$
create procedure info_employee()
begin
    select * from employee inner join department on Ssn = Mgr_ssn;
end $$
delimiter ; 
-- chamando o procedimento

call info_employee;

-- 'John', 'B', 'Smith', '1234584654', '1965-01-09', '731-Fondren- Houston-TX', 'M', '32000.000', NULL, '5'

delimiter %
create procedure insert_into_employee_proc(
	in Fname_p varchar(15),
	in Minit char(1), 
    in Lname_p varchar(15), 
    in Ssn_p char(9), 
    in Bdate_p date, 
    in Address_p varchar(30), 
    in Sex_p char(1), 
    in Salary_p decimal(10,2), 
    in Super_Ssn_p char(9), 
    in Dno_p int
    )
begin
     insert into employee (Fname , Minit, Lname, Ssn, Bdate, Address, Sex , Salary , Super_Ssn, Dno) 
    -- values ('Maria', 'B', 'Ali', '1234584654', '1968-01-29', '731-Fondren- Houston-TX', 'f', '32000.000', NULL, '5');
      values (Fname_p , Minit_p, Lname_p, Ssn_p, Bdate_p, Address_p, Sex_p , Salary_p , Super_Ssn_p, Dno_p);
      
      -- retorna o registro que foi persistido no procedure
      select * from employee where Ssn = Ssn_p
      -- select 'Inserção bem sucedida' as Message;
end%
delimiter ;

desc employee;

call insert_into_employee_proc(
	'claudio', 'G', 'george', '1234584654', '1980-11-29', '731-Fondren- Houston-TX', 'm', '32000.000', NULL, '4');

select * from employee;













