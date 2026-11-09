USE ecommerce;

INSERT INTO clientes (nome, email, cidade, estado, telefone) VALUES
('Alex Osvaldo', 'alex.osvaldo@email,com', 'Campo Mourão', 'PR', '19989628910'),
('Everton Silva', 'everton@email,com', 'Mossoró', 'RN', '19995185370');

INSERT INTO produtos (nome, preco, estoque) VALUES
('iPhone 14', 2200.00, 5),
('Mesa Preta', 670.00, 10);

UPDATE produtos SET estoque = 8 WHERE nome LIKE 'iPhone 14';

SELECT * FROM clientes WHERE cidade = 'São Paulo' ORDER BY nome;
SELECT * FROM produtos WHERE preco BETWEEN 100 AND 1000;