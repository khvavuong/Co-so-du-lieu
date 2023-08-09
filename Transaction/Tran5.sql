START TRANSACTION;

SELECT @flag := COUNT(student_id) FROM scores 
	WHERE p_student_id = student_id AND p_subject_id = subject_id
		AND p_oral_score = oral_score AND p_midterm_score = midterm_score
		AND p_final_score = final_score;

INSERT INTO scores(student_id, subject_id, oral_score, midterm_score, final_score)
	VALUES(p_student_id, p_subject_id, p_oral_score, p_midterm_score, p_final_score)

SELECT @flag_sc := final_score FROM scores
	WHERE p_student_id = student_id AND p_subject_id = subject_id 
		AND p_oral_score = oral_score AND p_midterm_score = midterm_score
		AND p_final_score = final_score;

IF (@flag_sb = 0) THEN 
ROLLBACK;

ELSE IF (@flag_sc != 0) THEN 
INSERT INTO student_rate, student_id, subject_id, oral_score, midterm_score, final_score)
	VALUES(p_student_rate, p_student_id, p_subject_id, p_oral_score, p_midterm_score, p_final_score);

COMMIT;
ELSE COMMIT;
END IF;