SELECT CityName AS City

FROM Flight
RIGHT JOIN City
	ON Flight.CityTo_ID = City.City_ID

WHERE Flight_ID IS NULL

ORDER BY CityName
