SELECT 
	u.Username, 
	g.Name as Game, 
	MAX(c.Name) as [Character],
	SUM(sts.Strength) + MAX(st.Strength) + MAX(cs.Strength) as Strength,
	SUM(sts.Defence) + MAX(st.Defence) + MAX(cs.Defence) as Defence,
	SUM(sts.Speed) + MAX(st.Speed) + MAX(cs.Speed) as Speed,
	SUM(sts.Mind) + MAX(st.Mind) + MAX(cs.Mind) as Mind,
	SUM(sts.Luck) + MAX(st.Luck) + MAX(cs.Luck) as luck
FROM Users AS u
JOIN UsersGames AS ug ON ug.UserId = u.id
JOIN Games AS g ON ug.GameId = g.Id
JOIN GameTypes gt ON gt.Id = g.GameTypeId
JOIN [Statistics] AS st ON st.Id = gt.BonusStatsId
JOIN Characters AS c ON ug.CharacterId = c.Id
JOIN [Statistics] cs ON cs.Id = c.StatisticId
JOIN UserGameItems AS ugi ON ugi.UserGameId = ug.Id
JOIN items AS i ON i.Id = ugi.ItemId
JOIN [Statistics] AS sts ON sts.Id = i.StatisticId
GROUP BY u.Username, g.Name
ORDER BY Strength DESC, Defence DESC, Speed DESC, Mind DESC, Luck DESC