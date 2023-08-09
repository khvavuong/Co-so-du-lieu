WITH infor_teacher AS
SELECT DISTINCT teacher_id, teacher_name,
	(SELECT school_name FORM schools AS s INNER JOIN teachers AS t ON s.shcool_id = t.school_id)
	AS 'school',
	(SELECT subject_name FROM subject AS s INNER JOIN teachers AS t ON s.subject_id = t.subject_id)
	AS 'subject'
FROM teachers AS t INNER JOIN schools AS s ON t.school_id = s.school_id
INNER JOIN subject AS sb ON t.subject_id = sb.subject_id
)
SELECT teacher_id, teacher_name,
'school' AS school_name, 'subject' AS subject_name
FROM infor_teacher
ORDER BY teacher_id ASC