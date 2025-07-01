-- Em 1.sql, escreva uma consulta SQL para encontrar a temperatura normal da superfície do oceano no Golfo do Maine, na costa de Massachusetts.
-- Para encontrar essa temperatura, observe os dados associados a 42,5° de latitude e -69,5° de longitude .
-- Lembre-se de que você pode encontrar a temperatura normal da superfície do oceano na 0mcoluna, que representa 0 metros de profundidade!
SELECT "0m" FROM normals
WHERE "latitude" = 42.5 AND "longitude" = -69.5;