CREATE FUNCTION dbo.nPass(@Flight_ID INT)
RETURNS INT
AS
BEGIN
    DECLARE @PassengerCount INT;

    SELECT @PassengerCount = COUNT(*) 
		FROM Passgr
		WHERE Flight_ID = @Flight_ID;
    RETURN @PassengerCount;
END;
GO

SELECT Flight.*, dbo.nPass(Flight_ID) AS [Пассажиров]
FROM Flight
ORDER BY Flight_ID;

DROP FUNCTION dbo.nPass