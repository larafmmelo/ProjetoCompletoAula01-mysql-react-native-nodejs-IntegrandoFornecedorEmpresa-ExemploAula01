USE hotelaria;

-- 1
SELECT *
FROM Hotel
WHERE estado = 'Minas Gerais';

-- 2
SELECT *
FROM Hotel
WHERE valor_diaria < 300;

-- 3
SELECT *
FROM Hotel
WHERE cidade = 'São Luís';

-- 4
SELECT *
FROM Hotel
WHERE categoria = 3;

-- 5
SELECT *
FROM Hotel
WHERE nome LIKE '%resort%';

-- 6
SELECT *
FROM Hotel
WHERE cidade IN ('Recife', 'Salvador');

-- 7
SELECT *
FROM Hotel
WHERE acomodacao = 'Quarto duplo';

-- 8
SELECT *
FROM Hotel
WHERE valor_diaria > 100;

-- 9
SELECT *
FROM Hotel
WHERE nome LIKE '%elite%'
   OR acomodacao LIKE '%elite%';

-- 10
SELECT *
FROM Hotel
WHERE YEAR(check_in) = 2027;

-- 11
SELECT *
FROM Hotel
WHERE cidade = 'Curitiba'
AND acomodacao = 'Suite';

-- 12
SELECT *
FROM Hotel
WHERE estado = 'Rio Grande do Sul';

-- 13
SELECT *
FROM Hotel
WHERE estado IN ('São Paulo', 'Paraná');

-- 14
SELECT *
FROM Hotel
WHERE cafe_incluso = FALSE;

-- 15
SELECT *
FROM Hotel
WHERE acomodacao LIKE '%standard%';

-- 16
SELECT *
FROM Hotel
WHERE valor_diaria BETWEEN 250 AND 450;

-- 17
SELECT *
FROM Hotel
WHERE YEAR(check_out) = 2028;

-- 18
SELECT *
FROM Hotel
WHERE garagem_inclusa = TRUE;

-- 19
SELECT *
FROM Hotel
WHERE garagem_inclusa = TRUE
AND cafe_incluso = FALSE;

-- 20
SELECT *
FROM Hotel
WHERE cafe_incluso = TRUE
AND garagem_inclusa = FALSE;