USE MASTER 
go
create database S_MyBaseTest on primary
( name = N'S_MyBase_mdf', filename = N'D:\University\4th_term\DB\Lab3\Base\S_MyBase_mdf.mdf', 
   size = 10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
( name = N'S_MyBase_ndf', filename = N'D:\University\4th_term\DB\Lab3\Base\S_MyBase_ndf.ndf', 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
   filegroup FG1
( name = N'S_MyBase_fg1_1', filename = N'D:\University\4th_term\DB\Lab3\Base\S_MyBase_fgq-1.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = N'S_MyBase_fg1_2', filename = N'D:\University\4th_term\DB\Lab3\Base\S_MyBase_fgq-2.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
log on
( name = N'S_MyBase_log', filename=N'D:\University\4th_term\DB\Lab3\Base\S_MyBase_log.ldf',       
   size=10240Kb,  maxsize=2048Gb, filegrowth=10%)

