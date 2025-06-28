-- Em 3.sql, encontre o código de produção do episódio “Hackerized!”.
SELECT production_code
FROM episodes
WHERE title
LIKE 'Hackerized!';