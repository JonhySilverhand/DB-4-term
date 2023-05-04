DECLARE @total integer = (SELECT SUM(AUDITORIUM_CAPACITY) FROM AUDITORIUM),
		@count integer, 
		@avgCapacity real,
		@countLessAvg integer,
		@percent numeric (12,5);
IF @total > 200
	BEGIN
		SELECT @COUNT = (SELECT COUNT(*) FROM AUDITORIUM)
		SELECT @avgCapacity = (SELECT AVG(AUDITORIUM_CAPACITY) FROM AUDITORIUM)
		SELECT @countLessAvg = (SELECT COUNT(*) FROM AUDITORIUM WHERE AUDITORIUM_CAPACITY < @avgCapacity)
		SELECT @percent = CAST(@countLessAvg AS REAL) / CAST(@count AS REAL)
		PRINT 'Кол-во аудиторий:										' + CAST(@count AS char)
		PRINT 'Средняя вместимость аудиторий:							' + CAST(@avgCapacity AS char)
		PRINT 'Кол-во аудиторий, вместимость которых меньше средней:	' + CAST(@countLessAvg AS char)
		PRINT '% меньших, чем среднее:									' + CAST(@percent AS char)
	END
ELSE 
	PRINT 'Общая вместимость: ' + CAST(@total AS char)