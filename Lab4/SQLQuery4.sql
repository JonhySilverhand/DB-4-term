USE UNIVER

SELECT ISNULL(TEACHER.TEACHER_NAME, '***')[�������������], PULPIT.PULPIT_NAME [�������]
FROM PULPIT LEFT OUTER JOIN TEACHER
	 ON TEACHER.PULPIT = PULPIT.PULPIT