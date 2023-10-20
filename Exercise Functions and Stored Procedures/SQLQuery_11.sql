CREATE FUNCTION ufn_CalculateFutureValue(@InitialSum DECIMAL(18,4), @YearlyInterestRate FLOAT, @Years INT)
RETURNS DECIMAL(18,4)
AS
BEGIN
    DECLARE @Result DECIMAL(18,4)
    SET @Result = @InitialSum * POWER((1 + @YearlyInterestRate), @Years)
    RETURN ROUND(@Result, 4)
END

--SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)