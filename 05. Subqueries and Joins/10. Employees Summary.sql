SELECT TOP(50)
	e.[EmployeeID],
	e.[FirstName] + ' ' + e.[LastName] AS [EmployeeName],
	e2.[FirstName] + ' ' + e2.[LastName] AS [ManagerName],
	d.[Name] AS [DepartmentName]
FROM [Employees] AS [e]
JOIN [Employees] AS [e2]
	ON e.[ManagerID] = e2.[EmployeeID]
JOIN [Departments] AS [d]
	ON e.[DepartmentID] = d.[DepartmentID]
ORDER BY e.[EmployeeID]