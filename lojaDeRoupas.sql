create database lojaderoupas;
use lojaderoupas;
create table catalogo(nome VARCHAR(100), tamanho VARCHAR(3), cor VARCHAR(100), preco DECIMAL(10,2));
insert into catalogo(nome, tamanho, cor, preco) values ("Camisa", "PP", "Branca", 119.90);
insert into catalogo(nome, tamanho, cor, preco) values ("Camiseta", "P", "Preta", 89.90);
insert into catalogo(nome, tamanho, cor, preco) values ("Regata", "M", "Marrom", 79.90);
insert into catalogo(nome, tamanho, cor, preco) values ("Cropped", "G", "Cinza", 79.90);
insert into catalogo(nome, tamanho, cor, preco) values ("Calça", "GG", "Verde", 129.90);
insert into catalogo(nome, tamanho, cor, preco) values ("Bermuda", "XL", "Roxo", 59.90);
select * from catalogo;
select * from catalogo where cor = "Roxo";