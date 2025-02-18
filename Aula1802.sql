CREATE DATABASE joinAula;
use joinAula;

CREATE TABLE pessoa(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    nacionalidade VARCHAR(100)
);

CREATE TABLE endereço(
	id_endereco INT PRIMARY KEY AUTO_INCREMENT,
    rua VARCHAR(255),
    numero VARCHAR(20),
    pessoa_id INT NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

INSERT INTO pessoa (nome, nacionalidade) VALUES ("Arthur","Brasileiro");
INSERT INTO pessoa (nome, nacionalidade) VALUES ("Wildiane","Grega");
INSERT INTO pessoa (nome, nacionalidade) VALUES ("Giovanna","Turca");
INSERT INTO pessoa (nome, nacionalidade) VALUES ("Yasmin","Coreana");

INSERT INTO endereço(rua, numero, pessoa_id) VALUES("QN15A","31","1");
INSERT INTO endereço(rua, numero, pessoa_id) VALUES("QS16","7","2");
INSERT INTO endereço(rua, numero, pessoa_id) VALUES("QS6","2","3");
INSERT INTO endereço(rua, numero, pessoa_id) VALUES("QN7","5","4");

-- INNER (INTERSECÇÃO/COMUM NAS DUAS COLUNAS) 
SELECT pessoa.nome, endereço.rua FROM pessoa INNER JOIN endereço ON pessoa.id = endereço.id_endereco;
-- SEM INNER
SELECT pessoa.nome, endereço.rua FROM endereço JOIN pessoa ON pessoa.id = endereço.id_endereco;
-- RIGHT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA DIREITA)
SELECT pessoa.nome, endereço.rua FROM endereço RIGHT JOIN pessoa ON pessoa.id = endereço.id_endereco;
-- LEFT JOIN (JUNTA AS DUAS, PRIORIZANDO A TABELA ESQUERDA)
SELECT pessoa.nome, endereço.rua FROM pessoa LEFT JOIN endereço ON pessoa.id = endereço.id_endereco;

USE employees;

SELECT * FROM employees;

-- O QUE QUERO, DE ONDE, AGRUPAR QUEM?
SELECT gender, COUNT(gender) FROM employees GROUP BY gender;
SELECT dept_no, COUNT(dept_no) FROM dept_emp GROUP BY dept_no;