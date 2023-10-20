SELECT TOP(7) i.Number, i.Amount, c.Name
FROM Invoices as i 
JOIN Clients as c ON i.ClientId = c.Id
WHERE IssueDate < '2023-01-01' AND Currency = 'EUR'
OR i.Amount > 500.00 AND LEFT(c.NumberVAT, 2) = 'DE' 
ORDER BY i.Number ASC, Amount DESC

