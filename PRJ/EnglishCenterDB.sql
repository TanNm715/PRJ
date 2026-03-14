CREATE DATABASE EnglishCenter;
GO
USE EnglishCenter;
GO

CREATE TABLE Role (
    role_id INT IDENTITY(1,1) PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

INSERT INTO Role(role_name) VALUES
('Admin'),
('Teacher'),
('Student');

CREATE TABLE Parent (
    parent_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

INSERT INTO Parent(name,phone,email,address) VALUES
('Nguyen Van A','0901111111','a@gmail.com','Ha Noi'),
('Tran Thi B','0902222222','b@gmail.com','Ha Noi'),
('Le Van C','0903333333','c@gmail.com','Ha Noi'),
('Pham Thi D','0904444444','d@gmail.com','Ha Noi'),
('Hoang Van E','0905555555','e@gmail.com','Ha Noi'),
('Do Thi F','0906666666','f@gmail.com','Ha Noi');

CREATE TABLE Student (
    student_id INT IDENTITY(1,1) PRIMARY KEY,
    parent_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    phone VARCHAR(20) UNIQUE,
    email VARCHAR(100) UNIQUE,
    address VARCHAR(255),
    FOREIGN KEY (parent_id) REFERENCES Parent(parent_id)
);

INSERT INTO Student(parent_id,first_name,last_name,date_of_birth,gender,phone,email,address) VALUES
(1,'Minh','Nguyen','2010-05-10','Male','0911111111','minh@gmail.com','Ha Noi'),
(2,'Lan','Tran','2011-03-15','Female','0922222222','lan@gmail.com','Ha Noi'),
(3,'Huy','Le','2010-08-20','Male','0933333333','huy@gmail.com','Ha Noi'),
(4,'Mai','Pham','2011-11-12','Female','0944444444','mai@gmail.com','Ha Noi'),
(5,'Nam','Hoang','2009-09-09','Male','0955555555','nam@gmail.com','Ha Noi'),
(6,'Linh','Do','2012-02-18','Female','0966666666','linh@gmail.com','Ha Noi');

CREATE TABLE Teacher (
    teacher_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100)
);

INSERT INTO Teacher(name,phone,email) VALUES
('John Smith','0933333333','john@gmail.com'),
('Anna Lee','0944444444','anna@gmail.com'),
('David Brown','0955555555','david@gmail.com'),
('Emily Clark','0966666666','emily@gmail.com');

CREATE TABLE Specialization (
    specialization_id INT IDENTITY(1,1) PRIMARY KEY,
    specialization_name NVARCHAR(50) NOT NULL
);

INSERT INTO Specialization(specialization_name) VALUES
('Speaking'),
('Listening'),
('Writing'),
('Reading'),
('Grammar'),
('Pronunciation'),
('Vocabulary');

CREATE TABLE Specialize (
    teacher_id INT,
    specialization_id INT,
    PRIMARY KEY (teacher_id, specialization_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id),
    FOREIGN KEY (specialization_id) REFERENCES Specialization(specialization_id)
);

INSERT INTO Specialize VALUES
(1,1),
(1,2),
(1,5),
(2,3),
(2,4),
(3,1),
(3,6);

CREATE TABLE Account (
    account_id INT IDENTITY(1,1) PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    role_id INT,
    student_id INT,
    teacher_id INT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id),
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

INSERT INTO Account(username,password,role_id,student_id,teacher_id) VALUES
('admin1','123456',1,NULL,NULL),
('admin2','123456',1,NULL,NULL),
('teacher1','123456',2,NULL,1),
('teacher2','123456',2,NULL,2),
('teacher3','123456',2,NULL,3),
('teacher4','123456',2,NULL,4),
('student1','123456',3,1,NULL),
('student2','123456',3,2,NULL),
('student3','123456',3,3,NULL),
('student4','123456',3,4,NULL),
('student5','123456',3,5,NULL),
('student6','123456',3,6,NULL);

CREATE TABLE Course (
    course_id INT IDENTITY(1,1) PRIMARY KEY,
    course_name VARCHAR(100),
    level VARCHAR(50),
    duration VARCHAR(50),
    fee DECIMAL(10,2)
);

INSERT INTO Course(course_name,level,duration,fee) VALUES
('Basic English','Beginner','3 months',3000000),
('Intermediate English','Intermediate','4 months',4000000),
('Advanced English','Advanced','5 months',5000000),
('IELTS Preparation','Advanced','6 months',6000000),
('English for Kids','Starter','3 months',2500000);

CREATE TABLE Class (
    class_id INT IDENTITY(1,1) PRIMARY KEY,
    course_id INT,
    teacher_id INT,
    start_date DATE,
    end_date DATE,
    schedule VARCHAR(100),
    room VARCHAR(50),
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);

INSERT INTO Class(course_id,teacher_id,start_date,end_date,schedule,room) VALUES
(1,1,'2026-01-10','2026-04-10','Mon-Wed-Fri','Room 101'),
(2,2,'2026-02-01','2026-06-01','Tue-Thu','Room 102'),
(3,3,'2026-03-01','2026-07-01','Mon-Wed','Room 103'),
(4,1,'2026-03-15','2026-09-15','Sat-Sun','Room 201'),
(5,4,'2026-04-01','2026-07-01','Tue-Thu','Room 104');

CREATE TABLE Enrollment (
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    student_id INT,
    class_id INT,
    enroll_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (class_id) REFERENCES Class(class_id)
);

INSERT INTO Enrollment(student_id,class_id,enroll_date,status) VALUES
(1,1,'2026-01-05','Studying'),
(2,1,'2026-01-06','Studying'),
(3,2,'2026-02-10','Studying'),
(4,3,'2026-03-02','Studying'),
(5,4,'2026-03-20','Studying'),
(6,5,'2026-04-05','Studying'),
(1,4,'2026-03-25','Studying'),
(2,2,'2026-02-15','Studying');