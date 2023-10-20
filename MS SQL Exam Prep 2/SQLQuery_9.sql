SELECT c.Name Client, FLOOR(AVG(p.Price)) [Average Price]
FROM Clients as c 
JOIN ProductsClients as pc ON c.Id = pc.ClientId
JOIN Products as p ON p.Id = pc.ProductId
JOIN Vendors as v ON v.Id = p.VendorId
WHERE v.NumberVAT LIKE '%FR%'
GROUP BY c.Name
ORDER BY AVG(p.Price) ASC, c.Name DESC
