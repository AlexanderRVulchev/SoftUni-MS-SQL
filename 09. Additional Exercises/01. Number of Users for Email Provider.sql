SELECT
	[Email Provider],
	COUNT([Email Provider]) AS [Number Of Users]
FROM 
(
	SELECT 
	SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email) - CHARINDEX('@', Email)) AS [Email Provider]
	FROM Users
) AS [t]
GROUP BY [Email Provider]
ORDER BY [Number Of Users] DESC, [Email Provider] ASC