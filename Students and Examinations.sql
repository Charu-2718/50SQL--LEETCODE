# Write your MySQL query statement below
SELECT s.student_id, s.student_name, 
a.subject_name, COUNT(b.subject_name) AS attended_exams
FROM Students s
JOIN Subjects a
LEFT JOIN Examinations b ON s.student_id=b.student_id AND a.subject_name=b.subject_name
GROUP BY s.student_id ,a.subject_name
ORDER BY s.student_id ,a.subject_name;