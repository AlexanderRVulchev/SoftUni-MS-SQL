SELECT 
	w.[DepositGroup],
	SUM(w.[DepositAmount]) AS [TotalSum]
FROM [WizzardDeposits] AS [w]
WHERE w.[MagicWandCreator] = 'Ollivander Family'
GROUP BY w.[DepositGroup]
HAVING SUM(w.[DepositAmount]) < 150000
ORDER BY [TotalSum] DESC