CREATE VIEW [����������_������] WITH SCHEMABINDING
AS SELECT fc.FACULTY_NAME[���������], COUNT(*)[���-�� ������]
FROM dbo.FACULTY fc INNER JOIN dbo.PULPIT pp ON fc.FACULTY = pp.FACULTY
GROUP BY fc.FACULTY_NAME