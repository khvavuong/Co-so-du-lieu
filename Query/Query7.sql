SELECT teacher_id, teacher_name, age, school_name 
FROM teachers INNER JOIN schools
ON teachers.school_id = 1
AND schools,school_id = 1
WHERE age BETWEEN 20 AND 30
ORDER BY teacher_id ASC