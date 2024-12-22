USE Hospital;

---------
-- COUNT, SUM, AVG, MIN, MAX

--  Count the number of male patients:
select count(*) from Patients
where gender = 'M';

-- Sum the total number of appointments that are 'Scheduled' or 'Completed'
SELECT SUM(CASE WHEN status IN ('Scheduled', 'Comleted') THEN 1 ELSE 0 END) AS TotalAppointments
   FROM Appointments;

-- Calculate the average age of patients who were born between 1990 and 2000:
select AVG(DATEDIFF(year, date_of_birth, getdate())) from patients
where date_of_birth between '1990-01-01' and '2000-12-31';

-- Retrieve the maximum appointment time for completed appointments and sort them by appointment date:
SELECT MAX(appointment_time) AS LatestAppointmentTime, appointment_date
FROM Appointments
WHERE status = 'Completed'
GROUP BY appointment_date
ORDER BY appointment_date ASC;


-- Sum the number of completed appointments between '2024-12-01' and '2024-12-31'
select sum(case when status = 'Completed' then 1 else 0 end) from Appointments
where appointment_date between '2024-12-01' and '2024-12-31';

-- Calculate the average diagnosis length for records 
-- where the visit date is in 2024 and diagnosis contains 'Flu'
select AVG(len(diagnosis)) from MedicalRecords
where year(visit_date) = '2024'
and diagnosis like '%Flu%';


