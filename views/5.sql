-- Em 5.sql, escreva uma consulta SQL para encontrar o maior valor de contraste
-- das impressões de Hokusai. Nomeie a coluna como "Contraste Máximo"
SELECT MAX(contrast) AS "Contraste Máximo"
FROM views
WHERE artist = 'Hokusai';
