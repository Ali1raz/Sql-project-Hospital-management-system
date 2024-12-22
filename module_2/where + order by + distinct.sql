use Hospital;

select * from MedicalRecords;
-------------
-- where clause:

-- retrieve all patients with the gender 'M'
select * from Patients
where gender = 'M';

-- find all appointments that are scheduled on '2024-12-26'
select * from Appointments
where appointment_date = '2024-12-26';

-- select all medical records where the diagnosis is 'Hypertension':
select * from MedicalRecords
where diagnosis like 'Hyp%';

-- get all doctors with the specialty 'Cardiology'
select * from Doctors
where specialty like 'card%';

-- find all completed appointments
select * from Appointments
where status = 'Completed';

-- order by:

-- Sort Patients by date_of_birth in ascending order
select * from Patients
order by date_of_birth asc;

-- Sort Patients by full_name in descending order
select * from Patients
order by full_name desc;

-- Sort Appointments by appointment_date and appointment_time in ascending order:
select * from Appointments
order by appointment_date asc,
	appointment_time asc; 

-- Sort MedicalRecords by visit_date in descending order and then by patient_id in ascending order
select * from MedicalRecords
order by visit_date desc, patient_id asc;

-- Find all patients whose full_name starts with 'J', sorted by date_of_birth in ascending order.
select * from Patients
where full_name like 'J%'
order by date_of_birth asc;

-- Select all medical records where the diagnosis is 'Hypertension'
-- or 'Diabetes', and sort them by visit_date in descending order and patient_id in ascending order.
select * from MedicalRecords
where diagnosis in ('Hy%', 'Dia%')
order by visit_date desc,
patient_id asc;


-- Distinct keyword:

-- Retrieve distinct patient genders:
select distinct gender from Patients;

-- Find distinct appointment statuses and sort them in ascending order
select distinct status from Appointments
order by status asc;

-- Select distinct diagnoses from medical records 
-- where the visit date is in 2024, and 
-- sort them by diagnosis in descending order
select distinct diagnosis from MedicalRecords
where year(visit_date) = '2024'
order by diagnosis desc;

-- Retrieve distinct appointment dates 
-- for a specific doctor (e.g., doctor_id = 5) and sort them by date
select distinct appointment_date from Appointments
where doctor_id = 5
order by appointment_date;

-- Select distinct combinations of patient IDs and doctor IDs from the Appointments table 
-- where the appointment status is 'Scheduled', and sort 
-- by patient ID first and then by doctor ID
select distinct patient_id, doctor_id from Appointments
where status like 'Sch%'
order by patient_id asc, doctor_id;

-- Retrieve distinct visit dates and diagnosis combinations
-- from the MedicalRecords table where the visit date is between '
-- 2024-12-01' and '2024-12-31', and sort by visit date first and then by diagnosis:
select distinct visit_date, diagnosis from MedicalRecords
where visit_date between '2024-12-01' and '2024-12-31'
order by visit_date, diagnosis;


