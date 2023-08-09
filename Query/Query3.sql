WITH hocPhi(averange) AS(
SELECT student_id, student_name, fee FROM students
INNER JOIN tuition_fee ON students_id = tuition_fee.id
JOIN hocPhi
WHERE fee > hocPhi.averange
ORDER BY student_id