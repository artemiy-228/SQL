SELECT DISTINCT PlaneTypeName AS Plane
FROM PlaneType
JOIN Flight
	ON PlaneType.PlaneType_ID = Flight.PlaneType_ID
JOIN Company
	ON Company.Company_ID = Flight.Company_ID

WHERE CompanyName = 'S7'

ORDER BY PlaneTypeName

/*
The other way to solve this task
*/

SELECT DISTINCT PlaneTypeName AS Plane
FROM PlaneType, Flight, Company

WHERE PlaneType.PlaneType_ID = Flight.PlaneType_ID AND
	Company.Company_ID = Flight.Company_ID AND
	CompanyName = 'S7'

ORDER BY PlaneTypeName