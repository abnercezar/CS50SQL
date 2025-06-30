-- Em 7.sql, escreva uma consulta SQL para listar os títulos em inglês das 5 gravuras
-- mais brilhantes de Hiroshige, da mais para a menos brilhante
SELECT english_title FROM views
WHERE artist = 'Hiroshige'
ORDER BY brightness DESC
LIMIT 5;