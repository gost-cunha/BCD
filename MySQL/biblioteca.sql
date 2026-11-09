CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE leitor (
    id_leitor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    telefone VARCHAR(20),
    data_nascimento DATE
);

CREATE TABLE autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

CREATE TABLE livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    ano_publicacao INT
);

CREATE TABLE autor_livro (
    id_autor INT,
    id_livro INT,
    papel_autor VARCHAR(30),
    ordem_autoria INT,

    PRIMARY KEY (id_autor, id_livro),

    FOREIGN KEY (id_autor)
        REFERENCES autor(id_autor),

    FOREIGN KEY (id_livro)
        REFERENCES livro(id_livro)
);

ALTER TABLE livro
ADD genero VARCHAR(50);

INSERT INTO leitor
(nome, email, telefone, data_nascimento)
VALUES
('Lucas Ferraz', 'lucas.ferraz@exemplo.com', '11911111111', '2007-03-15'),
('Heder Lopes', 'marina.lopes@exemplo.com', '11922222222', '2008-07-22'),
('Pedro Nunes', 'pedro.nunes@exemplo.com', '11933333333', '2007-11-08'),
('Augusto Pereira', 'ana.ribeiro@exemplo.com', '11944444444', '2008-01-19'),
('Gabriel Moraes', 'gabriel.moraes@exemplo.com', '11955555555', '2007-09-30');

INSERT INTO autor
(nome, nacionalidade, data_nascimento)
VALUES
('Arthur Monteiro', 'Brasileira', '1975-04-12'),
('Igor Cunha', 'Portuguesa', '1982-09-23'),
('Daniel Laurent', 'Francesa', '1968-01-17'),
('Nickolas Moretti', 'Italiana', '1990-06-05'),
('Carlos Alexandre', 'Britânica', '1979-12-11');

INSERT INTO livro
(titulo, isbn, ano_publicacao, genero)
VALUES
('Além das Estrelas', '9780000000001', 2015, 'Ficção Científica'),
('O Jardim Esquecido', '9780000000002', 2018, 'Romance'),
('Código da Meia-Noite', '9780000000003', 2020, 'Suspense'),
('Caminhos do Vento', '9780000000004', 2012, 'Aventura'),
('A Última Biblioteca', '9780000000005', 2023, 'Fantasia');

INSERT INTO autor_livro
(id_autor, id_livro, papel_autor, ordem_autoria)
VALUES
(1, 1, 'Autor', 1),
(2, 2, 'Autor', 1),
(3, 3, 'Autor', 1),
(4, 4, 'Autor', 1),
(5, 5, 'Autor', 1);

UPDATE leitor
SET telefone = '11999999999'
WHERE id_leitor = 1;

INSERT INTO leitor
(nome, email, telefone, data_nascimento)
VALUES
('Leitor Temporario', 'temporario@exemplo.com', '11900000000', '2008-05-10');

DELETE FROM leitor
WHERE id_leitor = 6;

SELECT * FROM leitor;
SELECT * FROM autor;
SELECT * FROM livro;
SELECT * FROM autor_livro;