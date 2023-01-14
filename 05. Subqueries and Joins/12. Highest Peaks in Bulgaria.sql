SELECT
	mc.[CountryCode],
	m.[MountainRange],
	p.[PeakName],
	p.[Elevation]
FROM [MountainsCountries] AS [mc]
JOIN [Mountains] AS [m]
	ON mc.[MountainId] = m.[Id]
JOIN [Peaks] AS [p]
	ON mc.[MountainId] = p.[MountainId]
WHERE 
	mc.[CountryCode] = 'BG' AND
	p.[Elevation] > 2835
ORDER BY p.[Elevation] DESC