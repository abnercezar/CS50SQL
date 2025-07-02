-- Consulta SQL para encontrar nome, sobrenome e data de estreia de jogadores nascidos em Pittsburgh, PA
-- Ordenados pela data de estreia (mais antiga para mais recente) e depois alfabeticamente por nome e sobrenome
SELECT first_name, last_name, debut
FROM players
WHERE birth_city = 'Pittsburgh'
    AND birth_state = 'PA'
ORDER BY debut ASC, first_name, last_name;
