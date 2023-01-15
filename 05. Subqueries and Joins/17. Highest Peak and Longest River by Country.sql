SELECT TOP(5)
	c.[CountryName],
	MAX(p.[Elevation]) AS [HighestPeakElevation],
	MAX(r.[Length]) AS [LongestRiverLength]
FROM [Countries] AS [c]
JOIN [MountainsCountries] AS [mc]
	ON c.[CountryCode] = mc.[CountryCode] 
JOIN [Peaks] AS [p]
	ON p.[MountainId] = mc.[MountainId]
JOIN [CountriesRivers] AS [cr]
	ON cr.[CountryCode] = c.[CountryCode]
JOIN [Rivers] AS [r]
	ON r.[Id] = cr.[RiverId]
GROUP BY [CountryName]
ORDER BY 
	[HighestPeakElevation] DESC,
	[LongestRiverLength] DESC,
	[CountryName] ASC