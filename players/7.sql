-- Consulta SQL para contar jogadores que rebatem com uma mão e arremessam com a outra
-- (destro rebatendo e canhoto arremessando, ou vice-versa)
SELECT COUNT(*) AS count
FROM players
WHERE (bats = 'R' AND throws = 'L') OR (bats = 'L' AND throws = 'R');