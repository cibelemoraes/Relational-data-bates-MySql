-- CASE STATEMENT

show tables;

update employee set Salary = 
       case 
           when Dno=5 then Salary+ 2000
           when Dno=4 then Salary+ 1500
           when Dno=1 then Salary+ 3000
           else Salary + 0
        end;
        
select Fname, Salary, Dno from employee

--  other example

select nome
    case
        when Salary < 2000 then 'baixo salario'
        when Salary >= 2000 and Salary < 50000 then 'Salário Médio'
        Else 'Alto Salario'
    end as categoria_salario

From
  Employee;