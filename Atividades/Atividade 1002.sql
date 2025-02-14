create database banco;
use banco;

create table contas(
	id INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(100),
    saldo DECIMAL(10,2),
    dataNas date

);
insert into contas values (1,"Arthur","Rodrigues", 1020.90, "2003-06-16");
insert into contas values (2,"Wildiane","Lucas", 76920.90, "2004-05-24");
insert into contas values (3,"Celeste","Rodrigues", 0.00, "2024-04-01");

select * from contas;
