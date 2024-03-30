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

/*
The other way to get similar answer
*/
SELECT
	(SELECT CityName FROM City WHERE Flight.CityFrom_ID = City.City_ID) as CityFrom,
	(SELECT CityName FROM City WHERE Flight.CityTo_ID = City.City_ID) as CityTo,
	Dat as [Date],
	(SELECT PlaneTypeName FROM PlaneType WHERE PlaneType.PlaneType_ID = Flight.PlaneType_ID) AS Plane

FROM Flight, Company

WHERE YEAR(Dat) > 2012 AND
	Company.Company_ID = Flight.Company_ID AND
	Company.CompanyName = 'S7'

ORDER BY Dat