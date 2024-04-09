DECLARE @VacantSeats INT
SELECT @VacantSeats=

SELECT CompanyName AS Company, Dat AS [Date], PlaneTypeName AS Plane, C1.CityName AS CityFrom, C2.CityName AS CityTo
FROM Flight, Company, City AS C1, City AS C2, PlaneType, Seat

WHERE Flight.CityTo_ID = C2.City_ID
	AND Flight.CityFrom_ID = C1.City_ID
	AND Flight.Company_ID = Company.Company_ID
	AND PlaneType.PlaneType_ID = Flight.PlaneType_ID
	AND Seat.PlaneType_ID = PlaneType.PlaneType_ID


ORDER BY Company, [Date], Plane