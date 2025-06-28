-- Em 10.sql, escreva uma consulta SQL para listar os IDs, títulos e códigos de
-- produção de todos os episódios. Ordene os resultados por código de produção , do mais antigo ao mais recente.
SELECT title FROM episodes
WHERE season = 5 ORDER BY title DESC;