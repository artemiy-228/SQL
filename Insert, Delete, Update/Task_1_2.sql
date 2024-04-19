begin tran
begin try
DELETE FROM Passgr
WHERE Passgr.FIO = 'Иванов Иван Иванович'
SELECT FIO
FROM Passgr
ORDER BY FIO
end try
begin catch
 select ERROR_MESSAGE()
end catch
rollback tran