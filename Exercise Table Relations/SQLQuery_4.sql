CREATE TABLE[Teachers](
    [TeacherID] INT PRIMARY KEY,
    [Name] NVARCHAR(50) NOT NULL,
    [ManagerID] INT FOREIGN KEY REFERENCES[Teachers](TeacherID)
)