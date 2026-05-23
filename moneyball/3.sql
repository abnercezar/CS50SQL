-- 3.sql, write a SQL query to find Ken Griffey Jr.’s home run history.

-- Sort by year in descending order.
-- Note that there may be two players with the name “Ken Griffey.” This Ken Griffey was born in 1969.

SELECT
    year,
    HR AS home_runs
FROM performances
WHERE player_id = 7266
ORDER BY year DESC;
