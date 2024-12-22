-- create database Hospital;

use Hospital;

---- Create Patients Table
--CREATE TABLE Patients (
--    patient_id INT IDENTITY(1,1) PRIMARY KEY,
--    full_name NVARCHAR(255) NOT NULL,
--    gender CHAR(1) CHECK (gender IN ('M', 'F')),
--    date_of_birth DATE NOT NULL,
--    contact_number NVARCHAR(15),
--    address NVARCHAR(255)
--);

---- Create Doctors Table
--CREATE TABLE Doctors (
--    doctor_id INT IDENTITY(1,1) PRIMARY KEY,
--    full_name NVARCHAR(255) NOT NULL,
--    specialty NVARCHAR(100) NOT NULL,
--    contact_number NVARCHAR(15)
--);

---- Create Appointments Table
--CREATE TABLE Appointments (
--    appointment_id INT IDENTITY(1,1) PRIMARY KEY,
--    patient_id INT NOT NULL,
--    doctor_id INT NOT NULL,
--    appointment_date DATE NOT NULL,
--    appointment_time TIME NOT NULL,
--    status NVARCHAR(50) CHECK (status IN ('Scheduled', 'Completed', 'Canceled')) DEFAULT 'Scheduled',
--    notes NVARCHAR(500),
--    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
--    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
--);

---- Create MedicalRecords Table
--CREATE TABLE MedicalRecords (
--    record_id INT IDENTITY(1,1) PRIMARY KEY,
--    patient_id INT NOT NULL,
--    doctor_id INT NOT NULL,
--    visit_date DATE NOT NULL,
--    diagnosis NVARCHAR(255) NOT NULL,
--    treatment NVARCHAR(500),
--    prescription NVARCHAR(500),
--    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
--    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
--);

select * from patients;

--INSERT INTO Patients (full_name, gender, date_of_birth, contact_number, address)
--VALUES
--('John Doe', 'M', '1990-05-15', '123-456-7890', '123 Main St'),
--('Jane Smith', 'F', '1985-03-22', '987-654-3210', '456 Oak Ave'),
--('Emma Brown', 'F', '2000-12-10', '555-123-4567', '789 Pine St'),
--('Liam Johnson', 'M', '1988-07-19', '666-987-6543', '321 Elm St'),
--('Sophia Davis', 'F', '1995-11-30', '777-654-7890', '654 Maple Ave'),
--('Noah Wilson', 'M', '1993-03-12', '888-543-2109', '987 Birch Blvd');

--INSERT INTO Doctors (full_name, specialty, contact_number)
--VALUES
--('Dr. Alice Johnson', 'Cardiology', '111-222-3333'),
--('Dr. Bob Brown', 'Orthopedics', '444-555-6666'),
--('Dr. Chris Taylor', 'Pediatrics', '333-444-5555'),
--('Dr. Emily Moore', 'Dermatology', '888-777-6666'),
--('Dr. Ethan Clark', 'Neurology', '999-888-7777'),
--('Dr. Olivia Lewis', 'General Medicine', '222-333-4444');

--INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, status, notes)
--VALUES
--(1, 1, '2024-12-26', '10:30:00', 'Scheduled', 'Routine check-up'),
--(2, 2, '2024-12-27', '14:00:00', 'Scheduled', 'Knee pain consultation'),
--(3, 3, '2024-12-28', '09:00:00', 'Completed', 'Fever and cold'),
--(4, 4, '2024-12-29', '11:00:00', 'Scheduled', 'Skin rash treatment'),
--(5, 5, '2024-12-30', '13:30:00', 'Canceled', 'Migraine consultation'),
--(6, 6, '2024-12-31', '15:00:00', 'Scheduled', 'Annual health check-up');

--INSERT INTO MedicalRecords (patient_id, doctor_id, visit_date, diagnosis, treatment, prescription)
--VALUES
--(1, 1, '2024-12-26', 'Hypertension', 'Lifestyle changes and medication', 'Amlodipine 5mg'),
--(2, 2, '2024-12-27', 'Knee Arthritis', 'Physical therapy and pain management', 'Ibuprofen 400mg'),
--(3, 3, '2024-12-28', 'Flu', 'Bed rest and hydration', 'Paracetamol 500mg'),
--(4, 4, '2024-12-29', 'Eczema', 'Topical cream application', 'Hydrocortisone cream'),
--(5, 5, '2024-12-30', 'Chronic Migraine', 'Pain management and relaxation techniques', 'Sumatriptan 50mg'),
--(6, 6, '2024-12-31', 'General Weakness', 'Vitamin supplements', 'Multivitamins');

