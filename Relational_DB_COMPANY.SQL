create schema if not exists company;

create table company.employee(
Fname varchar(15) NOT NULL,
minit char,
Lname varchar(15) NOT NULL,
Ssn CHAR(9) NOT NULL,
Birth  DATE ,
Adress varchar (40),
SEX char,
Salary decimal(10,2),
Super_ssn char (9),
Dno int NOT NULL,
primary key (Ssn)
);
use company;
create table departament(
Dname varchar(15) not null,
Dnumber int not null,
Mgr_ssn char(9),
Mgr_star_date Date,
primary key (Dnumber),
Unique (Dname),
foreign key (Mgr_ssn) references employee(Ssn)
);

create table dept_location (
Dnumber int not null,
Dlocation varchar(15) not null,
primary key (Dnumber, Dlocation),
foreign key (Dnumber) references departamente(Dnumber)
);

create table project (
Pname varchar(15) not null,
Pnumber  int not null,
Plocation varchar(15),
Dnum int not null,
primary key (Pnumber),
unique (Pnumber),
foreign key (Dnum) references department(Dnumber)
);

create table Works_on(
Essn char(9) not null,
Pno int not null,
Hours decimal(3,1) not null,
primary key (Essn, Pno),
foreign key (Essn) references employee(	Ssn),
foreign key (Pno) references project (Pnumber)
);

create table dependent(
Essn char(9) not null,
dependent_name varchar(15) not null,
Sexo enum('m','f'),
Bdate date,
Relationship varchar(8),
primary key (Essn, Dependent_name),
foreign key (Essn) references employee(Ssn)
);