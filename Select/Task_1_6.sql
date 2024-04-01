SELECT DISTINCT PlaneTypeName AS Plane
FROM PlaneType
JOIN Flight
	ON PlaneType.PlaneType_ID = Flight.PlaneType_ID
JOIN Company
	ON Company.Company_ID = Flight.Company_ID

WHERE CompanyName = 'S7'

ORDER BY PlaneTypeName