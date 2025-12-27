-- 9.sql, escreva uma consulta SQL para encontrar o(s) nome(s) do(s) distrito(s)
-- escolar(es) com o menor número de alunos. Apresente apenas o(s) nome(s).

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