SELECT CityName AS City

FROM Flight
RIGHT JOIN City
	ON Flight.CityTo_ID = City.City_ID

WHERE Flight_ID IS NULL

ORDER BY CityName

/*
Another solution with quantor of existance
*/

SELECT CityName AS City
FROM City
WHERE NOT EXISTS (
    SELECT 1
    FROM Flight
    WHERE Flight.CityTo_ID = City.City_ID
)
ORDER BY CityName;

