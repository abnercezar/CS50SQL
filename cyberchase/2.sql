-- Em 2.sql, liste o número da temporada e o título do primeiro episódio de cada temporada.
SELECT season, title
FROM episodes
WHERE episode_in_season = 1
ORDER BY season;
