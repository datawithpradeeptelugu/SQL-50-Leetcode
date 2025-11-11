USE Leetcode

SELECT *
FROM Students
SELECT *
FROM Subjects
SELECT *
FROM Examinations

SELECT 
	st.student_id,
	st.student_name,
	sb.subject_name,
	count(EX.subject_name) AS attended_exams

FROM Students st
CROSS JOIN Subjects sb
LEFT JOIN Examinations EX
ON st.student_id=EX.student_id AND sb.subject_name=EX.subject_name
GROUP BY 
	st.student_id,
	st.student_name,
	sb.subject_name
ORDER BY st.student_id,SB.subject_name

