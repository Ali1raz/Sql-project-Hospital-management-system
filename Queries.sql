use Hospital;

select * from Doctors;
select * from Patients;
select * from MedicalRecords;
select * from Appointments;

-- add col in tables:
--alter table doctors
--add city nvarchar(40);

-- modify column:
--alter table doctors
--alter column city nvarchar(10);

-- droping column:
--alter table doctors drop column city;

-- select 
select full_name, specialty from Doctors
where doctor_id = 2;

select * from Patients where date_of_birth < '1993-1-1';
select * from Patients where date_of_birth = '1993-%';

-- update rows:
--update Patients 
--set date_of_birth = '1993-01-01',
--	full_name = 'Ripper'
--where patient_id = 6;

-- delete a row
--delete from MedicalRecords
--where record_id = 1;



