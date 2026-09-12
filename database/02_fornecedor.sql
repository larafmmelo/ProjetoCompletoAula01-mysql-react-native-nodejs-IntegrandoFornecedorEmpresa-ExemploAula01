DROP DATABASE IF EXISTS empresa;

CREATE DATABASE empresa;

USE empresa;

DROP TABLE IF EXISTS Fornecedor;

CREATE TABLE Fornecedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(256) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE,
    endereco VARCHAR(255) NOT NULL
);

INSERT INTO Fornecedor (nome, telefone, endereco) VALUES
('Fornecedor Alpha', '31999990001', 'Rua A, 100'),
('Fornecedor Beta', '31999990002', 'Rua B, 200'),
('Fornecedor Gamma', '31999990003', 'Rua C, 300'),
('Fornecedor Delta', '31999990004', 'Rua D, 400'),
('Fornecedor Epsilon', '31999990005', 'Rua E, 500');

SELECT * FROM Fornecedor;