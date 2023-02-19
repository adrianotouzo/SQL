rem grava data e hora no arquivo de log
DATE /t >>"E:\BackupSQL\beonup\scripts\backup.log"
TIME /t >>"E:\BackupSQL\beonup\scripts\backup.log"

rem copia backup full 
cls
echo. Iniciando copia
aws s3 mv E:\BackupSQL\OXIMAQ\FULL\maxima\ s3://oximaq-bucket-backup-sqlserver/sqlserver/maxima/ --recursive >>"E:\BackupSQL\beonup\scripts\log\maxima_%DATE:~-4%%DATE:~-10,2%%DATE:~-7,2%_%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%.log">>echo "Copia feita com sucesso"

aws s3 mv E:\BackupSQL\OXIMAQ\FULL\OXICLOUD27\  s3://oximaq-bucket-backup-sqlserver/sqlserver/OXICLOUD/ --recursive >>"E:\BackupSQL\beonup\scripts\log\OXICLOUD_%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%.log" 
@echo "Copia feita com sucesso!%DATE%%TIME%"

aws s3 mv E:\BackupSQL\OXIMAQ\FULL\TOTVSPED23\  s3://oximaq-bucket-backup-sqlserver/sqlserver/TOTVSPED/ --recursive >>"E:\BackupSQL\beonup\scripts\log\TOTVSPED_%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%.log" 
@echo "Copia feita com sucesso!"

aws s3 mv E:\BackupSQL\OXIMAQ\FULL\TSS12\  s3://oximaq-bucket-backup-sqlserver/sqlserver/TSS/ --recursive >>"E:\BackupSQL\beonup\scripts\log\TSS_%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%.log" 
@echo "Copia feita com sucesso!"

aws s3 mv E:\BackupSQL\OXIMAQ\FULL\ZOHO\  s3://oximaq-bucket-backup-sqlserver/sqlserver/ZOHO/ --recursive >>"E:\BackupSQL\beonup\scripts\log\ZOHO_%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%.log" 
@echo "Copia feita com sucesso!"

aws s3 mv E:\BackupSQL\OXIMAQ\FULL\WAP\  s3://oximaq-bucket-backup-sqlserver/sqlserver/WAP/ --recursive >>"E:\BackupSQL\beonup\scripts\log\WAP_%date:~10,4%_%date:~4,2%_%date:~7,2%_%time:~0,2%_%time:~3,2%_%time:~6,2%.log" 
@echo "Copia feita com sucesso!"

rem copia backup log

aws s3 mv E:\BackupSQL\OXIMAQ\LOG\maxima\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/maxima/  --recursive 
 
aws s3 mv E:\BackupSQL\OXIMAQ\LOG\OXICLOUD27\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/OXICLOUD/ --recursive 

aws s3 mv E:\BackupSQL\OXIMAQ\LOG\TOTVSPED23\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/TOTVSPED/ --recursive 

aws s3 mv E:\BackupSQL\OXIMAQ\LOG\TSS12\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/TSS/ --recursive 

aws s3 mv E:\BackupSQL\OXIMAQ\LOG\ZOHO\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/ZOHO/ --recursive 

aws s3 mv E:\BackupSQL\OXIMAQ\LOG\WAP\   s3://oximaq-bucket-backup-sqlserver/sqlserver/LOG_TRANSACTION/WAP/ --recursive 

@echo "Copia feita com sucesso!"
 
DATE /t >>"E:\BackupSQL\beonup\scripts\backup.log"
TIME /t >>"E:\BackupSQL\beonup\scripts\backup.log"
