DECLARE @RECNO INT

SET @RECNO =(SELECT MAX(R_E_C_N_O_) from SL1010)+1

PRINT @RECNO
-------------------------------------------------------------
DECLARE @RECNO INT 

SET @RECNO =(SELECT MAX(L1_NUM) from SL1010)+1

PRINT @RECNO

------------------------------------------------------------

SELECT DISTINCT L1_NUM	from SL1010  
				where D_E_L_E_T_ <> '*' AND L1_FILIAL = '01'

GROUP BY  L1_NUM  ORDER BY 1 DESC

---------------------------------------------------------------

SELECT DISTINCT COUNT(*) AS TOTAL 
			from SL1010  
				where D_E_L_E_T_ <> '*' AND L1_FILIAL = '01' 



--------------------------------------------------------------

SELECT DISTINCT R_E_C_N_O_,  COUNT(*) AS TOTAL 
			from SL1010  
			 where D_E_L_E_T_ <> '*' AND L1_FILIAL = '01'

GROUP BY  R_E_C_N_O_ ORDER BY  2 DESC

--------------------------------------------------------------

SELECT L1_DOC, *
			from SL1010  
				where D_E_L_E_T_ <> '*' AND L1_FILIAL = '01' 

GROUP BY  L1_DOC ORDER BY  2 DESC

SELECT D_E_L_E_T_, * FROM SL1010 WHERE L1_NUM = '616899' AND L1_DATA = '20201020'