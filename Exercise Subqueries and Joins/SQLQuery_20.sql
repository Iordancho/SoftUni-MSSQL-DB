SELECT TOP(5) c.CountryName, MAX(p.Elevation) HighestPeakElevation, MAX(r.Length) LongestRiverLength
FROM Countries c 
JOIN MountainsCountries mc ON c.CountryCode = mc.CountryCode
JOIN CountriesRivers cr ON c.CountryCode = cr.CountryCode
JOIN Mountains m ON m.Id = mc.MountainId
JOIN Peaks p ON p.MountainId = m.Id
JOIN Rivers r ON r.Id = cr.RiverId
GROUP BY c.CountryName
ORDER BY HighestPeakElevation DESC, LongestRiverLength DESC, c.CountryName