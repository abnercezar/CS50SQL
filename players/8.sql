-- Consulta SQL para encontrar altura e peso médios de jogadores que estrearam em ou após 1º de janeiro de 2000
-- Arredondados para duas casas decimais
SELECT ROUND(AVG(height), 2) AS "Average Height",
ROUND(AVG(weight), 2) AS "Average Weight"
FROM players
WHERE debut >= '2000-01-01';