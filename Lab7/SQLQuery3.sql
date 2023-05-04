USE UNIVER

SELECT FACULTY, PROFESSION, SUBJECT, ROUND(AVG(CAST(PROGRESS.NOTE AS FLOAT(4))), 2)[AVG_NOTES]
FROM PROGRESS INNER JOIN STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
INNER JOIN GROUPS ON GROUPS.IDGROUP = STUDENT.IDGROUP
WHERE GROUPS.FACULTY = '���'
GROUP BY FACULTY, PROFESSION, SUBJECT
UNION
SELECT FACULTY, PROFESSION, SUBJECT, ROUND(AVG(CAST(PROGRESS.NOTE AS FLOAT(4))), 2)[AVG_NOTES]
FROM PROGRESS INNER JOIN STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
INNER JOIN GROUPS ON GROUPS.IDGROUP = STUDENT.IDGROUP
WHERE GROUPS.FACULTY = '����'
GROUP BY FACULTY, PROFESSION, SUBJECT

SELECT FACULTY, PROFESSION, SUBJECT, ROUND(AVG(CAST(PROGRESS.NOTE AS FLOAT(4))), 2)[AVG_NOTES]
FROM PROGRESS INNER JOIN STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
INNER JOIN GROUPS ON GROUPS.IDGROUP = STUDENT.IDGROUP
WHERE GROUPS.FACULTY = '���'
GROUP BY FACULTY, PROFESSION, SUBJECT
UNION ALL
SELECT FACULTY, PROFESSION, SUBJECT, ROUND(AVG(CAST(PROGRESS.NOTE AS FLOAT(4))), 2)[AVG_NOTES]
FROM PROGRESS INNER JOIN STUDENT ON PROGRESS.IDSTUDENT = STUDENT.IDSTUDENT
INNER JOIN GROUPS ON GROUPS.IDGROUP = STUDENT.IDGROUP
WHERE GROUPS.FACULTY = '����'
GROUP BY FACULTY, PROFESSION, SUBJECT