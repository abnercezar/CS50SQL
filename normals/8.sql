-- Em 8.sql, escreva uma consulta SQL para encontrar os 10 locais com a menor temperatura normal da superfície do oceano,
-- classificados do mais frio para o mais quente. Se dois locais tiverem a mesma temperatura normal da superfície do oceano,
-- classifique por latitude, da menor para a maior. Inclua colunas de latitude, longitude e temperatura da superfície.

SELECT "latitude", "longitude", "0m"
FROM normals
ORDER BY "0m" ASC, "latitude" ASC
LIMIT 10;
