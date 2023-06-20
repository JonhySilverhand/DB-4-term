alter procedure PSUBJECT @p varchar(20), @c int output
as begin
	declare @COUNT_ALL int = (select count(*) from SUBJECT)
	print 'параметры: @p = ' + @p + '; @c = ' + cast(@c as varchar);
	select s.PULPIT Код, s.SUBJECT_NAME Предмет, s.PULPIT Кафедра from SUBJECT s
	where s.PULPIT = @p
	set @c = @@ROWCOUNT
	return @COUNT_ALL
end

drop procedure PSUBJECT;

declare @COUNT_SUBJECTS int = 0;
declare @PARAM int = 0;
exec @COUNT_SUBJECTS = PSUBJECT @p = 'ИСиТ', @c = @PARAM output
print 'Кол-во дисциплин на кафедре: ' + cast(@PARAM as varchar);
print 'Кол-во дисциплин всего: ' + cast(@COUNT_SUBJECTS as varchar);