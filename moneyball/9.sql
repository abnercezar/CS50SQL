-- 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.

SELECT
    teams.name,
    ROUND(AVG(salaries.salary), 2) AS avg_salary
FROM teams
JOIN salaries ON teams.id = salaries.team_id
WHERE salaries.year = 2001
GROUP BY teams.id
ORDER BY avg_salary ASC
LIMIT 5;
