USE UNIVER

SELECT PULPIT.FACULTY, PULPIT.PULPIT, PULPIT.PULPIT_NAME
FROM PULPIT FULL OUTER JOIN TEACHER
ON PULPIT.PULPIT = TEACHER.PULPIT
WHERE TEACHER.TEACHER IS NULL

SELECT TEACHER.GENDER, TEACHER.PULPIT, TEACHER.TEACHER, TEACHER.TEACHER_NAME
FROM PULPIT FULL OUTER JOIN TEACHER
ON PULPIT.PULPIT = TEACHER.PULPIT
WHERE TEACHER.TEACHER IS NOT NULL

SELECT * FROM PULPIT FULL OUTER JOIN TEACHER
ON PULPIT.PULPIT = TEACHER.PULPIT

                              