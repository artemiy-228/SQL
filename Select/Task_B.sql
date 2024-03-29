SELECT CityFrom.CityName as CityFromName, CityTo.CityName as CityToName, Dat as [Date], Plane.PlaneTypeName AS Plane

FROM Flight
JOIN City as CityFrom
	ON CityFrom.City_ID = Flight.CityFrom_ID
JOIN City as CityTo
	ON CityTo.City_ID = Flight.CityTo_ID
JOIN PlaneType as Plane
	ON Plane.PlaneType_ID = Flight.PlaneType_ID
JOIN Company
	ON Company.Company_ID = Flight.Company_ID

WHERE YEAR(Dat) > 2012 AND CompanyName = 'S7'

ORDER BY Dat