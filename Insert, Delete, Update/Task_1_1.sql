begin tran
begin try
	INSERT INTO City (CityName)
	VALUES ('������')

	SELECT CityName
	FROM City
	ORDER BY CityName
end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran