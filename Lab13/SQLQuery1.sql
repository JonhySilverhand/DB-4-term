create procedure PSUBJECT
as
begin
	declare @COUNT int = (select count(*) from SUBJECT)
	select s.SUBJECT ���, s.SUBJECT_NAME �������, s.PULPIT ������� from SUBJECT s
	return @COUNT
end

drop procedure PSUBJECT;

declare @COUNT_ROW int = 0
exec @COUNT_ROW = PSUBJECT
print '���-�� �����: ' + cast(@COUNT_ROW as varchar)