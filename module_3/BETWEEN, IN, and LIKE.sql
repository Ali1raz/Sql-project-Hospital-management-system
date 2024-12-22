USE Hospital;

---------
-- BETWEEN, IN, and LIKE Clauses:

-- Find patients born between '1990-01-01' and '2000-12-31':
select * from Patients
where date_of_birth between '1990-01-01' and '2000-12-31'
order by date_of_birth asc;

-- Retrieve appointments with statuses 'Scheduled' or 'Completed'
select * from Appointments
where status in ('Scheduled', 'Completed');

-- Select patients whose names start with 'J':
select * from Patients
where full_name like 'J%';

-- Retrieve distinct appointment dates where the 
-- appointment time is between '10:00:00' and '14:00:00', and sort them by date:
select distinct appointment_date from Appointments
where appointment_time between '10:00:00' and '14:00:00'
order by appointment_date;

-- Find all patients whose full name ends with 'son', 
-- and sort them by date of birth in descending order
select * from Patients
where full_name like '%son'
order by date_of_birth desc;

-- Get appointments for patients with IDs 1, 2, or 3, where 
-- the status is 'Scheduled' or 'Completed', and sort them by appointment date
select * from Appointments
where patient_id in (1, 2, 3)
and status in ('Scheduled', 'Completed')
order by appointment_date;

