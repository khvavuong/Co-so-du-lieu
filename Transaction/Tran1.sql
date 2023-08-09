START TRANSACTION;

SELECT ID_new_student = MAX(ID) + 1 FROM students;

INSERT INTO students(student_id, student_name, date_of_birth, gender, id)
	VALUES(ID_new_studnet, "A", birth, gender, id_student);

COMMIT;