use UNIVER
go
create procedure PAUDITORIUM_INSERT @a char(20), @n varchar(20), @c int = 0, @t char(10)
as begin
	begin try
		insert into AUDITORIUM (AUDITORIUM, AUDITORIUM_NAME, AUDITORIUM_CAPACITY, AUDITORIUM_TYPE)
		values (@a, @n, @c, @t)
		return 1
	end try
	begin catch
		print 'Код ошибки:  ' + cast(ERROR_NUMBER() as varchar)
		print 'Серьёзность: ' + cast(ERROR_SEVERITY() as varchar)
		print 'Сообщение:   ' + cast(ERROR_MESSAGE() as varchar)
		return -1
	end catch
end

declare @r int
exec @r = PAUDITORIUM_INSERT @a = '322-1', @n = '322-1', @c = 20, @t = 'ЛБ-К'
print 'Процедура завершилась с кодом ' + cast(@r as varchar)