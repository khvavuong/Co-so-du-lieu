WITH absen(maxium) AS(
SELECT MAX(num_of_absences)
	FROM attendance
)
SELECT student_id, student_name	
	FROM students
WHERE student_id IN (SELECT student_id
					FROM attendance, absen
					WHERE num_of_absences = absen.maxium)
ORDER BY student_id ASC
LIMIT 10;