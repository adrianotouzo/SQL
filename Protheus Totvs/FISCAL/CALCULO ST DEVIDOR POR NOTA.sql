--- CALCULO DEVIDO DE ST POR NOTA FISCAL
--- RODAR SELECT COM A NOTAS DROP A TABELA DEPOIS SELECT CUSTOST.
-- drop   table CUSTOST
--SELECT * FROM CUSTOST
SELECT D1_DOC NOTA ,D1_SERIE SERIE ,D1_ITEM ITEM ,B1_POSIPI NCM,B1_COD CODPRO ,D1_QUANT QUANT,D1_VUNIT VUNIT,D1_TOTAL TOTAL
,100-F4_BASEICM REDICM,D1_VALFRE OUTROS
,D1_BASEICM BASEICMS,D1_PICM INTERE
,D1_BASEICM *(D1_PICM/100) ICMINTERE
,D1_IPI IPI,D1_VALIPI VALIPI,B1_PICMENT IVAORI
,ROUND((((1+(B1_PICMENT/100))*(1-(D1_PICM/100))/(1-(B1_PICM/100)))-1)*100,2) IVAAJUS
,ROUND((D1_BASEICM+D1_VALIPI)*(1+(ROUND((((1+(B1_PICMENT/100))*(1-(D1_PICM/100))/(1-(B1_PICM/100)))-1)*100,2)/100)),2) BASEST
,ROUND(((D1_BASEICM+D1_VALIPI)*(1+(ROUND((((1+(B1_PICMENT/100))*(1-(D1_PICM/100))/(1-(B1_PICM/100)))-1)*100,2)/100))*((CASE WHEN F4_BASEICM=0 THEN 100 ELSE F4_BASEICM END/100))),2) BASESTRED
,B1_PICM INTERNA
,ROUND(((D1_BASEICM+D1_VALIPI)*(1+(ROUND((((1+(B1_PICMENT/100))*(1-(D1_PICM/100))/(1-(B1_PICM/100)))-1)*100,2)/100))*((CASE WHEN F4_BASEICM=0 THEN 100 ELSE F4_BASEICM END/100)))*(B1_PICM/100),2) ICMSST
,ROUND((((D1_BASEICM+D1_VALIPI)*(1+(ROUND((((1+(B1_PICMENT/100))*(1-(D1_PICM/100))/(1-(B1_PICM/100)))-1)*100,2)/100))*((CASE WHEN F4_BASEICM=0 THEN 100 ELSE F4_BASEICM END/100)))*(B1_PICM/100))-D1_VALICM,2) STDEVIDO
INTO CUSTOST
FROM SB1010 B1 WITH (NOLOCK)
INNER JOIN SD1010 D1 WITH (NOLOCK) ON D1_COD = B1_COD AND D1_ICMSRET = 0 AND D1_DTDIGIT LIKE '2021%' AND D1.D_E_L_E_T_ ='' 
INNER JOIN SF4010 F4 WITH (NOLOCK) ON F4_CODIGO = D1_TES AND F4.D_E_L_E_T_ ='' 
AND D1_DOC IN ('149233','16601','363584','358690')
AND D1_DTDIGIT LIKE '20210%'
WHERE B1_PICMENT !=0
AND B1.D_E_L_E_T_ = ''
ORDER BY 3


--SELECT CODPRO,STDEVIDO,'REF. NOTA/SERIE/ITEM '+NOTA+'/'+SERIE+'/'+ITEM OBSERV FROM CUSTOST WHERE CODPRO !='051960049' ORDER BY 1

--SELECT DISTINCT  D3_OBS FROM SD3010 WHERE D3_USUARIO LIKE '%CONZI%' AND D3_OBS LIKE 'REF. NOTA/SERIE/ITEM%' AND D_E_L_E_T_ = ''

--SELECT * FROM SD3010 WHERE D3_OBS ='ACERTO VALOR PIS COFINS' AND D3_CF NOT IN ('RE6')


--SELECT TOP 10 D1_VALFRE,* FROM SD1010

--SELECT * FROM SD1010 WHERE D1_FORNECE = '000445' AND D1_DTDIGIT LIKE '2021%' ORDER BY D1_COD


--SELECT * FROM SB1010 WHERE B1_COD = '021490032'      
/*
SELECT * FROM SF5010 
WHERE F5_CODIGO IN ('006','512')
ORDER BY 2
*/


--SELECT * FROM DELETE SD3010 WHERE D3_COD = '021490032' AND D3_EMISSAO = '20210430'      