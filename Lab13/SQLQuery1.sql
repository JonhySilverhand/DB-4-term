create procedure PSUBJECT
as
begin
	declare @COUNT int = (select count(*) from SUBJECT)
	select s.SUBJECT Код, s.SUBJECT_NAME Предмет, s.PULPIT Кафедра from SUBJECT s
	return @COUNT
end

drop procedure PSUBJECT;

declare @COUNT_ROW int = 0
exec @COUNT_ROW = PSUBJECT
print 'Кол-во строк: ' + cast(@COUNT_ROW as varchar)