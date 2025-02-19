CREATE DATABASE joinAtividade;
use joinAtividade;

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO clientes(nome) VALUES("Carlos");
INSERT INTO clientes(nome) VALUES("Ana");
INSERT INTO clientes(nome) VALUES("Bruna");
INSERT INTO clientes(nome) VALUES("Jessica");
INSERT INTO clientes(nome) VALUES("Victor");
INSERT INTO clientes(nome) VALUES("Fernanda");

INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2020-09-21",1);
INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2022-02-03",1);
INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2022-05-30",1);

INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2023-10-31",2);

INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2025-06-16",5);

INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2019-11-29",6);
INSERT INTO pedidos(data_pedido, id_cliente) VALUES ("2025-02-13",6);

SELECT clientes.nome, pedidos.id_pedido FROM clientes JOIN pedidos WHERE clientes.id_cliente = pedidos.id_cliente;
SELECT clientes.nome, pedidos.id_pedido, pedidos.data_pedido FROM clientes LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;
SELECT clientes.nome, COUNT(pedidos.id_pedido) AS total_pedidos FROM clientes LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente GROUP BY clientes.id_cliente;