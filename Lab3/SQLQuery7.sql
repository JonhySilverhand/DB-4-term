USE S_MyBaseTest

CREATE TABLE "Details_Operation"
(
	"Name_Operation" NVARCHAR(25) NOT NULL PRIMARY KEY,
	"Sign_Of_Complexity" NCHAR(1) NOT NULL
) on FG1;
