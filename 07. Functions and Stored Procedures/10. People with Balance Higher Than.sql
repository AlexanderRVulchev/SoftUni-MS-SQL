CREATE PROC usp_GetHoldersWithBalanceHigherThan 
(@number DECIMAL(18,4))
AS
	SELECT
		a.[FirstName],
		a.[LastName]		
	FROM [AccountHolders] AS [a]
	JOIN
	(
		SELECT 
			[AccountHolderId],
			SUM(Balance) AS [TotalMoney]
		FROM [Accounts]
		GROUP BY [AccountHolderId]
	) AS [acc] ON a.[Id] = acc.[AccountHolderId]
	WHERE acc.[TotalMoney] > @number
	ORDER BY a.[FirstName], a.[LastName]