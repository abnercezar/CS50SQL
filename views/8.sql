-- Em 8.sql, escreva uma consulta SQL para listar os títulos em inglês das 5 gravuras
-- com menor contraste de Hokusai, do menor para o maior contraste
SELECT english_title
FROM views
WHERE artist = 'Hokusai'
ORDER BY contrast ASC
LIMIT 5;
