use Hospital;

--------
-- INNER JOIN

-- Join Patients and Appointments to get the full name of patients
-- and their appointment dates
select p.full_name, a.appointment_date
from Patients p
inner join Appointments a
on p.patient_id = a.patient_id;

-- Join Patients and Appointments to find the gender and 
-- appointment status of each patient
select p.gender, a.status
from Patients p
inner join Appointments a
on p.patient_id = a.patient_id;

-- Join Patients and Appointments to retrieve the full name of patients 
-- who have scheduled appointments and sort by appointment date
select p.full_name, a.appointment_date, a.status
from Patients p
inner join Appointments a
on p.patient_id = a.patient_id
where a.status like 'Sch%'
order by a.appointment_date;

-- Join Patients and Appointments to get distinct appointment dates for a specific patient (e.g., patient_id = 1):
select distinct a.appointment_date
from Patients p
inner join Appointments a
on p.patient_id = a.patient_id
where p.patient_id = 1;

-- Join Patients and Appointments to calculate the count of appointments 
-- for each patient:
SELECT Patients.full_name, COUNT(Appointments.appointment_id) AS AppointmentCount
FROM Patients
INNER JOIN Appointments ON Patients.patient_id = Appointments.patient_id
GROUP BY Patients.full_name;

-- Join Doctors and Appointments to find the full name of doctors and the appointment times 
-- for appointments scheduled between '2024-12-01' and '2024-12-31'
select d.full_name, a.appointment_time, a.status, a.appointment_date
from Doctors d
inner join Appointments a
on d.doctor_id = a.doctor_id
where a.status like 'Sch%'
and a.appointment_date between '2024-12-01' and '2024-12-31'
order by a.appointment_time asc;

-- Join Patients, Appointments, and Doctors to retrieve the full name of patients, 
-- their appointment dates, and the full name of their doctors:
select p.full_name as [patient], a.appointment_date, d.full_name as [doctor]
from Patients p
inner join Appointments a
on p.patient_id = a.patient_id
inner join Doctors d
on a.doctor_id = d.doctor_id
order by a.appointment_date;


