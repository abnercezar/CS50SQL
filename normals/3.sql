-- Em 3.sql, escolha um local e escreva uma consulta SQL para encontrar a temperatura normal em 0, 100 e 200 metros.
-- Localização escolhida: Golfo do Maine (região oceânica com dados disponíveis)
-- Coordenadas: 42.5° N, -69.5° W

SELECT "0m", "100m", "200m" FROM normals
WHERE "latitude" = 42.5 AND "longitude" = -69.5;