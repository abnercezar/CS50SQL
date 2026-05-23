-- 10.sql, write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.

SELECT expenditures.per_pupil_expenditure, districts.name
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
WHERE districts.type = 'Public School District'
ORDER BY expenditures.per_pupil_expenditure DESC LIMIT 10;
