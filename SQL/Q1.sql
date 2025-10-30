-- 1) Create one Database and create Two Table (student, project_details) First Table column name Roll, Name, Gender, and Amount. Second Table column name sr_code, Company_name, Project, country and insert 10 rows data roll as primary key, sr_code as foreign key.

-- 1. Create Database
CREATE DATABASE college_db;
USE college_db;

-- 2. Create Table: student
CREATE TABLE student (
    Roll INT PRIMARY KEY,
    Name VARCHAR(50),
    Gender CHAR(1),
    Amount DECIMAL(10,2)
);

-- 3. Create Table: project_details
CREATE TABLE project_details (
    sr_code INT,
    Company_name VARCHAR(50),
    Project VARCHAR(50),
    Country VARCHAR(50),
    FOREIGN KEY (sr_code) REFERENCES student(Roll)
);

-- 4. Insert 10 rows
INSERT INTO student VALUES
(1, 'Ravi', 'M', 1000),
(2, 'Priya', 'F', 2000),
(3, 'Amit', 'M', 1500),
(4, 'Neha', 'F', 2200),
(5, 'Raj', 'M', 1800),
(6, 'Simran', 'F', 2500),
(7, 'Vikas', 'M', 3000),
(8, 'Anjali', 'F', 1700),
(9, 'Arjun', 'M', 2800),
(10, 'Pooja', 'F', 2600);

INSERT INTO project_details VALUES
(1, 'TCS', 'AI System', 'India'),
(2, 'Infosys', 'Banking App', 'USA'),
(3, 'Wipro', 'E-Commerce', 'UK'),
(4, 'IBM', 'Cloud Project', 'Canada'),
(5, 'TechMahindra', 'ChatBot', 'India'),
(6, 'Google', 'Search Engine', 'USA'),
(7, 'Amazon', 'AWS', 'Germany'),
(8, 'Meta', 'VR Project', 'France'),
(9, 'Apple', 'iOS App', 'USA'),
(10, 'Microsoft', 'Azure', 'India');
