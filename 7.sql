-- Em 7.sql, escreva uma consulta SQL para listar os títulos e tópicos de todos os episódios que ensinam frações.
SELECT title, topic
FROM episodes
WHERE topic LIKE '%fraction%';
