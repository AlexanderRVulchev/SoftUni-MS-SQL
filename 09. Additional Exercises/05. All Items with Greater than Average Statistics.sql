DECLARE @averageMind DECIMAL(8, 2) = (SELECT AVG(Mind) FROM [Statistics])
DECLARE @averageLuck DECIMAL(8, 2) = (SELECT AVG(Luck) FROM [Statistics])
DECLARE @averageSpeed DECIMAL(8, 2) = (SELECT AVG(Speed) FROM [Statistics])

SELECT
	i.Name,
	i.Price,
	i.MinLevel,
	s.Strength,
	s.Defence,
	s.Speed,
	s.Luck,
	s.Mind
FROM Items AS i
JOIN [Statistics] AS s ON i.StatisticId = s.Id
WHERE
	s.Mind > @averageMind AND
	s.Luck > @averageLuck AND
	s.Speed > @averageSpeed
ORDER BY Name