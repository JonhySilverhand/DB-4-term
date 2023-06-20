create procedure SUBJECT_REPORT @p char(10)
as
begin try
	declare @SUBJ_OUT varchar(200) = ''
	declare @SUBJ_ONE varchar(20) = ''
	declare @ROWCOUNT int = 0
	declare cur cursor local static for (select SUBJECT from SUBJECT where SUBJECT.PULPIT = @p)
	if not exists(select SUBJECT from SUBJECT where SUBJECT.PULPIT = @p)
		raiserror('Error ',11,1)
	else
		open cur
			fetch cur into @SUBJ_ONE
			while @@FETCH_STATUS = 0
			begin
				set @SUBJ_OUT += rtrim(@SUBJ_ONE) + ', '
				set @ROWCOUNT = @ROWCOUNT + 1
				fetch cur into @SUBJ_ONE
			end
	print @SUBJ_ONE
	close cur
	return @ROWCOUNT
end try
begin catch
	print 'Parameter error!'
	print 'Message: ' + cast(ERROR_MESSAGE() as varchar(max))
	print 'Row number: ' + cast(@ROWCOUNT as varchar)
end catch

--drop procedure SUBJECT_REPORT

declare @COUNT int = 0
exec @COUNT = SUBJECT_REPORT @p = 'ศั่า'
print 'Number of disciplines: ' + cast(@COUNT as varchar)