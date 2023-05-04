DECLARE @c char = '$',
		@v varchar(4) = 'Auto',
		@a datetime,
		@b time,
		@i int,
		@s smallint,
		@t tinyint,
		@n numeric(12,5);
SET @a = getdate()
SET	@b = '19:34:15.123'
SELECT @i = 1234, @s = 123, @t = 3, @n = 1234.2364
PRINT 'char:		  ' + @c
PRINT 'varchar:      ' + @v
PRINT 'int:		  ' + CAST(@i AS CHAR)
PRINT 'smallint:     ' + CAST(@s AS CHAR)

SELECT @a[Date], @b[Time], @t[Tiny Int], @n[Numeric];