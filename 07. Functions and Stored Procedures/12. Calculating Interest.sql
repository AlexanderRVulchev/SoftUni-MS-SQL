CREATE PROC usp_CalculateFutureValueForAccount 
(@accountId INT, @annualRate FLOAT)
AS
	SELECT
		acc.[Id] AS [Account Id],
		h.[FirstName] AS [First Name],
		h.[LastName] AS [Last Name],
		acc.[Balance] AS [Current Balance],
		dbo.ufn_CalculateFutureValue(acc.[Balance], @annualRate, 5) AS [Balance in 5 years]
	FROM [Accounts] AS [acc]
	JOIN [AccountHolders] AS [h]
		ON acc.[AccountHolderId] = h.[Id]
	WHERE acc.[Id] = @accountId
