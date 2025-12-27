-- 8.sql, escreva uma consulta SQL para exibir os nomes de todos os distritos escolares
-- e o número de alunos matriculados em cada um.
-- Usa LEFT JOIN para incluir distritos sem linhas em `expenditures`.
SELECT districts.name, SUM(expenditures.pupils) AS pupils
FROM districts
JOIN expenditures
ON districts.id = expenditures.district_id
GROUP BY districts.name
ORDER BY pupils ASC;