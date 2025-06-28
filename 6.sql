-- Em 6.sql, liste os títulos dos episódios da 6ª temporada (2008) que foram lançados no início, em 2007.
SELECT title FROM episodes WHERE season = 6 AND air_date LIKE '2007%';