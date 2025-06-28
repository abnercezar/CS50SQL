-- Consulta para encontrar o primeiro dia do ano em que PBS lançou um episódio do Cyberchase
-- Para cada ano, mostra o ano e o primeiro mês-dia de lançamento
SELECT
    strftime('%Y', air_date) AS year,
    strftime('%m-%d', MIN(air_date)) AS first_release_date
FROM episodes
GROUP BY strftime('%Y', air_date)
ORDER BY year;
