-- Em 2.sql, escreva uma consulta SQL para encontrar a temperatura normal do sensor mais profundo próximo ao Golfo do Maine, na mesma coordenada acima.
-- O sensor mais profundo registra temperaturas a 225 metros de profundidade, então você pode encontrar esses dados na 225mcoluna.

SELECT "225m" FROM normals
WHERE "latitude" = 42.5 AND "longitude" = -69.5;