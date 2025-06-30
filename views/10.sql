-- Em 10.sql, consulta personalizada: "Quais são as 10 impressões mais coloridas
-- (maior entropia) que não são de Hokusai, ordenadas por entropia?"
SELECT english_title AS "Artwork Title",
       artist AS "Artist",
       entropy AS "Entropy Level"
FROM views
WHERE artist != 'Hokusai'
ORDER BY entropy DESC, english_title ASC
LIMIT 10;