CREATE OR ALTER PROC usp_SearchByCountry(@country NVARCHAR(50))
AS
SELECT v.Name, v.NumberVAT VAT, CONCAT(a.StreetName, ' ', a.StreetNumber) [Street Info]
, CONCAT(a.City, ' ', a.PostCode) [City Info] 
FROM Vendors as v 
JOIN Addresses as a ON v.AddressId = a.Id
JOIN Countries as c ON c.Id = a.CountryId
WHERE c.Name = @country

EXEC usp_SearchByCountry 'France'