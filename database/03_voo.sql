DROP DATABASE IF EXISTS aviacao;

CREATE DATABASE aviacao;

USE aviacao;

CREATE TABLE Voo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cidade_partida VARCHAR(100),
    estado_partida VARCHAR(100),
    cidade_destino VARCHAR(100),
    estado_destino VARCHAR(100),
    valor DECIMAL(10,2),
    data_partida DATE,
    data_volta DATE
);

INSERT INTO Voo
(cidade_partida, estado_partida, cidade_destino, estado_destino, valor, data_partida, data_volta)
VALUES
('Belo Horizonte', 'Minas Gerais', 'Fortaleza', 'Ceará', 750.00, '2027-02-10', '2027-02-20'),
('Cuiabá', 'Mato Grosso', 'Curitiba', 'Paraná', 1300.00, '2027-03-15', '2028-01-10'),
('Palmas', 'Tocantins', 'Salvador', 'Bahia', 600.00, '2027-05-20', NULL),
('Belém', 'Pará', 'Aracaju', 'Sergipe', 800.00, '2027-06-10', '2028-02-15'),
('São Paulo', 'São Paulo', 'Porto Alegre', 'Rio Grande do Sul', 1250.00, '2026-12-10', '2027-01-10');