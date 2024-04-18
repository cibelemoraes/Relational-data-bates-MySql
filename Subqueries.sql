  --subqueries

use company_constraints;

select distinct Pnumber from projects
   where Pnumber in
   (select Pnumber
   from project, departament, employee
   where    Mgr__ssn = Ssn and Lname = 'Smith' ans Dnum = Dnumber
   )
   or
   (select distinct Pno
   from works_on, employee
   where{Essn=Ssn ans Lane='Walace'}
   )

    --segundo exemplo

select distinct * from works_on
    where (Pno,Hours) in (select Pno, Hours
                         from works_on
                         where Ess=12344455);

    --Clausulas com exists e unique
    --Quais employees possuem dependentes

select e.Fname, e.Lname 
from employee as where exists
 (select* from dependentes as d
 where e.Ssn = d.Essn and Relationship ='Daughter');

    --Quais employees NÃO possuem dependentes

select e.Fname, e.Lname 
from employee as where not exists
 (select* from dependentes as d
 where e.Ssn = d.Essn );


