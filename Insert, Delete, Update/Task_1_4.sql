begin tran
begin try
UPDATE Flight
SET Dat = Dat + 7
FROM Company
WHERE GETDATE() < Dat
	AND Flight.Company_ID = Company.Company_ID
	AND Company.CompanyName = 'Delta'

SELECT c1.CityName, c2.CityName, CompanyName, PlaneTypeName, Dat
FROM City c1, City c2, Company c, PlaneType p, Flight f
WHERE f.CityFrom_ID=c1.City_ID
	AND f.CityTo_ID=c2.City_ID
	AND f.Company_ID=c.Company_ID
	AND f.PlaneType_ID=p.PlaneType_ID
	AND c.CompanyName='Delta'
ORDER BY Dat
end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran