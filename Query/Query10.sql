USE education;
SELECT s.student_id, s.student_name, p.phone, p.email
FROM students AS s LEFT JOIN parents AS p
ON s.student_id = p.student_id
WHERE p.phone IS NULL
	OR p.email IS NULL
ORDER BY student_id ASC 