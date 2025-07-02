-- Consulta SQL para encontrar nome e sobrenome de jogadores que não nasceram nos Estados Unidos
-- Ordenados alfabeticamente por nome e depois por sobrenome
SELECT first_name, last_name
FROM players
WHERE birth_country IS NOT NULL
    AND birth_country <> 'United States'
ORDER BY first_name, last_name;