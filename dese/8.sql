-- 8.sql, write a SQL query to display the names of all
-- school districts and the number of pupils enrolled in each.

SELECT districts.name, SUM(expenditures.pupils) AS pupils
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
GROUP BY districts.name
ORDER BY pupils ASC;
