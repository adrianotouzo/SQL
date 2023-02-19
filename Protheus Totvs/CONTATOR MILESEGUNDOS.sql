-- CONTATOR DE MILISEGUNDOS PARA EXECUÇÃO DE QUERY 

DECLARE @EndTime datetime
DECLARE @StartTime datetime 
SELECT @StartTime=GETDATE() 

-- COLOCAR QUERY A SER EXECUTADO AQUI.
SELECT count(Z02_IDWEB) AS TESTE FROM Z02010 where D_E_L_E_T_ =''

SELECT @EndTime=GETDATE()


--This will return execution time of your query
SELECT DATEDIFF(ms,@StartTime,@EndTime) AS [Duration in millisecs] 