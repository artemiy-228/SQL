WITH Flights AS (
    SELECT PT.PlaneTypeName AS Plane, COUNT(S.PlaneType_ID) AS AmountOfPlaces
    FROM PlaneType AS PT, Seat AS S
    WHERE PT.PlaneType_ID = S.PlaneType_ID
    GROUP BY PT.PlaneType_ID, PT.PlaneTypeName
)

SELECT Plane
FROM Flights
WHERE AmountOfPlaces = (
	SELECT MAX(AmountOfPlaces)
	FROM Flights
)
ORDER BY Plane
/*
The other solution
*/

WITH Flights AS (
    SELECT PT.PlaneTypeName AS Plane, COUNT(S.PlaneType_ID) AS AmountOfPlaces
    FROM PlaneType AS PT
    JOIN Seat AS S
        ON PT.PlaneType_ID = S.PlaneType_ID
    GROUP BY PT.PlaneType_ID, PT.PlaneTypeName
)

SELECT Plane
FROM Flights
WHERE AmountOfPlaces = (
	SELECT MAX(AmountOfPlaces)
	FROM Flights
)
ORDER BY Plane
