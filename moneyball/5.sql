-- 5.sql, write a SQL query to find all teams that Satchel Paige played for.



SELECT teams.name
FROM players
JOIN performances ON players.id = performances.player_id
JOIN teams ON performances.team_id = teams.id
WHERE players.first_name = 'Satchel' AND last_name = 'Paige';
