SELECT teacher_id, teacher_name, COUNT(subject_id) AS SoLuong
FROM teachers
GROUP BY teacher_name
HAVING COUNT(subject_id) > 2
ORDER BY teacher_id;