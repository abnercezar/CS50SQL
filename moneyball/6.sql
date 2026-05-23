-- 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.

-- Call the column representing total hits by players in 2001 “total hits”.
-- Sort by total hits, highest to lowest.


SELECT
    teams.name,
    SUM(performances.h) AS "total_hits"
FROM teams
JOIN performances ON teams.id = performances.team_id
WHERE performances.year = 2001
GROUP BY teams.id
ORDER BY "total_hits" DESC
LIMIT 5;
