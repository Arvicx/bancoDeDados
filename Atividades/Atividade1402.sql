-- A
CREATE DATABASE LivrariaDB;
use LivrariaDB;

-- B
create table autores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(100)
);

create table livros(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao INT(4),
    id_autor INT NOT NULL,
	FOREIGN KEY (id_autor) REFERENCES autores(id)
);

-- C
INSERT INTO autores VALUES (1,"Arthur", "Brasileiro");
INSERT INTO autores(nome,nacionalidade) VALUES ("Wildiane", "Grega");
INSERT INTO autores(nome,nacionalidade) VALUES ("Giovanna", "Turca");

INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("A Vida é Estranha", 2015, 1);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Antes da Tempestade", 2019, 1);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Meu Romance Químico", 2004, 2);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("A Parada Fúnebre", 2006, 2);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("MC Daleste: A Biografia", 2012, 3);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Dome Empadas", 2020, 3);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Dias Perigosos", 2013, 1);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Amantes da Destruição", 2012, 2);
INSERT INTO livros(titulo, ano_publicacao, id_autor) VALUES ("Metamorfose", 2019, 1);

-- D

SELECT * FROM autores;
SELECT * FROM livros;
SELECT livros.titulo , autores.nome FROM livros JOIN autores ON livros.id_autor = autores.id;
SELECT livros.titulo, autores.nome FROM livros JOIN autores ON livros.id_autor = autores.id WHERE autores.nome = "Arthur";
SELECT livros.titulo, autores.nome FROM livros JOIN autores ON livros.id_autor = autores.id WHERE autores.nome = "Wildiane";
SELECT livros.titulo, autores.nome FROM livros JOIN autores ON livros.id_autor = autores.id WHERE autores.nome = "Giovanna";
SELECT autores.nome, COUNT(*) FROM autores JOIN livros ON autores.id = livros.id_autor WHERE autores.nome = "Arthur";
SELECT autores.nome, COUNT(*) FROM autores JOIN livros ON autores.id = livros.id_autor WHERE autores.nome = "Wildiane";
SELECT autores.nome, COUNT(*) FROM autores JOIN livros ON autores.id = livros.id_autor WHERE autores.nome = "Giovanna";