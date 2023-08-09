START TRANSACTION;

SELECT @flag := COUNT(student_id) FROM students WHERE student_id = id_xoa_hs;

IF (@flag = 0)
THEN ROLLBACK;
END IF;

UPDATE attendance SET student_id = p_student_id, num_of_absences = p_num_of_absences;
	WHERE student_id = p_student_id;

UPDATE parents SET student_id = p_student_id, phone = p_phone, email = p_email;
	WHERE student_id = p_student_id;

UPDATE scores SET student_id = p_student_id, oral_score = p_oral_score,
				midterm_score = p_midterm_score, final_score = p_final_score
	WHERE student_id = p_student_id;


UPDATE students SET student_id = p_student_id, student_name = p_student_name,
				date_of_birth = p_date_of_birth, gender = p_gender, id = p_id
	WHERE student_id = p_student_id;

UPDATE FROM tuition_fee SET id = p_id, fee =p_fee WHERE (SELECT students_id FROM students
							INNER JOIN tuition_fee WHERE student_id = tuition_fee.id)
								AND students.student_id = id_xoa_hs);

COMMIT;