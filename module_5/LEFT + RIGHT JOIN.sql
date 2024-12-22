USE Hospital;

----------
-- LEFT JOIN (LEFT OUTER JOIN)
-- RIGHT JOIN (RIGHT OUTER JOIN)

-- Retrieve all patients and their appointments, including patients with no appointments:
SELECT p.full_name, a.appointment_date
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id;

-- Retrieve all doctors and their appointments, including 
-- doctors with no appointments, sorted by doctor name:
SELECT d.full_name, a.appointment_date
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
ORDER BY d.full_name ASC;

-- Retrieve all appointments and their corresponding patients, including
-- appointments with no corresponding patients:
SELECT a.appointment_date, p.full_name
FROM Appointments a
RIGHT JOIN Patients p ON a.patient_id = p.patient_id;


-- Retrieve all patients and their appointment statuses, including 
-- patients with no appointments, and sort by patient name:
SELECT p.full_name, a.status
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
ORDER BY p.full_name ASC;

--Retrieve all medical records and their corresponding doctors, including medical records with no corresponding doctors, and sort by visit date:
SELECT mr.visit_date, d.full_name
FROM MedicalRecords mr
RIGHT JOIN Doctors d ON mr.doctor_id = d.doctor_id
ORDER BY mr.visit_date ASC;

