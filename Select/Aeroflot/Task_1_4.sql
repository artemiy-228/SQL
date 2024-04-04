SELECT CityName, COUNT(Flight.CityFrom_ID) AS Amount
FROM City
LEFT JOIN Flight
	ON City.City_ID = Flight.CityFrom_ID
GROUP BY City.CityName

/*
The other solution
*/

SELECT CityName AS City, COUNT(Flight.Flight_ID) AS AmountOfFlying
FROM Flight
RIGHT JOIN City
	ON Flight.CityFrom_ID = City.City_ID

GROUP BY City.CityName