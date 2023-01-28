DECLARE @userId INT = (SELECT Id FROM Users WHERE Username = 'Alex')
DECLARE @gameId INT = (SELECT Id FROM Games WHERE Name = 'Edinburgh')
DECLARE @userGameId INT = (SELECT Id FROM UsersGames WHERE UserId = @userId AND GameId = @gameId)

DECLARE @ItemId1 INT = (SELECT Id FROM Items WHERE Name = 'Blackguard')
DECLARE @ItemId2 INT = (SELECT Id FROM Items WHERE Name = 'Bottomless Potion of Amplification')
DECLARE @ItemId3 INT = (SELECT Id FROM Items WHERE Name = 'Eye of Etlich (Diablo III)')
DECLARE @ItemId4 INT = (SELECT Id FROM Items WHERE Name = 'Gem of Efficacious Toxin')
DECLARE @ItemId5 INT = (SELECT Id FROM Items WHERE Name = 'Golden Gorget of Leoric')
DECLARE @ItemId6 INT = (SELECT Id FROM Items WHERE Name = 'Hellfire Amulet')

DECLARE @totalCost MONEY =
(
	SELECT
		SUM(Price)
	FROM Items
	WHERE Id IN (@ItemId1, @ItemId2, @ItemId3, @ItemId4, @ItemId5, @ItemId6)
)

UPDATE UsersGames
SET Cash -= @totalCost
WHERE Id = @userGameId

INSERT INTO UserGameItems VALUES
	(@ItemId1, @userGameId),
	(@ItemId2, @userGameId),
	(@ItemId3, @userGameId),
	(@ItemId4, @userGameId),
	(@ItemId5, @userGameId),
	(@ItemId6, @userGameId)

SELECT
	u.Username,
	g.Name,
	ug.Cash,
	i.Name AS [Item Name]
FROM Users AS u
JOIN UsersGames AS ug ON u.Id = ug.UserId
JOIN Games AS g ON ug.GameId = g.Id
JOIN UserGameItems AS ugi ON ug.Id = ugi.UserGameId
JOIN Items AS i ON ugi.ItemId = i.Id
WHERE g.Id = @gameId
ORDER BY i.Name