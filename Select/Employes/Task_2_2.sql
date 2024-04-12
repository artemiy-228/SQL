SELECT DepartName, JobTitle.JobTitleName AS Job, Salary, Dat AS [Date], MoveKind.MoveKindName
FROM [Move], Employee, Depart, JobTitle, MoveKind
WHERE [Move].Emp_ID = Employee.Emp_ID
	AND Employee.FIO = 'Иванов Иван Владимирович'
	AND Depart.Depart_ID = [Move].Depart_ID
	AND [Move].MoveKind_ID = MoveKind.MoveKind_ID
	AND JobTitle.JobTitle_ID = [Move].JobTitle_ID

ORDER BY [Date]