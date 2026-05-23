-- 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.

-- Sort by year in descending order.

SELECT year, salary
FROM salaries
WHERE player_id = 15726
ORDER BY year DESC;


