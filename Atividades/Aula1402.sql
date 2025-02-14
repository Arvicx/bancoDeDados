CREATE DATABASE relacionamentos;
use relacionamentos;

-- one to one (um pra um)
CREATE TABLE alunos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(5)
);

insert into alunos(nome,turma) values("Juan", "02M");
insert into alunos(nome,turma) values("Rarysson", "003V");
insert into alunos(nome,turma) values("Giovanna", "003V");

CREATE TABLE contatos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    telefone VARCHAR(20),
    aluno_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)999999999",1);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)888888888",1);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)777777777",2);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)666666666",3);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)444444444",3);
INSERT INTO contatos(telefone, aluno_id) VALUES ("(61)222222222",3);

SELECT * FROM alunos;
SELECT * FROM contatos;
SELECT * FROM contatos WHERE aluno_id = 3;
SELECT * , alunos.nome, alunos.turma, contatos.telefone FROM alunos JOIN contatos ON contatos.aluno_id;

-- ONE TO MANY
CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

-- QUEM É O ESTRANGEIRO E DE ONDE VEM(PROVA)
CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    valorTotal FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes(nome) values ("George");
INSERT INTO pedidos(valorTotal, cliente_id) values (90,1);
INSERT INTO pedidos(valorTotal, cliente_id) values (80,1);
INSERT INTO pedidos(valorTotal, cliente_id) values (100,1);
INSERT INTO pedidos(valorTotal, cliente_id) values (90,1);

SELECT * FROM pedidos;