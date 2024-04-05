DECLARE @Vasyuki int
SELECT @Vasyuki = City.City_ID FROM City
WHERE City.CityName = 'Васюки'


SELECT CityName AS City
FROM City
WHERE NOT EXISTS(
	SELECT *
	From Flight
	WHERE Flight.CityTo_ID = @Vasyuki
		AND Flight.CityFrom_ID = City.City_ID)

	AND City.CityName <> 'Васюки'
ORDER BY City ASC