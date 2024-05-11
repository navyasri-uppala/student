-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Address VARCHAR(255)
    -- Add other generic details columns here
);

-- Create Performance table
CREATE TABLE Performance (
    PerformanceID INT PRIMARY KEY,
    StudentID INT,
    Grade DECIMAL(4,2),
    ExamDate DATE,
    Subject VARCHAR(100),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create Attendance table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    StudentID INT,
    Date DATE,
    Status VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- Create DepartmentData table
CREATE TABLE DepartmentData (
    DataID INT PRIMARY KEY,
    DepartmentID INT,
    Data TEXT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
