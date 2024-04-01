SELECT FIO
FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
JOIN City AS CityFrom
	ON Flight.CityFrom_ID = CityFrom.City_ID
JOIN City AS CityTo
	ON Flight.CityTo_ID = CityTo.City_ID


WHERE CAST(Dat as DATE) = '20130427'

ORDER BY FIO
