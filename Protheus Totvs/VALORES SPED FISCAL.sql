--////////////////////////////////////////////////////////////////////////////////--

-- QUERY PARA GERA��O DE VALORES POR CFOP PARA COMPRAR COM SPED.

--////////////////////////////////////////////////////////////////////////////////--
--SELECT * FROM SF3010 WHERE F3_ENTRADA BETWEEN '20220101' AND '20220131'

SELECT F3_CFO,CDA_CODLAN,SUM(CDA_VALOR) AS VALOR,CDA_VL197 
	
	FROM CDA010 CDA
		INNER JOIN SF3010 SF3 ON CDA_NUMERO = F3_NFISCAL 
		  AND CDA_ESPECI = F3_ESPECIE AND CDA_SERIE = F3_SERIE 
		    AND CDA_FILIAL = F3_FILIAL
	
	WHERE F3_ENTRADA BETWEEN '20220101' AND '20220131' 
	  AND F3_FILIAL ='01'
		AND SF3.D_E_L_E_T_ = '' AND CDA.D_E_L_E_T_ = '' 
		   AND CDA_ESPECI IN ('SPED','NTST','NTSC','NFCEE')
		 --AND CDA_VL197 = '1'
		AND F3_CFO = '1102'
	--AND CDA_NUMERO ='001155534'
GROUP BY F3_CFO,CDA_VL197, CDA_CODLAN
ORDER BY 1

--SUM(CDA_VALOR+CDA_BASE) AS VALOR
SELECT * FROM CDA010
SELECT * FROM SF4010
SELECT * FROM SF3010 WHERE F3_NFISCAL ='001155534'
SELECT * FROM CDA010 WHERE CDA_NUMERO ='001155534'
SELECT * FROM SF1010 WHERE F1_DOC ='001155534'


SELECT DISTINCT  CDA_CODLAN, SUM(CDA_VALOR) AS VALOR 
		FROM CDA010 
	WHERE CDA_NUMERO ='000433668'
GROUP BY CDA_CODLAN

SELECT * FROM CDA010 
	WHERE CDA_NUMERO ='000433668' AND D_E_L_E_T_ =''
000407806