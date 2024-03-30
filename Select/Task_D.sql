SELECT CityName, COUNT(Flight.CityFrom_ID) AS Amount
FROM City
LEFT JOIN Flight
	ON City.City_ID = Flight.CityFrom_ID
GROUP BY City.CityName