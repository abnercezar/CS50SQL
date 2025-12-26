-- 8.sql, escreva uma consulta SQL para exibir os nomes de todos os distritos escolares
-- e o número de alunos matriculados em cada um.
-- Usa LEFT JOIN para incluir distritos sem linhas em `expenditures`.
SELECT districts.name,
	   COALESCE(SUM(
		   CASE
			   WHEN TRIM(COALESCE(expenditures.pupils, '')) = '' THEN 0
			   ELSE CAST(REPLACE(expenditures.pupils, ',', '') AS INTEGER)
		   END
	   ), 0) AS pupils
FROM districts
LEFT JOIN expenditures ON districts.id = expenditures.district_id
GROUP BY districts.id, districts.name
ORDER BY pupils DESC;