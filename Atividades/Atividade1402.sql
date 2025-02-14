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
INSERT INTO autores VALUES ("Arthur", "Brasileiro");