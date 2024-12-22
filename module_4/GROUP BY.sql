use Hospital;

--------
-- GROUP BY Clause

-- Count the number of patients by gender:
select gender, count(*) as [Numbre of patients]
from Patients group by gender;

-- Sum the number of appointments for each status
select status, count(*) from Appointments
group by status;

-- Find the earliest appointment date for each patient
select patient_id, MIN(appointment_date) from Appointments
group by patient_id;

-- Retrieve the maximum diagnosis length for each diagnosis category in medical records:
SELECT diagnosis, MAX(LEN(diagnosis)) AS MaxDiagnosisLength
FROM MedicalRecords
GROUP BY diagnosis;

-- Count the number of appointments for each doctor and only include those 
-- doctors with at least one 'Scheduled' appointment. Sort the results by doctor ID
select doctor_id,COUNT(*) from Appointments
where status like 'Sch%'
group by doctor_id
order by doctor_id;

-- Sum the number of appointments for each status where the 
-- appointment time is between '08:00:00' and '18:00:00',
-- and sort the results by status

-- Calculate the average age of patients for each 
-- gender where the patient's name starts with 'A' or 'J'