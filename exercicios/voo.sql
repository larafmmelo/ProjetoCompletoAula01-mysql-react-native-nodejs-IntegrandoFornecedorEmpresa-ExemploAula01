USE aviacao;

-- 1
SELECT *
FROM Voo
WHERE cidade_partida = 'Belo Horizonte';

-- 2
SELECT *
FROM Voo
WHERE cidade_destino = 'Fortaleza';

-- 3
SELECT *
FROM Voo
WHERE data_volta IS NOT NULL;

-- 4
SELECT *
FROM Voo
WHERE valor < 950;

-- 5
SELECT *
FROM Voo
WHERE valor > 1200;

-- 6
SELECT *
FROM Voo
WHERE valor BETWEEN 500 AND 800;

-- 7
SELECT *
FROM Voo
WHERE YEAR(data_partida) = 2027;

-- 8
SELECT *
FROM Voo
WHERE YEAR(data_volta) = 2028;

-- 9
SELECT *
FROM Voo
WHERE cidade_partida = 'Cuiabá'
AND cidade_destino = 'Curitiba';

-- 10
SELECT *
FROM Voo
WHERE estado_partida = 'Minas Gerais';

-- 11
SELECT *
FROM Voo
WHERE estado_destino = 'Rio Grande do Sul';

-- 12
SELECT *
FROM Voo
WHERE estado_partida IN ('Tocantins', 'Pará');

-- 13
SELECT *
FROM Voo
WHERE cidade_destino IN ('Salvador', 'Aracaju');

-- 14
SELECT *
FROM Voo
WHERE data_volta IS NULL;

-- 15
SELECT *
FROM Voo
WHERE cidade_partida LIKE '%es%'
   OR estado_partida LIKE '%es%';

-- 16
SELECT *
FROM Voo
WHERE cidade_destino LIKE '%ta%'
   OR estado_destino LIKE '%ta%';

-- 17
SELECT *
FROM Voo
WHERE cidade_partida LIKE '%or%'
   OR estado_partida LIKE '%or%'
   OR cidade_destino LIKE '%or%'
   OR estado_destino LIKE '%or%';