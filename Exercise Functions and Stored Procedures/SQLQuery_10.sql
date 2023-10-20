CREATE OR ALTER PROC usp_GetHoldersWithBalanceHigherThan
@Number MONEY
AS
SELECT FirstName AS [First Name], LastName AS [Last Name]
FROM AccountHolders AS ah 
LEFT JOIN Accounts AS a ON ah.Id = a.AccountHolderId
GROUP BY ah.Id, ah.FirstName, ah.LastName
HAVING SUM(a.Balance) > @Number
ORDER BY FirstName, LastName

EXEC usp_GetHoldersWithBalanceHigherThan 5000
