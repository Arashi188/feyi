create database hospital_db;
use hospital_db;
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    gender VARCHAR(20),
    phone VARCHAR(20),
    consultation_fee DECIMAL(10, 2),
    medication_fee DECIMAL(10, 2),
    total_bill DECIMAL(10, 2)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    age INT,
    specialization VARCHAR(100)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,

    FOREIGN KEY (patient_id)
        REFERENCES patients(patient_id),

    FOREIGN KEY (doctor_id)
        REFERENCES doctors(doctor_id)
);

INSERT INTO patients (
    patient_id,
    full_name,
    age,
    gender,
    phone,
    consultation_fee,
    medication_fee,
    total_bill
)
VALUES
(
    1,'John Doe', 35,'Male','08012345678',10000, 5000, 15000
);


INSERT INTO doctors (
    doctor_id,
    full_name,
    age,
    specialization
)
VALUES (
    1, 'Dr. Adewale',45, 'Cardiologist'
);

INSERT INTO appointments (
    appointment_id,
    patient_id,
    doctor_id,
    appointment_date
)
VALUES (
    1, 1, 1, '2026-10-15'
);

SELECT * FROM patients;

SELECT *
FROM patients
WHERE patient_id = 1;

SELECT *
FROM patients
WHERE full_name = 'John Doe';

SELECT *
FROM patients
WHERE full_name LIKE '%John%';

SELECT *
FROM appointments;

SELECT
    appointments.appointment_id,
    patients.full_name AS patient_name,
    doctors.full_name AS doctor_name,
    doctors.specialization,
    appointments.appointment_date
FROM appointments
JOIN patients
    ON appointments.patient_id = patients.patient_id
JOIN doctors
    ON appointments.doctor_id = doctors.doctor_id;
