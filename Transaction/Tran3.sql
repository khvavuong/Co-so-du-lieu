START TRANSACTION;

SELECT @flag := COUNT(student_id) FROM students WHERE student_id = id_xoa_hs;

IF (@flag = 0)
THEN ROLLBACK;
END IF;

DELETE FROM attendance WHERE student_id = id_xoa_hs;

DELETE FROM parents WHERE student_id = id_xoa_hs;

DELETE FROM scores WHERE student_id = id_xoa_hs;

DELETE FROM students WHERE student_id = id_xoa_hs;

DELETE FROM tuition_fee SET id = p_id, fee =p_fee WHERE (SELECT students_id FROM students
							INNER JOIN tuition_fee WHERE student_id = tuition_fee.id)
								AND students.student_id = id_xoa_hs);

COMMIT;