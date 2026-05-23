-- 1.sql, write a SQL query to find the average player salary by year.

-- Sort by year in descending order.
-- Round the salary to two decimal places and call the column “average salary”.


SELECT
    year,
    ROUND(AVG(salary), 2) AS "average salary"
FROM salaries
GROUP BY year
ORDER BY year DESC;
