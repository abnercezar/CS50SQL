-- SQL query to find players with complete birth and debut data
-- Using AS to rename columns, WHERE for conditions, ORDER BY to sort
SELECT first_name AS "First Name",
       last_name AS "Last Name",
       debut AS "Debut Date",
       birth_day AS "Birth Day",
       birth_month AS "Birth Month",
       birth_year AS "Birth Year"
FROM players
WHERE debut IS NOT NULL
  AND birth_day IS NOT NULL
  AND birth_month IS NOT NULL
  AND birth_year IS NOT NULL
ORDER BY birth_year ASC, birth_month ASC, birth_day ASC
LIMIT 10;
