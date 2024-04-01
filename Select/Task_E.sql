SELECT DISTINCT FIO
FROM Passgr
JOIN Flight
	ON Flight.Flight_ID = Passgr.Flight_ID
Join PlaneType
	ON PlaneType.PlaneType_ID = Flight.PlaneType_ID
JOIN City
	ON City.City_ID = Flight.CityTo_ID

WHERE PlaneTypeName = '�-310' AND
	  CityName = '�����-���������'

ORDER BY FIO

/*
The other way to solve this task
*/

SELECT DISTINCT FIO

FROM Passgr, Flight, City, PlaneType

WHERE Passgr.Flight_ID = Flight.Flight_ID AND
	Flight.PlaneType_ID = PlaneType.PlaneType_ID AND
	PlaneType.PlaneTypeName = '�-310' AND
	Flight.CityTo_ID = City.City_ID AND
	City.CityName = '�����-���������'


ORDER BY FIO