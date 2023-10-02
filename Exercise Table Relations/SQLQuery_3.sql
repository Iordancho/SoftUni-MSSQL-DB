CREATE TABLE [Students](
    [StudentID] INT PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE [Exams](
    [ExamID] INT PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL
)

CREATE TABLE [StudentsExams](
    [StudentID] INT FOREIGN KEY REFERENCES [Students](StudentID),
    [ExamID] INT FOREIGN KEY REFERENCES [Exams](ExamID)
    PRIMARY KEY(StudentID, ExamID)
)

INSERT INTO [Students]([StudentID], [Name])
    VALUES
(1, 'Mila'),
(2, 'Toni'),
(3, 'Ron')

INSERT INTO [Exams]([ExamID], [Name])
    VALUES
(101, 'SpringMVC'),
(102, 'Neo4j'),
(103, 'Oracle 11g')
