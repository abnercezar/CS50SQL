-- Em 10.sql, escreva uma consulta SQL para determinar para quantos pontos de latitude temos pelo menos um ponto de dados.
-- (Por que podemos não ter pontos de dados para todas as latitudes?)
-- Resposta: Nem todas as latitudes têm oceano - algumas são terrestres, polares ou áreas sem dados coletados.

SELECT COUNT(DISTINCT "latitude")
FROM normals;
