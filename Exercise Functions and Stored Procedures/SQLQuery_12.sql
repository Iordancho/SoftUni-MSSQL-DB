CREATE OR ALTER PROC usp_CalculateFutureValueForAccount(@AccountId INT, @InterestRate FLOAT)
AS
BEGIN
    SELECT a.Id, FirstName [First, Name], LastName [Last Name], a.Balance [Current Balance]
    , dbo.ufn_CalculateFutureValue(a.Balance, @InterestRate, 5) [BalanceInFiveYears]
    FROM AccountHolders AS ah 
    JOIN Accounts AS a ON ah.Id = a.AccountHolderId
    WHERE a.Id = @AccountId
END

EXEC usp_CalculateFutureValueForAccount 1, 0.1