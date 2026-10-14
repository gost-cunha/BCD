CREATE DATABASE empresa;

USE empresa;

CREATE TABLE departamento (
    idDepartamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE funcionario (
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    idDepartamento INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (idDepartamento)
        REFERENCES departamento(idDepartamento)
);

CREATE TABLE projetos (
    idProjeto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE participa (
    idProjeto INT,
    idFuncionario INT,

    PRIMARY KEY (idProjeto, idFuncionario),

    FOREIGN KEY (idProjeto)
        REFERENCES projetos(idProjeto),

    FOREIGN KEY (idFuncionario)
        REFERENCES funcionario(idFuncionario)
);