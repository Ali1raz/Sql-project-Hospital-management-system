use Hospital;

-------------
-- Using Operators (AND, OR, NOT):

-- Find patients who are female and were born before 1990-01-01
select * from Patients
where gender like 'F' and date_of_birth < '1990-01-01'
order by date_of_birth asc;

-- Retrieve appointments that are either scheduled or completed
select * from Appointments
where status like 'com%' or status like 'Sch%';

-- Select distinct diagnoses from medical records where
-- the diagnosis is not 'Flu'
select distinct diagnosis from medicalRecords
where diagnosis != 'Flu';

/*
Here are practice questions for you to try using AND, OR, NOT, along with WHERE, ORDER BY, and DISTINCT:

1. Retrieve distinct patients who are either male or were born after 2000, and sort them by full name in ascending order.
2. Find all appointments where the status is either 'Scheduled' or 'Completed', and the appointment date is before '2024-12-31', and sort them by appointment date in descending order.
3. Select distinct treatments from medical records where the diagnosis is either 'Hypertension' or 'Diabetes', and sort them by treatment in ascending order.
4. Get all doctors who are not specialists in 'Pediatrics' and sort them by their specialty and then by full name in descending order.
5. Retrieve appointments for doctors with doctor_id 1, 2, or 3, where the status is not 'Canceled', and sort them by appointment date in ascending order and then by status.
*/