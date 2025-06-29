-- Em 4.sql, escreva uma consulta para encontrar os títulos de episódios que ainda não têm um tópico listado.
SELECT title FROM episodes WHERE topic IS NULL;