begin tran
begin try
	INSERT INTO City (CityName)
	VALUES ('Абакан')

	SELECT CityName
	FROM City
	ORDER BY CityName
end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran