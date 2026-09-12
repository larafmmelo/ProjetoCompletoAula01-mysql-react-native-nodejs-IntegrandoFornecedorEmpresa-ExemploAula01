USE empresa;

-- 1
INSERT INTO Fornecedor (nome, telefone, endereco)
VALUES ('Suprimentos Globais', '31999990006', 'Rua F, 600');

-- A segunda execução gera erro porque nome e telefone são UNIQUE.

-- 2
SELECT *
FROM Fornecedor
WHERE id BETWEEN 3 AND 5;

-- 3
SELECT *
FROM Fornecedor
WHERE id IN (1, 2, 4);

-- 4
SELECT *
FROM Fornecedor
ORDER BY 2 DESC;

-- 5
SELECT nome, endereco
FROM Fornecedor
ORDER BY id DESC;

-- 6
INSERT INTO Fornecedor (nome, telefone, endereco)
VALUES ('Paraná Madeiras', '31999990007', 'Rua G, 700');

-- 7
INSERT INTO Fornecedor (nome, telefone, endereco)
VALUES
('Alimentos Nordeste', '31999990008', 'Rua H, 800'),
('Metais Sudeste', '31999990009', 'Rua I, 900'),
('Vidros do Sul', '31999990010', 'Rua J, 1000');

-- 9
SELECT nome, telefone
FROM Fornecedor;

-- 10
SELECT *
FROM Fornecedor
WHERE nome = 'Metais Sudeste';

-- 11
SELECT *
FROM Fornecedor
WHERE endereco LIKE '%São Paulo%';

-- 12
SELECT *
FROM Fornecedor
WHERE id = 3;

-- 13
SELECT *
FROM Fornecedor
WHERE id >= 4;

-- 14
SELECT *
FROM Fornecedor
ORDER BY nome ASC, endereco ASC;

-- 15
SELECT *
FROM Fornecedor
WHERE id BETWEEN 2 AND 5
ORDER BY id DESC;