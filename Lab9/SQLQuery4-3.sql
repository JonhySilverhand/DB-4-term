DECLARE @datenow date = GETDATE();
DECLARE @nextmonthdate date = DATEADD(MONTH, 1, @datenow)
SELECT STUDENT.NAME, STUDENT.BDAY, DATEDIFF(YEAR, STUDENT.BDAY, @nextmonthdate)[Age] FROM STUDENT WHERE MONTH(STUDENT.BDAY) = MONTH(@nextmonthdate)