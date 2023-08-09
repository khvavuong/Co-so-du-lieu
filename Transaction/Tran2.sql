START TRANSACTION;

SELECT new_subject_id = MAX(subject_id) + 1 FROM subjects;

INSERT INTO subjects(subject_id, subject_name)
	VALUES(new_subject_id, "new_subject_name");

INSERT INTO teachers(teacher_id, teacher_name, age, subject_id, school_id)
	VALUES(id_teacher, "name_teacher", new_subject_id, school_id);

INSERT INTO scores(student_id, subject_id, oral_score, midterm_score, final_score)
	VALUES(student_id, new_subject_id, oral_score, midterm_score, final_score);

	COMMIT;

