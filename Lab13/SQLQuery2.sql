alter procedure PSUBJECT @p varchar(20), @c int output
as begin
	declare @COUNT_ALL int = (select count(*) from SUBJECT)
	print '���������: @p = ' + @p + '; @c = ' + cast(@c as varchar);
	select s.PULPIT ���, s.SUBJECT_NAME �������, s.PULPIT ������� from SUBJECT s
	where s.PULPIT = @p
	set @c = @@ROWCOUNT
	return @COUNT_ALL
end

drop procedure PSUBJECT;

declare @COUNT_SUBJECTS int = 0;
declare @PARAM int = 0;
exec @COUNT_SUBJECTS = PSUBJECT @p = '����', @c = @PARAM output
print '���-�� ��������� �� �������: ' + cast(@PARAM as varchar);
print '���-�� ��������� �����: ' + cast(@COUNT_SUBJECTS as varchar);