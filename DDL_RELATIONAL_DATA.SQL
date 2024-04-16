create database if not exists manipulation;
use manipulation

CREATE TABLE  bankAccountn (
     Id_count INT auto_increment primary key,
    ag_num INT NOT NULL,
    ac_num INT NOT NULL,
    Saldo FLOAT,
    constraint indentification_account_constraint UNIQUE (ag_num, ac_num)
);

alter table bankAccountn add LimiteCredito FLOAT not null default 500.000;
alter table bankAccountn add email varchar (60);
alter table bankAccountn drop email;

insert into bankAccountn (ag_num, ac_num, saldo)values (156,2588477,0)
--drop table bankAccountn 
desc bankAccountn;


CREATE TABLE bankCliente(
   id_cliente int auto_increment,
   ClienteAccount INT,
   CPF varchar(11) NOT NULL,
   RG varchar(9) NOT NULL,
   Nome varchar (50) NOT NULL,
   Endereço varchar(100) NOT NULL,
   Renda_mensal FLOAT,
   PRIMARY KEY(id_cliente, ClienteAccount),
   constraint fk_account_client foreign key (ClienteAccount) references bankAccounts(ID_accounts)
on update cascade
);

alter table bankCliente add UFF char (2)not null;
update bankCliente set Endereço='RJ';

insert into, bankCliente(ClienteAccount, CPF, RG, Nome, Endereço, Renda_mensal) values(1, 0912578450, 7248595,fulano de tal, rua das flores, 500000);

CREATE TABLE bankTransactions(
   ID_transaction int auto_increment primary key,
   Ocorrencia datetime,
   Status_transaction Varchar(20),
   Valor_transferido FLOAT,
   Source_account int,
   Destination_account int,
   constraint fk_source_transaction foreign key (Source_accounts) references
   bankAccounts(id_Account),
   constraint fk_destination_transaction foreign key(destination_account) references
   bankAccounts(id_Account)
   );
   
   

   