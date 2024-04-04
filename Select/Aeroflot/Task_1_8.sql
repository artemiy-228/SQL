SELECT PlaneType.PlaneTypeName AS Plane, COUNT(Seat.PlaneType_ID) AS NumOfSeat
FROM PlaneType
JOIN Seat
	ON PlaneType.PlaneType_ID = Seat.PlaneType_ID

GROUP BY PlaneType.PlaneTypeName

/*
The other solution
*/

SELECT PlaneType.PlaneTypeName AS Plane, COUNT(Seat.PlaneType_ID) AS NumOfSeat
FROM PlaneType, Seat

WHERE Seat.PlaneType_ID = PlaneType.PlaneType_ID

GROUP BY PlaneType.PlaneTypeName