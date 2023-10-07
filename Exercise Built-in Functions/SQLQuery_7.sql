SELECT [TownID], [Name]
FROM Towns
WHERE NOT [Name] LIKE '[RDB]%'
ORDER BY [Name] 