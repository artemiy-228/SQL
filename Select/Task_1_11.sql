SELECT Dat AS [Date], PlaneTypeName AS Plane, Seatname, CityFrom.CityName AS CityFrom, CityTo.CityName AS CityTo, Passgr.FIO

FROM Flight
JOIN PlaneType
	ON Flight.PlaneType_ID = PlaneType.PlaneType_ID
JOIN Seat
	ON Seat.PlaneType_ID = PlaneType.PlaneType_ID
JOIN Passgr
	ON Passgr.Flight_ID = Flight.Flight_ID
JOIN City AS CityFrom
	ON CityFrom.City_ID = Flight.CityFrom_ID
JOIN City AS CityTo
	ON CityTo.City_ID = Flight.CityTo_ID

WHERE Passgr.FIO = 'Пётр Иванович Неуважай-Корыто'

ORDER BY [Date]
