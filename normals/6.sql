-- Em 6.sql, escreva uma consulta SQL para retornar todas as temperaturas oceânicas normais a 50 m de profundidade,
-- bem como seus respectivos graus de latitude e longitude, dentro do Mar Arábico.
-- Mar Arábico definido pelas coordenadas:
-- 20° de latitude, 55° de longitude
-- 20° de latitude, 75° de longitude
-- 0° de latitude, 55° graus de longitude
-- 0° de latitude, 75° graus de longitude

SELECT "latitude", "longitude", "50m" FROM normals
WHERE "latitude" BETWEEN 0 AND 20
AND "longitude" BETWEEN 55 AND 75;