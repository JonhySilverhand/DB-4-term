alter procedure PSUBJECT @p varchar(20)
as begin
	select * from SUBJECT where SUBJECT.PULPIT = @p
end

create table #SUBJECT
(
	��� varchar(10) PRIMARY KEY,
	���������� varchar(50),
	������� varchar(10)
)
insert #SUBJECT exec PSUBJECT @p = '����'
select * from #SUBJECT

drop table #SUBJECT