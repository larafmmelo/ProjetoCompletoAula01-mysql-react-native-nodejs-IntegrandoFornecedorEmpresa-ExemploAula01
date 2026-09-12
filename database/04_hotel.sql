DROP DATABASE IF EXISTS hotelaria;

CREATE DATABASE hotelaria;

USE hotelaria;

CREATE TABLE Hotel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(100),
    valor_diaria DECIMAL(10,2),
    categoria INT,
    acomodacao VARCHAR(100),
    check_in DATE,
    check_out DATE,
    cafe_incluso BOOLEAN,
    garagem_inclusa BOOLEAN
);

INSERT INTO Hotel
(nome, cidade, estado, valor_diaria, categoria, acomodacao, check_in, check_out, cafe_incluso, garagem_inclusa)
VALUES
('Resort Minas', 'Belo Horizonte', 'Minas Gerais', 280.00, 3, 'Quarto duplo', '2027-01-10', '2027-01-15', TRUE, TRUE),
('Hotel Elite São Luís', 'São Luís', 'Maranhão', 350.00, 4, 'Suite', '2027-02-10', '2027-02-15', FALSE, TRUE),
('Resort Recife', 'Recife', 'Pernambuco', 420.00, 3, 'Quarto duplo', '2026-12-10', '2028-01-10', TRUE, FALSE),
('Hotel Curitiba', 'Curitiba', 'Paraná', 250.00, 3, 'Suite', '2027-03-20', '2028-03-25', FALSE, TRUE),
('Hotel Sul', 'Porto Alegre', 'Rio Grande do Sul', 180.00, 2, 'Standard', '2026-11-05', '2026-11-10', TRUE, FALSE),
('Hotel Salvador', 'Salvador', 'Bahia', 300.00, 3, 'Quarto duplo', '2027-06-01', '2027-06-07', FALSE, TRUE);