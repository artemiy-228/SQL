SELECT DISTINCT CompanyName AS Company
FROM Company
JOIN Flight
	ON Flight.Company_ID = Company.Company_ID
JOIN City AS CityFrom
	ON CityFrom.City_ID = Flight.CityFrom_ID
JOIN City AS CityTo
	ON CityTo.City_ID = Flight.CityTo_ID

WHERE CityFrom.CityName = 'Санкт-Петербург' AND
	CityTo.CityName = 'Магадан'

ORDER BY Company

/*
The other way
*/

SELECT DISTINCT CompanyName AS Company
FROM Company, Flight, City AS CityFrom, City AS CityTo

WHERE Company.Company_ID = Flight.Company_ID AND
	Flight.CityFrom_ID = CityFrom.City_ID AND
	Flight.CityTo_ID = CityTo.City_ID AND
	CityFrom.CityName = 'Санкт-Петербург' AND
	CityTo.CityName = 'Магадан'

ORDER BY Company
