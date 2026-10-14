CREATE DATABASE hospital;

USE hospital;

CREATE TABLE especialidade (
    idEspecialidade INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE medico (
    idMedico INT PRIMARY KEY AUTO_INCREMENT,
    idEspecialidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL,

    FOREIGN KEY (idEspecialidade)
        REFERENCES especialidade(idEspecialidade)
);

CREATE TABLE paciente (
    idPaciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    dataNascimento DATE NOT NULL
);

CREATE TABLE consulta (
    idConsulta INT PRIMARY KEY AUTO_INCREMENT,
    idMedico INT NOT NULL,
    idPaciente INT NOT NULL,
    dataConsulta DATETIME NOT NULL,

    FOREIGN KEY (idMedico)
        REFERENCES medico(idMedico),

    FOREIGN KEY (idPaciente)
        REFERENCES paciente(idPaciente)
);