begin tran
begin try

UPDATE City
SET CityName = 'Челяба'
Where CityName = 'Челябинск'
SELECT * 
FROM City

end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran 