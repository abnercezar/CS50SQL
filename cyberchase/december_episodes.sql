-- Consulta para encontrar episódios que foram ao ar em dezembro (período de festas de fim de ano)
-- Usando função DATE para extrair o mês, melhor que LIKE
SELECT title
FROM episodes
WHERE CAST(strftime('%m', air_date) AS INTEGER) = 12
ORDER BY air_date;
