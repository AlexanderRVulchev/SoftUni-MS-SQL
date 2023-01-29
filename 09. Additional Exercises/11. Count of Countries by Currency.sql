SELECT
	cr.CurrencyCode,
	cr.Description AS Currency,
	COUNT(co.CountryName) AS NumberOfCountries
FROM Currencies AS cr
LEFT JOIN Countries AS co ON cr.CurrencyCode = co.CurrencyCode
GROUP BY cr.CurrencyCode, cr.Description
ORDER BY NumberOfCountries DESC, Currency ASC