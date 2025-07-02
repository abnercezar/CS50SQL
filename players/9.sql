-- Consulta SQL para encontrar jogadores que jogaram sua última partida na MLB em 2022
-- Ordenados alfabeticamente por nome e depois por sobrenome
SELECT first_name, last_name
FROM players
WHERE final_game LIKE '2022%'
ORDER BY first_name, last_name;