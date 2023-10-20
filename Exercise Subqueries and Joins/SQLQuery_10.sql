SELECT e.EmployeeID, e.FirstName,
    CASE
        WHEN p.StartDate > '2004-12-31' THEN NULL
        else p.NAME
    END ProjectName
FROM Employees e 
JOIN EmployeesProjects ep ON e.EmployeeID = ep.EmployeeID
JOIN Projects p ON p.ProjectID = ep.ProjectID
WHERE e.EmployeeID = 24