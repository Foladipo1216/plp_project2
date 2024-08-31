-- Part 2
CREATE DATABASE hospital_db;

-- Part 3.0
USE hospital_db;

-- Part 3.1
CREATE TABLE patients ( 
patient_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
date_of_birth DATE NOT NULL,
gender VARCHAR(255) NOT NULL,
language VARCHAR(255) NOT NULL
);

-- Part 3.2
CREATE TABLE providers (
provider_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
provider_speciality VARCHAR(255) NOT NULL,
email_address VARCHAR(255),
phone_number VARCHAR(255),
date_joined DATE NOT NULL
);

-- Part 3.3
CREATE TABLE visits (
visit_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
provider_id INT NOT NULL,
date_of_visit DATE NOT NULL,
date_scheduled DATE NOT NULL,
visit_department_id INT NOT NULL,
visit_type VARCHAR(255) NOT NULL,
blood_pressure_systollic INT,
blood_pressure_diastollic DECIMAL,
pulse DECIMAL,
visit_status VARCHAR(255) NOT NULL
);

-- Part 3.4
CREATE TABLE ed_visits (
ed_visit_id INT PRIMARY KEY AUTO_INCREMENT,
visit_id INT NOT NULL,
patient_id INT NOT NULL,
acuity INT NOT NULL,
reason_for_visit VARCHAR(255) NOT NULL,
disposition VARCHAR(255) NOT NULL
);

-- Part 3.5
CREATE TABLE admissions (
admission_id INT PRIMARY KEY AUTO_INCREMENT,
patient_id INT NOT NULL,
admission_date DATE NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(255) NOT NULL,
service VARCHAR(255) NOT NULL,
primary_diagnosis VARCHAR(255) NOT NULL
);

-- Part 3.6
CREATE TABLE discharges (
discharge_id INT PRIMARY KEY AUTO_INCREMENT,
admission_id INT NOT NULL,
patient_id INT NOT NULL,
discharge_date DATE NOT NULL,
discharge_disposition VARCHAR(255) NOT NULL
);