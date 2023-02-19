-- INFORMAR O MES NO PARAMETRO.

IF EXISTS(SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'RESSARSAI') 
DROP TABLE RESSARSAI

SELECT D2_DOC,D2_SERIE,D2_CF,CONVERT(varchar, CAST(D2_EMISSAO AS datetime), 103) DATA
,D2_CLIENTE,D2_LOJA,F2_CHVNFE
,D2_EMISSAO,D2_TOTAL,D2_BASEICM,D2_VALICM,D2_BRICMS,D2_ICMSRET
,D2_COD,D2_QUANT,D2_PICM,D2_PRCVEN,D2_ITEM
,D2_TES
,	(SELECT TOP 1 D11.D1_DOC+D11.D1_SERIE+D11.D1_FORNECE+D11.D1_LOJA
	FROM SD1010 D11 WITH(NOLOCK) WHERE D11.D1_COD = D2_COD 
	AND D11.D_E_L_E_T_=''
	AND D11.D1_DTDIGIT+D11.D1_COD+D11.D1_SERIE+D11.D1_FORNECE+D11.D1_ITEM = 
		(SELECT MAX(D1.D1_DTDIGIT+D1.D1_COD+D1.D1_SERIE+D1.D1_FORNECE+D1.D1_ITEM)  
 		FROM SD1010 D1 WITH(NOLOCK) 
		INNER JOIN SF4010 F4 WITH(NOLOCK) ON F4_CODIGO = D1.D1_TES  AND F4.D_E_L_E_T_<>'*' AND F4.F4_DUPLIC ='S' AND F4.D_E_L_E_T_<>'*'
		WHERE D1.D1_COD = D2_COD AND D2_EMISSAO >= D1.D1_DTDIGIT AND D1.D1_TES IN ('006','026','005','023')
		AND D1.D1_QUANT >= D2_QUANT AND D1.D_E_L_E_T_='') 
) D1_ENT, D2_CLASFIS
INTO RESSARSAI
FROM SD2010 D2 WITH(NOLOCK) 
INNER JOIN SA1010 A1 WITH(NOLOCK) ON A1_COD = D2_CLIENTE AND A1_LOJA = D2_LOJA /*AND A1_EST ='SP'*/ AND A1.D_E_L_E_T_<>'*'
INNER JOIN SB1010 B1 WITH(NOLOCK) ON B1_COD = D2_COD AND B1_TS ='557' AND B1.D_E_L_E_T_<>'*'
INNER JOIN SF2010 F2 WITH(NOLOCK) ON F2_DOC = D2_DOC AND F2_SERIE = D2_SERIE AND F2_CLIENTE = D2_CLIENTE AND F2.D_E_L_E_T_<>'*'
INNER JOIN SF4010 F4 WITH(NOLOCK) ON F4_CODIGO = D2_TES  AND F4.D_E_L_E_T_<>'*' AND F4.F4_DUPLIC ='S' AND F4.D_E_L_E_T_<>'*'
WHERE 
D2_EMISSAO LIKE '202104%' AND D2.D_E_L_E_T_ <> '*' AND D2_SERIE IN ('1','9')


-- COSULTA DEPOIS DO QUERY ACIMA SER EXECUTADO

SELECT D2_EMISSAO,A1_COD,A1_LOJA,A1_NOME,A1_EST,A1_CGC,F2_CHVNFE,D2_COD
,round(D2_PRCVEN  ,2) D2_PRCVEN
,round(D2_QUANT	  ,2) D2_QUANT
,round(D2_TOTAL	  ,2) D2_TOTAL	  
,round(D2_BASEICM ,2) D2_BASEICM 
,round(D2_PICM	  ,2) D2_PICM	  
,round(D2_VALICM  ,2) D2_VALICM  
,round(D2_BRICMS  ,2) D2_BRICMS  
,round(D2_ICMSRET ,2) D2_ICMSRET 
,D2_TES,D2_CF
,D1_EMISSAO,D1_DTDIGIT,D1_FORNECE,D1_LOJA,A2_NOME,A2_EST,A2_CGC,F1_CHVNFE,D1_COD
,round(D1_VUNIT   ,2) D1_VUNIT   
,round(D1_QUANT	  ,2) D1_QUANT	  
,round(D1_TOTAL	  ,2) D1_TOTAL	  
,round(D1_BASEICM ,2) D1_BASEICM 
,round(D1_PICM	  ,2) D1_PICM	  
,round(D1_VALICM  ,2) D1_VALICM  
,round(D1_BRICMS  ,2) D1_BRICMS  
,round(D1_ICMSRET ,2) D1_ICMSRET 
,D1_TES,D1_CF
,round(IIF(D1_PICM = '4' AND B1_IVA04 <> 0,B1_IVA04, IIF(D1_PICM = '12' AND B1_IVA12 <> 0,B1_IVA12,D1_MARGEM)),2) IVA
,B1_PICMENT ZZ8_PICMST,ZZ8_IVA4,ZZ8_IVAA
FROM RESSARSAI R
LEFT OUTER JOIN SD1010 D1 WITH(NOLOCK) ON D1.D1_DOC = SUBSTRING(D1_ENT,1,9) AND D1.D1_SERIE = SUBSTRING(D1_ENT,10,3) AND D1.D1_FORNECE = SUBSTRING(D1_ENT,13,6) AND D1_COD = D2_COD AND D1.D_E_L_E_T_ = ''
LEFT OUTER JOIN SA2010 A2 WITH(NOLOCK) ON A2_COD = D1_FORNECE AND A2_LOJA = D1_LOJA AND A2.D_E_L_E_T_ =''
LEFT OUTER JOIN SF1010 F1 WITH(NOLOCK) ON F1.F1_DOC = SUBSTRING(D1_ENT,1,9) AND F1.F1_SERIE = SUBSTRING(D1_ENT,10,3) AND F1.F1_FORNECE = SUBSTRING(D1_ENT,13,6) AND F1.D_E_L_E_T_ <> '*'
LEFT OUTER JOIN SB1010 B1 WITH(NOLOCK) ON B1_COD = D2_COD AND B1.D_E_L_E_T_ =''
LEFT OUTER JOIN SA1010 A1 WITH(NOLOCK) ON A1_COD = D2_CLIENTE AND A1_LOJA = D2_LOJA AND A1.D_E_L_E_T_ =''
LEFT OUTER JOIN ZZ8010 Z8 WITH(NOLOCK) ON ZZ8_PROD = D2_COD AND B1.D_E_L_E_T_ =''



