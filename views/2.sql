-- Em 2.sql, escreva uma consulta SQL para listar as cores médias das
-- gravuras de Hokusai que incluem "rio" no título em inglês. (A propósito, elas têm algum toque de azul?)
SELECT average_color, english_title
FROM views
WHERE artist = 'Hokusai' AND english_title LIKE '%river%';