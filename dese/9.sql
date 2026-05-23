-- 9.sql, write a SQL query to find the name (or names) of the school district(s)
-- with the single least number of pupils. Report only the name(s).

SELECT districts.name
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
GROUP BY districts.name
HAVING SUM(expenditures.pupils) = (
    SELECT MIN(total_pupils)
    FROM (
        SELECT SUM(pupils) AS total_pupils
        FROM expenditures
        GROUP BY district_id
    )
)
