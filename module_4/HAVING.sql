use Hospital;

--------
-- Having Clause

-- Count the number of patients by gender and only include groups with more than 1 patient:
SELECT gender, COUNT(*) AS NumberOfPatients
FROM Patients
GROUP BY gender
HAVING COUNT(*) > 1;

-- Find the total number of appointments for each status and only include statuses with more than 2 appointments:
SELECT status, COUNT(*) AS NumberOfAppointments
FROM Appointments
GROUP BY status
HAVING COUNT(*) > 1;

--Find the earliest appointment date for each patient and only include patients with at least 2 appointments:
SELECT patient_id, MIN(appointment_date) AS FirstAppointment
FROM Appointments
GROUP BY patient_id
HAVING COUNT(*) >= 2;

-- Find the total number of completed appointments for each patient within December 2024 and only include 
-- patients with more than 1 completed appointment, 
-- sorted by the number of appointments in descending order:
SELECT patient_id, COUNT(*) AS CompletedAppointments
FROM Appointments
WHERE status = 'Completed' AND appointment_date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY patient_id
HAVING COUNT(*) > 1
ORDER BY CompletedAppointments DESC;

--Retrieve the distinct combinations of doctor specialties 
-- and the minimum contact number for each specialty where the specialty 
-- contains 'Cardio', and only include specialties with more than 2 doctors, sorted by specialty:
SELECT specialty, MIN(contact_number) AS MinContactNumber
FROM Doctors
WHERE specialty LIKE '%Cardio%'
GROUP BY specialty
HAVING COUNT(*) >= 1
ORDER BY specialty;


