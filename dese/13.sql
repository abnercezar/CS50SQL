-- 13.sql: Finds districts that spend a lot but have few exemplary teachers
-- Question: Which districts are "inefficient" (spend above average but have a below-average percentage of exemplary teachers)?

-- Contexto: Esta consulta ajuda a identificar distritos que podem estar desperdiçando recursos,
-- pois investem mais dinheiro que a média, mas não conseguem ter professores de alta qualidade.
-- Útil para pais e administradores que querem otimizar gastos educacionais.

SELECT
    districts.name,
    expenditures.per_pupil_expenditure AS spending_per_student,
    staff_evaluations.exemplary AS pct_exemplary,
    staff_evaluations.proficient AS pct_proficient,
    staff_evaluations.needs_improvement AS pct_needs_improvement
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
WHERE districts.type = 'Public School District'
    AND expenditures.per_pupil_expenditure > (
        SELECT AVG(per_pupil_expenditure)
        FROM expenditures
        WHERE per_pupil_expenditure IS NOT NULL
    )
    AND staff_evaluations.exemplary < (
        SELECT AVG(exemplary)
        FROM staff_evaluations
        WHERE exemplary IS NOT NULL
    )
ORDER BY expenditures.per_pupil_expenditure DESC;
