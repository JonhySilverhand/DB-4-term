CREATE TABLE "Workers"(
    "Surname" NVARCHAR(20) NOT NULL,
    "Name" NVARCHAR(20) NOT NULL,
    "Patronymic" NVARCHAR(20) NOT NULL,
    "Adress" NVARCHAR(50) NOT NULL,
    "Phone" NVARCHAR(13) NOT NULL,
    "Experience" INT NOT NULL,
    "ID" INT NOT NULL
);
ALTER TABLE
    "Workers" ADD CONSTRAINT "workers_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Details"(
    "Name_Operation" NVARCHAR(25) NOT NULL,
    "Count" INT NOT NULL,
    "Worker" NVARCHAR(30) NOT NULL,
    "ID" BIGINT NOT NULL,
    "Date" DATE NOT NULL
);
ALTER TABLE
    "Details" ADD CONSTRAINT "details_id_primary" PRIMARY KEY("ID");
CREATE TABLE "Details_Operation"(
    "Name_Operation" NVARCHAR(20) NOT NULL,
    "Sign_Of_Complexity" NCHAR(1) NOT NULL
);
ALTER TABLE
    "Details_Operation" ADD CONSTRAINT "details_operation_name_operation_primary" PRIMARY KEY("Name_Operation");
ALTER TABLE
    "Details" ADD CONSTRAINT "details_name_operation_foreign" FOREIGN KEY("Name_Operation") REFERENCES "Details_Operation"("Name_Operation");
ALTER TABLE
    "Details" ADD CONSTRAINT "details_worker_foreign" FOREIGN KEY("Worker") REFERENCES "Workers"("ID");