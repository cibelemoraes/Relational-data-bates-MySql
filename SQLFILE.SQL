SHOW databases;
CREATE database first_example;
use first_example;

create TABLE person(
person_id smallint unsigned,
fname varchar(20),
lname varchar(20),
gender enum('m','f'),
birth_date DATE,
Street varchar(30),
city varchar(30),
country varchar(20),
postal_code varchar(30),
constraint pk_person primary key (person_id)
);

desc person

create table favorite_food(
person_id smallint unsigned,
food varchar (20)
constraint pk_favorite_food primary key (person_id, food),
constraint fk_favorite_food_person_id foreign key (person_id)
references person(person_id)

);
desc favorite_food;
show databases;

#criando uma primeira consulta 
select * from onformation_schema.table_constrainsts
where table_name = 'person';

