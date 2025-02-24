-- 1 - padronização usando UCASE no select, para todos os dados serem retornados com letra maiúscula.

SELECT UCASE(nome) FROM clientes;

-- 2 - padronização dos emails usando do mesmo príncipio da anterior, só que dessa vez com LCASE, que
-- retorna todos os dados com letra minúscula

SELECT LCASE(email) FROM clientes;

-- 3 - usando o WHERE e LIKE, nós especificamos a busca para procurar em uma coluna específica
-- um dado onde há notebook escrito em qualquer lugar do texto

SELECT * FROM produtos WHERE descricao LIKE "%notebook%";

-- 4 - usando do mesmo príncipio da anterior, só que dessa vez utilizando apenas um % antes do
-- que desejamos buscar, o que garante que o que procuramos esteja apenas no fim da string

SELECT * FROM clientes WHERE email LIKE "%@gmail.com";

-- 5 - com o UPDATE e REPLACE, trocamos tudo que há Av. por Avenida

UPDATE clientes SET endereco_cliente = REPLACE(endereco_cliente, "Av." , "Avenida");

-- 6 - utilizando do SELECT WHERE onde buscamos dados nulos ou com strings vazias

SELECT * FROM produtos WHERE codigo_produto IS NULL OR codigo_produto = "";