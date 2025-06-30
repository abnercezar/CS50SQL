-- Em 9.sql, escreva uma consulta SQL para encontrar o título em inglês e o artista
-- da impressão com maior brilho
SELECT english_title, artist
FROM views
ORDER BY brightness DESC
LIMIT 1;