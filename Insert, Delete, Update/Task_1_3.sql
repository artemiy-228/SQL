begin tran
begin try

UPDATE City
SET CityName = '������'
Where CityName = '���������'
SELECT * 
FROM City

end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran 