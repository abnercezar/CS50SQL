-- Em 8.sql, escreva uma consulta que conte o número de episódios lançados nos últimos 6 anos, de 2018 a 2023, inclusive.
-- Pode ser útil saber que você pode usar BETWEENcom datas, como BETWEEN '2000-01-01' AND '2000-12-31'.
SELECT COUNT(*)
FROM episodes
WHERE air_date BETWEEN '2002-01-01' AND '2007-12-31';
