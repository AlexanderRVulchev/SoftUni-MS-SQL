SELECT
	c.CountryName,
	co.ContinentName,
	COUNT(cr.CountryCode) AS RiversCount,
	CASE
		WHEN SUM(r.Length) IS NULL THEN '0'
		ELSE SUM(r.Length)
	END AS TotalLength
FROM Countries AS c
LEFT JOIN Continents AS co ON c.ContinentCode = co.ContinentCode
LEFT JOIN CountriesRivers AS cr ON c.CountryCode = cr.CountryCode
LEFT JOIN Rivers AS r ON cr.RiverId = r.Id
GROUP BY c.CountryName, co.ContinentName
ORDER BY RiversCount DESC, TotalLength DESC, CountryName ASC