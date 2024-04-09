SELECT FIO, Dat AS [Date], P2.PlaneTypeName AS Plane1, P1.PlaneTypeName AS Plane2
FROM Passgr
JOIN Seat
	ON Passgr.Seat_ID = Seat.Seat_ID
JOIN PlaneType AS P1
	ON Seat.PlaneType_ID = P1.PlaneType_ID
JOIN Flight
	ON Passgr.Flight_ID = Flight.Flight_ID
JOIN PlaneType AS P2
	ON Flight.PlaneType_ID = P2.PlaneType_ID

WHERE P1.PlaneType_ID <> P2.PlaneType_ID

ORDER BY FIO, [Date]

