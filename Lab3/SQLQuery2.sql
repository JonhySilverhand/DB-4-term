USE S_MyBase
CREATE TABLE "Details_Operation"
(
	"Name_Operation" NVARCHAR(25) NOT NULL PRIMARY KEY,
	"Sign_Of_Complexity" NCHAR(1) NOT NULL
);
CREATE TABLE "Workers"
(
	"Surname" NVARCHAR(20) NOT NULL,
	"Name" NVARCHAR(20) NOT NULL,
	"Patronymic" NVARCHAR(20) NOT NULL,
	"Adress" NVARCHAR(50) NOT NULL,
	"Phone" NVARCHAR(13) NOT NULL,
	"Experience" int NOT NULL,
	"ID" NVARCHAR(30) NOT NULL PRIMARY KEY
);
CREATE TABLE "Details"
(
	"Name_Operation" NVARCHAR(25) NOT NULL FOREIGN KEY REFERENCES "Details_Operation"("Name_Operation"),
	"Count" int NOT NULL,
	"Worker" NVARCHAR(30) NOT NULL FOREIGN KEY REFERENCES "Workers"("ID"),
	"ID" int NOT NULL PRIMARY KEY,
	Date DATE NOT NULL
);