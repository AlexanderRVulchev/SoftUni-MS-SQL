SELECT
	e.[EmployeeID],
	e.[FirstName],
	e.[ManagerID],
	e2.[FirstName] AS [ManagerName]
FROM [Employees] AS [e]
JOIN [Employees] AS [e2] 
	ON e.[ManagerID] = e2.[EmployeeID]
WHERE e.[ManagerID] IN (3, 7)
ORDER BY e.[EmployeeID]