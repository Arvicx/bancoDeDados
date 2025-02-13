create database vendas;
use vendas;

create table vendas(
	id_venda INT PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
    id_produto INT UNIQUE NOT NULL,
    quantidade INT(100),
    preco_unitario DECIMAL(10,2),
    id_categoria INT NOT NULL
);

insert into vendas values(1,1,10,10.99,1);
insert into vendas values(2,2,5,120.99,1);
insert into vendas values(3,3,20,190.99,1);
insert into vendas values(4,4,3,111.99,1);

