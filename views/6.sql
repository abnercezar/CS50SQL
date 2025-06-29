-- Em 6.sql, escreva uma consulta SQL para encontrar a entropia média das impressões de Hiroshige,
-- arredondada para duas casas decimais. Chame a coluna resultante de "Entropia Média de Hiroshige"
SELECT ROUND(AVG(entropy), 2) AS "hiroshige average entropy"
FROM views
WHERE artist = 'Hiroshige';