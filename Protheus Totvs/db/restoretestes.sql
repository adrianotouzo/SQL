GO
ALTER DATABASE TESTES
SET SINGLE_USER WITH
ROLLBACK IMMEDIATE
GO


RESTORE DATABASE [TESTES]
FROM DISK = 'E:\BackupSQL\OXIMAQ\FULL\OXICLOUD12\OXICLOUD.bak'
WITH 
MOVE 'OXIMAQ_Data' TO 'T:\DATA\TESTES.mdf',
MOVE 'OXIMAQ_Log' TO 'T:\DATA\TESTES_log.ldf'
,RECOVERY, REPLACE, STATS = 10;
 
GO
 ALTER DATABASE [TESTES] SET RECOVERY SIMPLE 
GO
 
/*If there is no error in statement before database will be in multiuser
mode.
If error occurs please execute following command it will convert
database in multi user.*/
ALTER DATABASE TESTES SET MULTI_USER
GO
