begin tran
begin try

DECLARE @An2_ID INT
SELECT @An2_ID = PlaneType_ID
				FROM PlaneType
				WHERE PlaneTypeName = 'АН-2'

DECLARE @Boeng_ID INT
SELECT @Boeng_ID = PlaneType_ID
				FROM PlaneType
				WHERE PlaneTypeName = 'Боинг-747'

DECLARE @Chelyabinsk_ID INT
SELECT @Chelyabinsk_ID = City_ID FROM City WHERE CityName = 'Челябинск'

DECLARE @Magadan_ID INT
SELECT @Magadan_ID = City_ID FROM City WHERE CityName = 'Магадан'

DECLARE @Delta_ID INT
SELECT @Delta_ID = Company_ID FROM Company WHERE CompanyName = 'Delta'
UPDATE FlightSET PlaneType_ID = @An2_IDWHERE Flight.Company_ID = @Delta_ID	AND Flight.CityFrom_ID = @Chelyabinsk_ID	AND Flight.CityTo_ID = @Magadan_ID	AND Dat = '20150228'

SELECT c1.CityName, c2.CityName, CompanyName, PlaneTypeName, Dat
FROM City c1, City c2, Company c, PlaneType p, Flight f
WHERE f.CityFrom_ID=c1.City_ID
	AND f.CityTo_ID=c2.City_ID
	AND f.Company_ID=c.Company_ID
	AND f.PlaneType_ID=p.PlaneType_ID
	AND c1.CityName='Челябинск'
	AND c2.CityName='Магадан'

end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran