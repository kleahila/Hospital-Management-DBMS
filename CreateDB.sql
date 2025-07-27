-- 1. Create MedicalSpecialty first, since it's referenced by Doctor
CREATE TABLE MedicalSpecialty (
    SpecialtyID INT PRIMARY KEY,
    SpecialtyField VARCHAR(100)
);

-- 2. Create Department
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    FloorNumber INT,
    NrOfEmployees INT
);

-- 3. Create SalariesAccounts
CREATE TABLE SalariesAccounts (
    AccountNumber INT PRIMARY KEY,
    IBAN VARCHAR(34),
    Salary DECIMAL(10,2),
    Bonus DECIMAL(10,2)
);

-- 4. Create MedicalRecord
CREATE TABLE MedicalRecord (
    MedicalRecordID INT PRIMARY KEY,
    Description TEXT,
    RegistrationDate DATE
);

-- 5. Create Patient (depends on MedicalRecord)
CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    PhoneNumber VARCHAR(20),
    BloodType VARCHAR(5),
    MedicalRecordID INT,
    FOREIGN KEY (MedicalRecordID) REFERENCES MedicalRecord(MedicalRecordID)
);

-- 6. Create Doctor (depends on Department, SalariesAccounts, MedicalSpecialty)
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    DateOfBirth DATE,
    PhoneNumber VARCHAR(20),
    Gender VARCHAR(10),
    AccountNumber INT,
    DepartmentID INT,
    SpecialtyID INT,
    FOREIGN KEY (AccountNumber) REFERENCES SalariesAccounts(AccountNumber),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    FOREIGN KEY (SpecialtyID) REFERENCES MedicalSpecialty(SpecialtyID)
);

-- 7. Create Nurse (depends on Department, SalariesAccounts)
CREATE TABLE Nurse (
    NurseID INT PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    AccountNumber INT,
    DepartmentID INT,
    FOREIGN KEY (AccountNumber) REFERENCES SalariesAccounts(AccountNumber),
    FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID)
);

-- 8. Create Appointment (depends on Patient)
CREATE TABLE Appointment (
    AppointmentID INT PRIMARY KEY,
    DateOfMeet DATE,
    Time TIME,
    isDone BOOLEAN,
    AppointmentBill DECIMAL(10,2),
    PatientID INT,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID)
);

-- 9. Create Conducts (depends on Doctor and Appointment)
CREATE TABLE Conducts (
    DoctorID INT,
    AppointmentID INT,
    PRIMARY KEY (DoctorID, AppointmentID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);

-- 10. Create WritesIn (depends on Doctor and MedicalRecord)
CREATE TABLE WritesIn (
    DoctorID INT,
    MedicalRecordID INT,
    PRIMARY KEY (DoctorID, MedicalRecordID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (MedicalRecordID) REFERENCES MedicalRecord(MedicalRecordID)
);