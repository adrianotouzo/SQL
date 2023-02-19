rem grava data e hora no arquivo de log
DATE /t >>E:\BackupSQL\beonup\scripts\backup.log
TIME /t >>E:\BackupSQL\beonup\scripts\backup.log
 
rem copia backup full
move E:\BackupSQL\OXIMAQ\FULL\maxima\* Y:\maxima\
move E:\BackupSQL\OXIMAQ\FULL\OXICLOUD\* Y:\OXICLOUD\
move E:\BackupSQL\OXIMAQ\FULL\TOTVSPED\* Y:\TOTVSPED\
move E:\BackupSQL\OXIMAQ\FULL\TSS\* Y:\TSS\
move E:\BackupSQL\OXIMAQ\FULL\ZOHO\* Y:\ZOHO\

rem copia backup log
move E:\BackupSQL\OXIMAQ\LOG\maxima\*  Y:\LOG_TRANSACTION\maxima\  
move E:\BackupSQL\OXIMAQ\LOG\OXICLOUD\*  Y:\LOG_TRANSACTION\OXICLOUD\
move E:\BackupSQL\OXIMAQ\LOG\TOTVSPED\*  Y:\LOG_TRANSACTION\TOTVSPED\
move E:\BackupSQL\OXIMAQ\LOG\TSS\*  Y:\LOG_TRANSACTION\TSS\
move E:\BackupSQL\OXIMAQ\LOG\ZOHO\*  Y:\LOG_TRANSACTION\ZOHO\
 
@echo "Copia feita com sucesso!" >>backup.log

exit