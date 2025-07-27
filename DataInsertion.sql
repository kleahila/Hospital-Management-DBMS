INSERT INTO MedicalSpecialty (SpecialtyID, SpecialtyField) VALUES
  (1, 'Cardiology'),
  (2, 'Neurology'),
  (3, 'Pediatrics'),
  (4, 'Oncology'),
  (5, 'Radiology'),
  (6, 'Dermatology'),
  (7, 'Psychiatry');

INSERT INTO Department (DepartmentID, DepartmentName, FloorNumber, NrOfEmployees) VALUES
  (1, 'Emergency',      1, 20),
  (2, 'Cardiology',     2, 15),
  (3, 'Neurology',      3, 10),
  (4, 'Radiology',      2,  8),
  (5, 'Oncology',       4, 12),
  (6, 'Pediatrics',     3, 18),
  (7, 'Administration', 1,  5);

INSERT INTO SalariesAccounts (AccountNumber, IBAN,               Salary,    Bonus) VALUES
  (1001, 'AL4720211109000000000012345', 50000.00, 5000.00),
  (1002, 'AL4720211109000000000012346', 52000.00, 4000.00),
  (1003, 'AL4720211109000000000012347', 48000.00, 3000.00),
  (1004, 'AL4720211109000000000012348', 47000.00, 3500.00),
  (1005, 'AL4720211109000000000012349', 51000.00, 4500.00),
  (1006, 'AL4720211109000000000012350', 49000.00, 3200.00),
  (1007, 'AL4720211109000000000012351', 53000.00, 6000.00);

INSERT INTO MedicalRecord (MedicalRecordID, Description,           RegistrationDate) VALUES
  (1, 'Annual checkup',    '2025-01-15'),
  (2, 'Flu symptoms',      '2025-02-02'),
  (3, 'Broken arm',        '2025-03-10'),
  (4, 'Skin rash',         '2025-03-25'),
  (5, 'Headache',          '2025-04-05'),
  (6, 'Chest pain',        '2025-04-15'),
  (7, 'High blood pressure','2025-05-01');


INSERT INTO Patient (PatientID, Name,   Surname,  DateOfBirth, Gender, PhoneNumber, BloodType, MedicalRecordID) VALUES
  (1, 'John',  'Doe',    '1980-06-10', 'Male',   '069-123-4567', 'A+', 1),
  (2, 'Jane',  'Smith',  '1990-08-22', 'Female', '069-234-5678', 'O-', 2),
  (3, 'Mike',  'Brown',  '1975-12-05', 'Male',   '069-345-6789', 'B+', 3),
  (4, 'Lucy',  'Davis',  '2000-02-17', 'Female', '069-456-7890', 'AB+', 4),
  (5, 'Tom',   'Wilson', '1985-11-30', 'Male',   '069-567-8901', 'O+', 5),
  (6, 'Anna',  'Taylor', '1995-04-14', 'Female', '069-678-9012', 'A-', 6),
  (7, 'Peter', 'Lee',    '1978-09-09', 'Male',   '069-789-0123', 'B-', 7);


INSERT INTO Doctor (DoctorID, Name,    Surname,     DateOfBirth,  PhoneNumber,  Gender, AccountNumber, DepartmentID, SpecialtyID) VALUES
  (1, 'Emily',  'Clark',    '1978-03-12', '069-111-2222', 'Female', 1001, 1, 1),
  (2, 'David',  'Lee',      '1982-07-25', '069-222-3333', 'Male',   1002, 2, 2),
  (3, 'Sarah',  'Johnson',  '1975-09-05', '069-333-4444', 'Female', 1003, 3, 3),
  (4, 'James',  'Williams', '1980-01-20', '069-444-5555', 'Male',   1004, 4, 4),
  (5, 'Olivia', 'Miller',   '1985-05-30', '069-555-6666', 'Female', 1005, 5, 5),
  (6, 'Michael','Davis',    '1979-11-11', '069-666-7777', 'Male',   1006, 6, 6),
  (7, 'Laura',  'Garcia',   '1983-12-22', '069-777-8888', 'Female', 1007, 7, 7);


INSERT INTO Nurse (NurseID, Name,   Surname,  PhoneNumber,    Email,                         AccountNumber, DepartmentID) VALUES
  (1, 'Nancy',  'Allen',  '069-888-9999', 'nancy.allen@example.com',   1001, 1),
  (2, 'Steven', 'King',   '069-999-0000', 'steven.king@example.com',   1002, 2),
  (3, 'Karen',  'Scott',  '069-000-1111', 'karen.scott@example.com',   1003, 3),
  (4, 'Brian',  'Adams',  '069-111-2222', 'brian.adams@example.com',   1004, 4),
  (5, 'Lisa',   'Nelson', '069-222-3333', 'lisa.nelson@example.com',    1005, 5),
  (6, 'Mark',   'Young',  '069-333-4444', 'mark.young@example.com',     1006, 6),
  (7, 'Susan',  'Hall',   '069-444-5555', 'susan.hall@example.com',     1007, 7);

INSERT INTO Appointment (AppointmentID, DateOfMeet,  Time,     isDone, AppointmentBill, PatientID) VALUES
  (1,  '2025-05-10', '09:00:00', TRUE,  50.00, 1),
  (2,  '2025-05-11', '10:30:00', FALSE, 75.00, 2),
  (3,  '2025-05-12', '11:15:00', TRUE,  60.00, 3),
  (4,  '2025-05-13', '08:45:00', FALSE, 55.00, 4),
  (5,  '2025-05-14', '14:00:00', TRUE,  80.00, 5),
  (6,  '2025-05-15', '15:30:00', FALSE, 65.00, 6),
  (7,  '2025-05-16', '16:15:00', TRUE,  70.00, 7);

INSERT INTO Conducts (DoctorID, AppointmentID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7);


INSERT INTO WritesIn (DoctorID, MedicalRecordID) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7);

INSERT INTO SalariesAccounts (AccountNumber, IBAN,Salary,Bonus) VALUES
  (1008, 'AL4720211109000000000012352', 55000.00, 2500.00),
  (1009, 'AL4720211109000000000012353', 57000.00, 3000.00),
  (1010, 'AL4720211109000000000012354', 40000.00, 2000.00),
  (1011, 'AL4720211109000000000012355', 42000.00, 1500.00);


INSERT INTO Doctor (DoctorID, Name,   Surname,    DateOfBirth,  PhoneNumber,  Gender, AccountNumber, DepartmentID, SpecialtyID) VALUES
  (8, 'Grace', 'Harris', '1987-04-18', '069-888-1111', 'Female', 1008, 2, 1),
  (9, 'Henry', 'Wright', '1972-10-03', '069-999-2222', 'Male',   1009, 3, 2);


INSERT INTO Nurse (NurseID, Name,    Surname,   PhoneNumber,Email,            AccountNumber, DepartmentID) VALUES
  (8, 'Diana',  'Reed',  '069-000-5555', 'diana.reed@example.com', 1010, 2),
  (9, 'Eric',   'Hughes','069-111-6666', 'eric.hughes@example.com',1011, 3);

INSERT INTO MedicalRecord (MedicalRecordID, Description,         RegistrationDate) VALUES
  (8,  'Routine check',       '2025-05-02'),
  (9,  'Allergy test',        '2025-05-03'),
  (10, 'Fracture follow-up',  '2025-05-04'),
  (11, 'Vaccination',         '2025-05-05'),
  (12, 'Eye exam',            '2025-05-06'),
  (13, 'Dental cleaning',     '2025-05-07'),
  (14, 'Physical therapy',    '2025-05-08'),
  (15, 'Diet consultation',   '2025-05-09'),
  (16, 'Blood test',          '2025-05-10'),
  (17, 'X-ray',               '2025-05-11');


INSERT INTO Patient (PatientID, Name,   Surname,    DateOfBirth,  Gender,  PhoneNumber,     BloodType, MedicalRecordID) VALUES
  (8,  'Alice',  'Moore',    '1992-07-12', 'Female', '069-000-1111', 'O+',  8),
  (9,  'Bob',    'Taylor',   '1988-03-23', 'Male',   '069-111-2222', 'A-',  9),
  (10, 'Carol',  'Evans',    '1995-11-05', 'Female', '069-222-3333', 'B+', 10),
  (11, 'Daniel','Turner',   '1983-02-14', 'Male',   '069-333-4444', 'AB-',11),
  (12, 'Eva',    'Parker',   '1990-06-30', 'Female', '069-444-5555', 'O-', 12),
  (13, 'Frank',  'Collins',  '1977-12-01', 'Male',   '069-555-6666', 'A+', 13),
  (14, 'Grace',  'Adams',    '1985-09-09', 'Female', '069-666-7777', 'B-', 14),
  (15, 'Ian',    'Stewart',  '1993-04-22', 'Male',   '069-777-8888', 'AB+',15),
  (16, 'Judy',   'Morris',   '1989-01-18', 'Female', '069-888-9999', 'O+', 16),
  (17, 'Kyle',   'Bell',     '1982-08-27', 'Male',   '069-999-0000', 'B+', 17);


INSERT INTO Appointment (AppointmentID, DateOfMeet,   Time,       isDone, AppointmentBill, PatientID) VALUES
  (8,  '2025-05-12', '09:30:00', FALSE, 45.00,  8),
  (9,  '2025-05-12', '10:00:00', FALSE, 50.00,  9),
  (10, '2025-05-13', '11:00:00', TRUE,  55.00, 10),
  (11, '2025-05-13', '11:30:00', FALSE, 60.00, 11),
  (12, '2025-05-14', '12:00:00', FALSE, 65.00, 12),
  (13, '2025-05-14', '13:00:00', TRUE,  70.00, 13),
  (14, '2025-05-15', '14:30:00', FALSE, 75.00, 14),
  (15, '2025-05-15', '15:15:00', TRUE,  80.00, 15),
  (16, '2025-05-16', '16:00:00', FALSE, 85.00, 16),
  (17, '2025-05-16', '16:45:00', TRUE,  90.00, 17);


INSERT INTO Conducts (DoctorID, AppointmentID) VALUES
  (8,  8),  (8,  9),  (8, 10),  (8, 11),  (8, 12),
  (9, 13),  (9, 14),  (9, 15),  (9, 16),  (9, 17);

INSERT INTO WritesIn (DoctorID, MedicalRecordID) VALUES
  (8,  8),  (8,  9),  (8, 10),  (8, 11),  (8, 12),
  (9, 13),  (9, 14),  (9, 15),  (9, 16),  (9, 17);
