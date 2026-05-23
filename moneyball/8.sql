-- 8.sql, write a SQL query to find the 2001 salary of the player who hit the most home runs in 2001.

SELECT salaries.salary
FROM salaries
JOIN performances ON salaries.player_id = performances.player_id
AND salaries.year = performances.year
WHERE performances.year = 2001
AND performances.HR = (
    SELECT MAX(HR)
    FROM performances
    WHERE year = 2001
);
