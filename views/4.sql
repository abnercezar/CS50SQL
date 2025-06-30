-- Em 4.sql, escreva uma consulta SQL para contar quantas gravuras de Hiroshige têm títulos em
-- inglês que se referem à "Capital Oriental". As gravuras de Hiroshige foram criadas no "período Edo" do Japão,
-- fazendo referência à capital oriental, Edo , atual Tóquio.
SELECT COUNT(*) FROM views
WHERE artist = 'Hiroshige' AND english_title LIKE '%Eastern%';