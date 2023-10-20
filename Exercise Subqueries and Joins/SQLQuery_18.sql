SELECT mc.CountryCode, COUNT(m.MountainRange)
FROM MountainsCountries mc
JOIN Mountains m ON mc.MountainId = m.Id
WHERE MC.CountryCode IN('US', 'RU', 'BG')
GROUP BY mc.CountryCode