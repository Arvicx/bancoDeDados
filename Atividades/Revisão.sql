CREATE DATABASE revisao;
USE revisao;

CREATE TABLE aluno(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dataNascimento DATE NOT NULL
);

CREATE TABLE professor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100) NOT NULL
);

CREATE TABLE curso(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    professor_id INT NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES professor(id)
);

CREATE TABLE matricula(
	id INT PRIMARY KEY AUTO_INCREMENT,
    dataMatricula DATE NOT NULL,
    curso_id INT NOT NULL,
    FOREIGN KEY (curso_id) REFERENCES curso(id),
    aluno_id INT NOT NULL,
    FOREIGN KEY(aluno_id) REFERENCES aluno(id)
);

CREATE TABLE avaliacao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nota FLOAT NOT NULL,
    dataAvaliacao DATE NOT NULL,
    matricula_id INT NOT NULL,
    FOREIGN KEY (matricula_id) REFERENCES matricula(id),
    aluno_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id)
);

INSERT INTO aluno(nome, email,dataNascimento) VALUES ("Arthur Fernandes", "arthur@email.com", "03-03-03");
INSERT INTO aluno(nome, email,dataNascimento) VALUES ("Diane da Silva", "diane@email.com", "12-10-04");
INSERT INTO aluno(nome, email,dataNascimento) VALUES ("Giovanna Vaz", "vazgiovanna@email.com", "09-12-05");

SELECT * FROM aluno;

INSERT INTO professor(nome,email,especialidade) VALUES ("Victor Rohod","rohodvictor@email.com","Tecnologia da Informação");
INSERT INTO professor(nome,email,especialidade) VALUES ("Marcos Pires","piresmarcos@email.com","Química");

INSERT INTO curso(nome,descricao,professor_id) VALUES ("Cybersegurança", "Um curso focado em segurança digital.", 1);
INSERT INTO curso(nome,descricao,professor_id) VALUES ("Química 2", "Um curso focado em Química Avançada.", 2);
INSERT INTO curso(nome,descricao,professor_id) VALUES ("Desenvolvimento Web", "Um curso focado em Desenvolvimento Web.", 1);
INSERT INTO curso(nome,descricao,professor_id) VALUES ("Banco de Dados", "Um curso focado em Banco de Dados.", 1);

SELECT curso.nome, professor.nome FROM curso JOIN professor WHERE curso.professor_id = professor.id;

INSERT INTO matricula(dataMatricula, curso_id, aluno_id) VALUES ("2024-10-01", 4, 1);
INSERT INTO matricula(dataMatricula, curso_id, aluno_id) VALUES ("2024-11-02", 1, 1);
INSERT INTO matricula(dataMatricula, curso_id, aluno_id) VALUES ("2022-03-11", 3, 1);

INSERT INTO matricula(dataMatricula, curso_id, aluno_id) VALUES ("2023-01-18", 2, 2);

INSERT INTO matricula(dataMatricula, curso_id, aluno_id) VALUES ("2024-09-30", 4, 3);

SELECT curso.nome, aluno.nome FROM curso JOIN aluno JOIN matricula WHERE matricula.curso_id = 4;

