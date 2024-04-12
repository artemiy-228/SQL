SELECT Subdepart.DepartName AS Subdepart, Depart.DepartName AS Depart
FROM Depart AS Subdepart
LEFT JOIN Depart
	ON Depart.Depart_ID = Subdepart.Parent_ID

ORDER BY Subdepart