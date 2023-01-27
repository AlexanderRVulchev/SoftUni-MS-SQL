SELECT
	g.Name AS Game,
	gt.Name AS [Game Type],
	u.Username,
	ug.Level,
	ug.Cash,
	c.Name AS Character
FROM Games AS g
JOIN GameTypes AS gt ON g.GameTypeId = gt.Id
JOIN UsersGames AS ug ON g.Id = ug.GameId
JOIN Users AS u ON ug.UserId = u.Id
JOIN Characters AS c ON ug.CharacterId = c.Id
ORDER BY Level DESC, Username ASC, Game ASC