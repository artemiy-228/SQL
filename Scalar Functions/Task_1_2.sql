CREATE FUNCTION dbo.nMest(@PlaneType_ID int)
RETURNS INT
AS
BEGIN
	DECLARE @AmountOfSeats INT
	SELECT @AmountOfSeats = COUNT(*)
		FROM Seat
		WHERE Seat.PlaneType_ID = @PlaneType_ID
	RETURN @AmountOfSeats
END;
GO
SELECT PlaneType.*, dbo.nMest(PlaneType_ID) AS [Seats] 
FROM PlaneType
ORDER BY PlaneType_ID

DROP FUNCTION  dbo.nMest