create database teste_proc;
use teste_proc;

create table user(
     id int auto_increment primary Key,
     nome varchar(20) not null unique,
     email varchar(30) not null,
     senha varchar(10) not null,
     data_cadastro datetime
);
desc user;


delimiter \\
create procedure procedure_insert( 
     in nome_p varchar(20) ,
     in email_p varchar(30),
     in senha_p varchar(10) 
   )  
begin
  if(length(senha_p) < 10 and length(senha_p) > 7 then
     insert into user (nome , email, senha , data_cadastro) values(nome_p , email_p, md5(senha_p), now());
     select* from user;
  else
     select  'Forneça outra senha' as Message_error;
  end if;
end\\
delimiter $$

call procedure_insert('Juliana', 'Juliana@gmail.com', '34534543654355');

select md5('1234345435') as senha;