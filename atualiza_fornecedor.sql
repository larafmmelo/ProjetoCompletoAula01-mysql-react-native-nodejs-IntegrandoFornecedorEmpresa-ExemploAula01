-- 1. Criando a tabela
DROP TABLE IF EXISTS Fornecedor;

CREATE TABLE Fornecedor (
    cnpj      VARCHAR(14)  NOT NULL,
    nome      VARCHAR(100) NOT NULL,
    telefone  VARCHAR(15),
    endereco  VARCHAR(200),
    PRIMARY KEY (cnpj)
);

-- Observa a estrutura da tabela
DESCRIBE Fornecedor;


-- 2. Inserindo os dados iniciais
INSERT INTO Fornecedor (cnpj, nome, telefone, endereco) VALUES
('11111111000101', 'Distribuidora Alfa Ltda',       '3132221111', 'Rua das Flores, 100 - Belo Horizonte/MG'),
('22222222000102', 'Comercial Beta S.A.',            '3132222222', 'Av. Brasil, 200 - Belo Horizonte/MG'),
('33333333000103', 'Gama Alimentos Ltda',            '3132223333', 'Rua da Bahia, 300 - Belo Horizonte/MG'),
('44444444000104', 'Delta Bebidas Ltda',             NULL,         'Av. Afonso Pena, 400 - Belo Horizonte/MG'),
('55555555000105', 'Epsilon Higiene e Limpeza Ltda', '3132225555', NULL),
('66666666000106', 'Zeta Papelaria ME',              '3132226666', 'Rua Rio de Janeiro, 600 - Belo Horizonte/MG'),
('77777777000107', 'Eta Eletrônicos Ltda',           '3132227777', 'Rua Curitiba, 700 - Belo Horizonte/MG'),
('88888888000108', 'Sigma Móveis e Decoração Ltda',  '3132228888', 'Av. do Contorno, 800 - Belo Horizonte/MG');

-- Conferimos o resultado
SELECT * FROM Fornecedor;


-- 3. Explorando o comando UPDATE

-- 3.1 Atualizando um único atributo de um único registro
UPDATE Fornecedor 
SET telefone = '3133331111' 
WHERE cnpj = '11111111000101';

SELECT * FROM Fornecedor;


-- 3.2 Atualizando vários atributos ao mesmo tempo
UPDATE Fornecedor 
SET telefone = '3133332222',
    endereco = 'Av. Brasil, 250 - Belo Horizonte/MG' 
WHERE cnpj = '22222222000102';

SELECT * FROM Fornecedor;


-- 3.3 Preenchendo um campo que estava NULL
UPDATE Fornecedor 
SET telefone = '3133334444' 
WHERE cnpj = '44444444000104';

SELECT * FROM Fornecedor;


-- 3.4 Atribuindo NULL a um atributo
UPDATE Fornecedor 
SET telefone = NULL 
WHERE cnpj = '66666666000106';

SELECT * FROM Fornecedor;


-- 3.5 Condição com LIKE e uso de CONCAT
UPDATE Fornecedor 
SET endereco = CONCAT('[PJ] ', endereco) 
WHERE nome LIKE '%Ltda%' 
  AND endereco IS NOT NULL;

SELECT * FROM Fornecedor;


-- 3.6 Condição com IN (lista de valores)
UPDATE Fornecedor 
SET telefone = '3130000000' 
WHERE cnpj IN ('33333333000103', '77777777000107');

SELECT * FROM Fornecedor;


-- 3.7 Usando funções de string no UPDATE
UPDATE Fornecedor 
SET nome = UPPER(nome) 
WHERE cnpj = '55555555000105';

SELECT * FROM Fornecedor;


-- 3.8 UPDATE com CASE WHEN (lógica condicional)
UPDATE Fornecedor 
SET telefone = CASE
                   WHEN cnpj = '11111111000101' THEN '3139990001'
                   WHEN cnpj = '22222222000102' THEN '3139990002'
                   ELSE telefone
               END 
WHERE cnpj IN ('11111111000101', '22222222000102');

SELECT * FROM Fornecedor;


-- 3.9 Atualização em massa com base em uma condição lógica
UPDATE Fornecedor 
SET telefone = '3130001000' 
WHERE telefone IS NULL;

SELECT * FROM Fornecedor;


-- 3.10 UPDATE com ORDER BY e LIMIT (recurso específico do MySQL)
UPDATE Fornecedor 
SET nome = CONCAT(nome, ' (Fornecedor Destaque)') 
ORDER BY nome ASC 
LIMIT 1;

SELECT * FROM Fornecedor;


-- 3.11 UPDATE com subquery no WHERE
UPDATE Fornecedor 
SET endereco = CONCAT(endereco, ' [nome longo]') 
WHERE cnpj IN (
    SELECT cnpj FROM (
        SELECT cnpj FROM Fornecedor WHERE LENGTH(nome) > 25
    ) AS sub_tabela
) 
AND endereco IS NOT NULL;

SELECT * FROM Fornecedor;


-- 3.12 UPDATE sem WHERE: exemplo de alerta
UPDATE Fornecedor 
SET endereco = 'Endereço atualizado em 2026';

SELECT * FROM Fornecedor;
