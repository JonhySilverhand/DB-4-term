USE UNIVER

SELECT PULPIT.PULPIT_NAME, FACULTY.FACULTY_NAME
FROM FACULTY INNER JOIN PULPIT ON PULPIT.FACULTY = FACULTY.FACULTY
WHERE FACULTY.FACULTY IN (SELECT PROFESSION.FACULTY FROM PROFESSION 
						WHERE PROFESSION.PROFESSION_NAME LIKE '%����������%' OR PROFESSION.PROFESSION_NAME LIKE '%����������%')
--?????????????????????????? ������ � �������� ��������� ����� 3 ������������ � ����������