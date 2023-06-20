alter procedure PSUBJECT @p varchar(20)
as begin
	select * from SUBJECT where SUBJECT.PULPIT = @p
end

create table #SUBJECT
(
	Код varchar(10) PRIMARY KEY,
	Дисциплина varchar(50),
	Кафедра varchar(10)
)
insert #SUBJECT exec PSUBJECT @p = 'ИСиТ'
select * from #SUBJECT

drop table #SUBJECT