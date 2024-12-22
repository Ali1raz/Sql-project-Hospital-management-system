USE Hospital;

---------
-- FULL JOIN (FULL OUTER JOIN)
-- CROSS JOIN [cartesian product of both tables]
-- SELF JOIN [joined with itself]

-- Retrieve all patients and their appointments, including patients with no appointments
-- and appointments with no patients:
SELECT p.full_name, a.appointment_date
FROM Patients p
FULL JOIN Appointments a ON p.patient_id = a.patient_id;

-- Retrieve all doctors and their appointments, including doctors with
-- no appointments and appointments with no doctors:
SELECT d.full_name, a.appointment_date
FROM Doctors d
FULL JOIN Appointments a ON d.doctor_id = a.doctor_id;

--Generate all combinations of patients and doctors:
SELECT p.full_name AS patient_name, d.full_name AS doctor_name
FROM Patients p
CROSS JOIN Doctors d;

-- Generate all combinations of appointment statuses and genders of patients:
SELECT a.status, p.gender
FROM Appointments a
CROSS JOIN Patients p;

-- Find patients who have appointments with the same doctor on the
-- same date
SELECT p1.full_name AS patient1, p2.full_name AS patient2, a1.appointment_date, d.full_name AS doctor_name
   FROM Appointments a1
   INNER JOIN Appointments a2 ON a1.doctor_id = a2.doctor_id AND a1.appointment_date = a2.appointment_date AND a1.appointment_id <> a2.appointment_id
   INNER JOIN Patients p1 ON a1.patient_id = p1.patient_id
   INNER JOIN Patients p2 ON a2.patient_id = p2.patient_id
   INNER JOIN Doctors d ON a1.doctor_id = d.doctor_id;

--List all patients who live at the same address:
SELECT p1.full_name AS patient1, p2.full_name AS patient2, p1.address
FROM Patients p1
INNER JOIN Patients p2 ON p1.address = p2.address AND p1.patient_id <> p2.patient_id;

