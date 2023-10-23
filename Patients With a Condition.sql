SELECT *
FROM Patients
WHERE conditions REGEXP '\\bDIAB1'
GROUP BY patient_id , patient_name
ORDER BY patient_id ASC;
