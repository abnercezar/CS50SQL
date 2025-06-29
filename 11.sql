-- Em 11.sql, liste os títulos dos episódios da 5ª temporada, em ordem alfabética inversa.
SELECT title FROM episodes
WHERE season = 5 ORDER BY title DESC;
