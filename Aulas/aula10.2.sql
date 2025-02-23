create database goblinGummy;
use goblinGummy;

create table clientes(
nome VARCHAR(100), 
email VARCHAR(255) UNIQUE, 
telefone VARCHAR(18)
);

insert into clientes(nome, email, telefone) values ("Arthur", "arthur@email.com","(61)93949-0192");
insert into clientes(nome, email, telefone) values ("Diane", "", "");
insert into clientes(nome, email, telefone) values ("Helena", "helena@email.com", null);

alter table clientes modify column email VARCHAR(255) UNIQUE NOT NULL;
select * from clientes;

-- produto
create table produtos(
id INT UNIQUE NOT NULL,
nome VARCHAR(255),
peso DECIMAL(6,2),
cor VARCHAR(100)
);

insert into produtos values(1,"Goma Energética Sabor Original", 0.90, "Verde");
insert into produtos values(2,"Goma Energética Sabor Uva",0.90,"Roxo");
select * from produtos;

-- PEDIDO
create table pedidos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pagamento VARCHAR(80),
    valor DECIMAL(6,2),
    produto_id INT NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

insert into pedidos(pagamento, valor,produto_id) values("Pix", 79.90, 1);
select * from pedidos;
select * from produtos where id=1;