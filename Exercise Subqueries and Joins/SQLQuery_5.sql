  SELECT TOP(3) e.EmployeeID, FirstName
  FROM Employees e
  LEFT JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID
  WHERE ep.ProjectID IS NULL
  ORDER BY e.EmployeeID ASC

