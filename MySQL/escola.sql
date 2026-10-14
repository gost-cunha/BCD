CREATE DATABASE escola;

USE escola;

CREATE TABLE Professores (
    idProfessor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    formacoes VARCHAR(255),
    cursos INT
);

CREATE TABLE Cursos (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    curso VARCHAR(100),
    idProfessor INT,
    FOREIGN KEY (idProfessor) REFERENCES Professores(idProfessor)
);

CREATE TABLE Alunos (
    idAluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    matricula INT,
    cursos INT
);

CREATE TABLE Aluno_Curso (
    idAlunoCurso INT PRIMARY KEY AUTO_INCREMENT,
    idAluno INT,
    idCurso INT,
    FOREIGN KEY (idAluno) REFERENCES Alunos(idAluno),
    FOREIGN KEY (idCurso) REFERENCES Cursos(idCurso)
);

INSERT INTO Professores (nome, formacoes, cursos) VALUES
('Carlos Silva', 'Engenharia de Software', 2),
('Ana Souza', 'Banco de Dados', 1),
('Marcos Lima', 'Redes de Computadores', 1);

INSERT INTO Cursos (curso, idProfessor) VALUES
('Programação PHP', 1),
('Modelagem de Dados', 2),
('Infraestrutura de Redes', 3);

INSERT INTO Alunos (nome, matricula, cursos) VALUES
('João Pedro', 1001, 2),
('Maria Clara', 1002, 1),
('Lucas Santos', 1003, 3);