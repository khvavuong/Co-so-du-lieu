USE education;
WITH id(wherenull) AS(
	SELECT student_id FROM parents AS p
		WHERE p.phone IS NULL
			OR p.email IS NULL
)
SELECT student_id, student_name FROM students AS s, id
	WHERE s.student_id = id.wherenull
	ORDER BY s.student_id