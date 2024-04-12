WITH Places AS (
    SELECT PlaneType_ID, COUNT(*) AS TotalPlaces
    FROM Seat
    GROUP BY PlaneType_ID
),
OccupiedPlaces AS (
    SELECT Flight_ID, COUNT(*) AS OccupiedPlaces
    FROM Passgr
    GROUP BY Flight_ID
)
SELECT 
    Company.CompanyName AS Company,
    Flight.Dat AS [Date],
    PlaneType.PlaneTypeName AS Plane,
    CityFrom.CityName AS City1,
    CityTo.CityName AS City2,
    Places.TotalPlaces - COALESCE(OccupiedPlaces.OccupiedPlaces, 0) AS FreePlaces

FROM Flight
JOIN Company 
	ON Flight.Company_ID = Company.Company_ID
JOIN PlaneType 
	ON Flight.PlaneType_ID = PlaneType.PlaneType_ID
JOIN City AS CityFrom
	ON Flight.CityFrom_ID = CityFrom.City_ID
JOIN City AS CityTo
	ON Flight.CityTo_ID = CityTo.City_ID
JOIN Places 
	ON Flight.PlaneType_ID = Places.PlaneType_ID
LEFT JOIN OccupiedPlaces
	ON Flight.Flight_ID = OccupiedPlaces.Flight_ID

ORDER BY Company, [Date], Plane;
