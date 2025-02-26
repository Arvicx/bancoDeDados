create database prova1;
use prova1;

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    total FLOAT NOT NULL,
    status_pedido VARCHAR(100) NOT NULL,
    id_clientes INT NOT NULL,
    FOREIGN KEY(id_clientes) REFERENCES clientes(id)
);

CREATE TABLE pagamentos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento VARCHAR(100) NOT NULL,
    status_pagamento VARCHAR(100) NOT NULL,
    valor_pago FLOAT NOT NULL,
    id_pedidos INT NOT NULL,
    FOREIGN KEY(id_pedidos) REFERENCES pedidos(id)
);

CREATE TABLE fornecedores(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    contato VARCHAR(100) NOT NULL UNIQUE,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE produtos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL UNIQUE,
    preco FLOAT NOT NULL,
    estoque INT NOT NULL,
    id_fornecedores INT NOT NULL,
    FOREIGN KEY(id_fornecedores) REFERENCES fornecedores(id)
);

INSERT INTO clientes (nome, email, telefone, endereco) VALUES ("Arthur Fernandes Rodrigues", "arthur@email.com", "71938288483", "Rua Jatobá 14, Pinheiros");
INSERT INTO pedidos (data_pedido, total, status_pedido, id_clientes) VALUES ("2020-09-13", 530.30, "Entregue", 1);
INSERT INTO pagamentos (metodo_pagamento, status_pagamento, valor_pago, id_pedidos) VALUES ("Cartão de Crédito", "Pago", 530.30, 1);
INSERT INTO fornecedores (nome, contato, endereco) VALUES ("Wildiane da Silva", "61923457654", "Rua Jequiti Lote 30, Pinheiros");
INSERT INTO produtos (nome_produto, preco, estoque, id_fornecedores) VALUES ("Monitor ACER 28' 260hz", 530.30, 29, 1);

SELECT * FROM clientes;
SELECT * FROM pedidos;
SELECT * FROM pagamentos;
SELECT * FROM fornecedores;
SELECT * FROM produtos;