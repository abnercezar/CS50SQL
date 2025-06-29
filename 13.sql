-- Em 13.sql, escreva uma consulta SQL para explorar uma questão de sua escolha. Esta consulta deve:
-- Envolva pelo menos uma condição, usando WHERE com AND ou OR
-- Questão: Encontrar episódios das primeiras 3 temporadas que foram ao ar em 2002 ou 2003,
-- ou episódios sobre matemática básica (adição, subtração, contagem)
SELECT title, season, air_date, topic
FROM episodes
WHERE (season <= 3 AND (air_date LIKE '2002%' OR air_date LIKE '2003%'))
   OR (topic LIKE '%addition%' OR topic LIKE '%subtraction%' OR topic LIKE '%counting%')
ORDER BY season, air_date;