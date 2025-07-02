-- Consulta SQL para encontrar os IDs de linhas onde a coluna debut está faltando (NULL)
SELECT id
FROM players
WHERE debut IS NULL;