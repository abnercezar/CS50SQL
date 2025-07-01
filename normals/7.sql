-- Em 7.sql, escreva uma consulta SQL para encontrar a temperatura média da superfície do oceano,
-- arredondada para duas casas decimais, ao longo do equador.
-- As temperaturas da superfície do oceano no equador podem ser encontradas em todas as longitudes
-- entre as latitudes -0,5° e 0,5°, inclusive.

SELECT ROUND(AVG("0m"), 2) AS "average equator ocean surface temperature"
FROM normals
WHERE "latitude" BETWEEN -0.5 AND 0.5;