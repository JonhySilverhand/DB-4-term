USE S_MyBase

SELECT * From Details;
SELECT COUNT(*) From Details; 
SELECT Name_Operation, Count FROM Details;

UPDATE Details set Count = Count + 80 WHERE ID = 1;
