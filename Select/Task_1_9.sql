SELECT FIO
FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
JOIN City AS CityFrom
	ON Flight.CityFrom_ID = CityFrom.City_ID
JOIN City AS CityTo
	ON Flight.CityTo_ID = CityTo.City_ID


WHERE CAST(Dat as DATE) = '20130427' AND
	CityFrom.CityName = 'Санкт-Петербург' AND
	CityTo.CityName = 'Магадан'

ORDER BY FIO

/*
The other solution(debatable)
*/

SELECT DISTINCT FIO
FROM Passgr,
	Flight,
	(SELECT CityName AS CityFrom FROM City, Flight WHERE Flight.CityFrom_ID = City.City_ID) AS Cf,
	(SELECT CityName AS CityTo FROM City, Flight WHERE Flight.CityTo_ID = City.City_ID) as Ct

WHERE CAST(Dat AS DATE) = '20130427' AND
	Passgr.Flight_ID = Flight.Flight_ID AND
	CityFrom = 'Санкт-Петербург' AND
	CityTo = 'Магадан'

ORDER BY FIO