DECLARE @Vasyuki int
SELECT @Vasyuki = City.City_ID FROM City
WHERE City.CityName = '������'


SELECT CityName AS City
FROM City
WHERE NOT EXISTS(
	SELECT *
	From Flight
	WHERE Flight.CityTo_ID = @Vasyuki
		AND Flight.CityFrom_ID = City.City_ID)

	AND City.CityName <> '������'
ORDER BY City ASC