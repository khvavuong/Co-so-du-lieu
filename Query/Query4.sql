SELECT teacher_id, teacher_name, age, 
CASE 
	WHEN t.age > 55 THEN 'Giáo viên đến độ tuổi nghỉ hưu'
	ELSE 'Giáo viên chưa đến tuổi nghỉ hưu'
END AS age_retire
FROM teachers AS t