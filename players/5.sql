-- Consulta SQL para encontrar nome e sobrenome de todos os rebatedores destros
-- Ordenados alfabeticamente por nome e depois por sobrenome
SELECT first_name, last_name
FROM players
WHERE bats = 'R'
ORDER BY first_name, last_name;