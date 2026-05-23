-- 12.sql, write an SQL query to find the players among the 10 cheapest players by hit rate and among the 10 cheapest players by RBI in 2001.

-- Your query should return a table with two columns, one with the players' first name and the other with their last name.
-- You can calculate a player's salary by RBI by dividing their 2001 salary by the number of RBIs they had in 2001.
-- To simplify, you can assume that a player will only have one salary and one performance in 2001.
-- Sort the results by player ID, from lowest to highest (or alphabetically by last name, since both are the same in this case!).

SELECT DISTINCT
    players.first_name,
    players.last_name
FROM players
JOIN salaries ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id
    AND salaries.year = performances.year
WHERE salaries.year = 2001
    AND performances.year = 2001
    AND performances.H > 0
    AND performances.RBI > 0
    AND (salaries.salary / performances.H) IN (
        SELECT (salaries.salary / performances.H)
        FROM players
        JOIN salaries ON players.id = salaries.player_id
        JOIN performances ON players.id = performances.player_id
            AND salaries.year = performances.year
        WHERE salaries.year = 2001
            AND performances.year = 2001
            AND performances.H > 0
        ORDER BY (salaries.salary / performances.H) ASC
        LIMIT 10
    )
    AND (salaries.salary / performances.RBI) IN (
        SELECT (salaries.salary / performances.RBI)
        FROM players
        JOIN salaries ON players.id = salaries.player_id
        JOIN performances ON players.id = performances.player_id
            AND salaries.year = performances.year
        WHERE salaries.year = 2001
            AND performances.year = 2001
            AND performances.RBI > 0
        ORDER BY (salaries.salary / performances.RBI) ASC
        LIMIT 10
    )
ORDER BY players.id ASC;
