DROP TABLE IF EXISTS #EXPLRE;
CREATE TABLE #EXPLRE
(    
	INT_FIELD int,  
    STR_FIELD varchar(50) 
);

checkpoint;  --�������� ��
DBCC DROPCLEANBUFFERS;  --�������� �������� ���

SET NOCOUNT ON
DECLARE @I int = 0
WHILE @I < 1000
BEGIN
	INSERT #EXPLRE(INT_FIELD, STR_FIELD) 
	VALUES (floor(100 * rand()), 'str' + cast(@I as char))
	SET @I += 1
END

SELECT * FROM #EXPLRE WHERE INT_FIELD BETWEEN 20 AND 60;

CREATE CLUSTERED INDEX #EXPLRE_CL ON #EXPLRE(INT_FIELD ASC);
