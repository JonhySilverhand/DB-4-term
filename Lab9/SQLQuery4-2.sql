DECLARE @FULLFIO VARCHAR(100) = (SELECT TOP(1) STUDENT.NAME FROM STUDENT)
PRINT '������ ���:	  ' + @FULLFIO
DECLARE @SHORTFIO VARCHAR(100) = SUBSTRING(@FULLFIO, 0, CHARINDEX(' ', @FULLFIO) + 1) +
								 SUBSTRING(@FULLFIO, CHARINDEX(' ', @FULLFIO) + 1, 1) + '. ' +
								 SUBSTRING(@FULLFIO, CHARINDEX(' ', @FULLFIO, CHARINDEX(' ', @FULLFIO) + 1) + 1, 1) + '. '
PRINT '�������� ���: ' + @SHORTFIO