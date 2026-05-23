<<<<<<< HEAD
-- 10.sql, write a SQL query to find the 10 public school districts with the highest per-pupil expenditures.

SELECT expenditures.per_pupil_expenditure, districts.name
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
WHERE districts.type = 'Public School District'
ORDER BY expenditures.per_pupil_expenditure DESC LIMIT 10;
=======
-- 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate.
-- Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.

SELECT schools.name, expenditures.per_pupil_expenditure, graduation_rates.graduated
FROM schools
JOIN districts
ON schools.district_id = districts.id
JOIN expenditures
ON districts.id = expenditures.district_id
JOIN graduation_rates
ON schools.id = graduation_rates.school_id
ORDER BY expenditures.per_pupil_expenditure
DESC, schools.name
ASC;
>>>>>>> d4c505bd2661cb9e1e609b1680538a854008c65f
