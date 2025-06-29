-- Em 3.sql, escreva uma consulta SQL para contar quantas gravuras de Hokusai incluem
-- "Fuji" no título em inglês. Embora todas as gravuras de Hokusai fossem focadas no Monte Fuji,
-- em quantas delas "Fuji" apareceu no título?
SELECT COUNT(*) FROM views
WHERE artist = 'Hokusai'
AND english_title LIKE '%Fuji%';