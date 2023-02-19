DROP TABLE COMPNOTA

SELECT D2_SERIE,D2_DOC,D2_CLIENTE,D2_EMISSAO,(CASE WHEN SUM(C6_PRCVEN) >=SUM(C6_PRMIN) THEN A3_COMIS ELSE A3_COMINT END) PCOM1
INTO COMPNOTA
FROM SC6010 C6
INNER JOIN SD2010 D2 ON D2_DOC = C6_NOTA AND D2_SERIE=C6_SERIE AND D2_ITEMPV=C6_ITEM AND D2_FILIAL=C6_FILIAL AND D2.D_E_L_E_T_ ='' 
AND D2_EMISSAO =  CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112)
INNER JOIN SF2010 F2 ON F2_DOC = D2_DOC AND F2_SERIE = D2_SERIE AND F2_EMISSAO = D2_EMISSAO AND F2_FILIAL = D2_FILIAL AND F2.D_E_L_E_T_ ='' AND F2_DUPL <> ''
INNER JOIN SA3010 A3 ON A3_COD = F2_VEND1 AND A3.D_E_L_E_T_ =''
WHERE C6.D_E_L_E_T_ ='' 
GROUP BY D2_DOC,D2_CLIENTE,D2_SERIE, A3_COMIS,A3_COMINT,F2_PCOM1,D2_EMISSAO
HAVING F2_PCOM1 <> (CASE WHEN SUM(C6_PRCVEN) >=SUM(C6_PRMIN) THEN A3_COMIS ELSE A3_COMINT END)

UPDATE SF2010 SET F2_PCOM1 = PCOM1, F2_VLCOMIS = F2_VALMERC *(PCOM1/100)
FROM SF2010 F2
INNER JOIN COMPNOTA ON D2_SERIE = F2_SERIE AND D2_DOC = F2_DOC AND D2_EMISSAO = F2_EMISSAO
WHERE  F2_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112) AND F2.D_E_L_E_T_ =''

UPDATE SE1010 SET E1_COMIS1 = PCOM1, E1_BASCOM1 = E1_VALOR, E1_VALCOM1 = E1_VALOR *(PCOM1/100)
FROM SE1010 E1 
INNER JOIN COMPNOTA ON D2_SERIE = E1_SERIE AND D2_DOC = E1_NUMNOTA AND D2_EMISSAO = E1_EMISSAO
WHERE  E1_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112) AND E1.D_E_L_E_T_ =''


DROP TABLE COMPNOTA

SELECT D2_SERIE,D2_DOC,D2_CLIENTE,D2_EMISSAO,(CASE WHEN SUM(UB_VRUNIT) >=SUM(UB_PRMIN ) THEN A3_COMIS ELSE A3_COMINT END) PCOM1
INTO COMPNOTA
FROM SUA010 UA
INNER JOIN SD2010 D2 ON D2_DOC = UA_DOC AND D2_SERIE = UA_SERIE AND D2_CLIENTE =UA_CLIENTE AND D2_FILIAL = UA_FILIAL AND D2.D_E_L_E_T_ ='' 
AND D2_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112)
INNER JOIN SUB010 UB ON UB_NUM = UA_NUM AND UB_FILIAL = UA_FILIAL AND UB_PRODUTO = D2_COD AND UB.D_E_L_E_T_ ='' 
INNER JOIN SF2010 F2 ON F2_DOC = D2_DOC AND F2_SERIE = D2_SERIE AND F2_EMISSAO = D2_EMISSAO AND F2_FILIAL = D2_FILIAL AND F2.D_E_L_E_T_ =''
INNER JOIN SA3010 A3 ON A3_COD = F2_VEND1 AND A3.D_E_L_E_T_ =''
WHERE UA.D_E_L_E_T_ ='' 
GROUP BY D2_DOC,D2_CLIENTE,D2_SERIE, A3_COMIS,A3_COMINT,F2_PCOM1,D2_EMISSAO
HAVING F2_PCOM1 <> (CASE WHEN SUM(UB_VRUNIT) >=SUM(UB_PRMIN) THEN A3_COMIS ELSE A3_COMINT END)

UPDATE SF2010 SET F2_PCOM1 = PCOM1, F2_VLCOMIS = F2_VALMERC *(PCOM1/100)
FROM SF2010 F2
INNER JOIN COMPNOTA ON D2_SERIE = F2_SERIE AND D2_DOC = F2_DOC AND D2_EMISSAO = F2_EMISSAO
WHERE  F2_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112) AND F2.D_E_L_E_T_ =''


UPDATE SE1010 SET E1_COMIS1 = PCOM1, E1_BASCOM1 = E1_VALOR, E1_VALCOM1 = E1_VALOR *(PCOM1/100)
FROM SE1010 E1 
INNER JOIN COMPNOTA ON D2_SERIE = E1_SERIE AND D2_DOC = E1_NUMNOTA AND D2_EMISSAO = E1_EMISSAO
WHERE  E1_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112) AND E1.D_E_L_E_T_ =''

UPDATE SE1010 SET  E1_ORIGEM = '_'+E1_ORIGEM  
WHERE E1_PREFIXO = 'REC'  AND SUBSTRING(E1_ORIGEM,1,1) <> '_'
AND E1_EMISSAO = CONVERT(VARCHAR(8),CAST(GETDATE() AS SMALLDATETIME), 112) AND D_E_L_E_T_ =''
