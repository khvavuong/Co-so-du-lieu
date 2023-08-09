WITH final(scor) AS(
SELECT final_score FROM scores
UNION
SELECT final_score FROM scores_2
UNION
SELECT final_score FROM scores_3
UNION
SELECT final_score FROM scores_4
)
SELECT AVG(final.scor) AS avg_final FROM final