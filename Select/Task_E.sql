SELECT DISTINCT FIO
FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
Join PlaneType
	ON PlaneType.PlaneType_ID = Flight.PlaneType_ID
JOIN City
	ON City.City_ID = Flight.CityTo_ID

WHERE PlaneTypeName = 'А-310' AND
	  CityName = 'Санкт-Петербург'

ORDER BY FIO