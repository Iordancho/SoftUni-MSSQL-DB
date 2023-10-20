SELECT c.Id, c.Name, CONCAT(StreetName, ' ', StreetNumber, ', ', City, ', ', PostCode, ', ', cs.Name) [Address]
FROM Clients as c 
LEFT JOIN ProductsClients as pc ON c.Id = pc.ClientId
JOIN Addresses as A ON c.AddressId = a.Id
JOIN Countries as cs ON a.CountryId = cs.Id
WHERE pc.ProductId IS NULL