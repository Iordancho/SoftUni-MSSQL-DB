SELECT TOP(1) AVG(Salary) MinAverageSalary
FROM Employees e 
JOIN Departments d ON d.DepartmentID = e.DepartmentID
GROUP BY d.Name
ORDER BY MinAverageSalary 