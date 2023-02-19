SELECT E1_NUM, E1_CLIENTE,E1_NOMCLI,E1_EMISSAO,E1_PARCELA,E1_NUMBCO,F2_COND,A1_FORMA,E4_FORMA, E4_DESCRI 
FROM SE1010 E1, SF2010 F2, SE4010 E4, SA1010 A1
WHERE E1_NUM = F2_DOC AND  F2_COND = E4_CODIGO AND E1_CLIENTE = A1_COD AND E1_LOJA = A1_LOJA
--AND A1_FORMA ='BL'
AND E1_NUM ='084283'
AND E1_EMISSAO BETWEEN ('20211101') AND ('20211112')  and F2_SERIE IN('1','2') 
--AND E1_BAIXA = '' AND E1_NUMBCO ='' 
AND E1.D_E_L_E_T_=''
AND F2.D_E_L_E_T_=''
AND E4.D_E_L_E_T_=''
AND A1.D_E_L_E_T_=''
ORDER BY 1

SELECT * FROM SL4010 WHERE L4_DATA LIKE '202110%' AND L4_FORMA ='BL'

SELECT * FROM SC5010 WHERE C5_EMISSAO BETWEEN ('20210101') AND ('20211112')

SELECT * FROM SF2010 WHERE F2_DOC IN() AND F2_EMISSAO BETWEEN ('20211106') AND ('20211112') AND F2_SERIE IN ('1','2')

-- movimento bancario caso seja dinheiro
SELECT D_E_L_E_T_, * FROM SE5010 
--UPDATE SE5010 SET D_E_L_E_T_ = '*'
WHERE E5_DATA BETWEEN ('20211110') AND ('20211112') AND E5_MOEDA = 'TC'
--R_E_C_N_O_ = '2312456' and E5_NUMERO IN ('067656')


SELECT F2_CHVNFE,* FROM SF2010 WHERE F2_DOC in('057810') AND F2_SERIE = '9' AND D_E_L_E_T_ =''
SELECT F3_CHVNFE,* FROM SF3010 WHERE  F3_SERIE = '9' AND D_E_L_E_T_ =''
SELECT D2_NFORI,* FROM SD2010 WHERE D2_DOC ='054833' AND D2_SERIE = '9' AND D_E_L_E_T_ =''
--UPDATE SF2010 SET F2_CHVNFE ='35211138875597000190550090000578101867552082' WHERE F2_DOC ='057810' AND F2_SERIE = '9' AND D_E_L_E_T_ =''
--UPDATE SF3010 SET F3_CHVNFE ='35211138875597000190550090000578101867552082' WHERE F3_NFISCAL ='057810' AND F3_SERIE = '9' AND D_E_L_E_T_ =''

35211138875597000190550090000578101867552082
35211038875597000190550090000548331586193132
35211038875597000190550090000548331586193132
35211038875597000190550090000514891150555576
35211038875597000190550090000512931702169362

SELECT F2_CHVNFE,* FROM SF2010 WHERE F2_DOC IN 
('348159','366227','369714','370298','364102','364873','367062','366330','349489','334904','355070','358649','363105','361125')
AND F2_SERIE = '1' AND D_E_L_E_T_ =''


SELECT D2_DOC,D2_EMISSAO,SUM(D2_QUANT) AS QUTD
FROM SD2010
WHERE D2_COD = '030430725' AND D2_SERIE ='9' AND D2_EMISSAO LIKE '2021%' AND D_E_L_E_T_ = ''
GROUP BY D2_DOC,D2_QUANT,D2_EMISSAO
ORDER BY 1
UNION ALL
SELECT DISTINCT  D1_DOC,D1_EMISSAO,D1_NFORI, D1_COD D1_DESCR, SUM(D1_QUANT) AS QUTD
	FROM SD1010 
		WHERE D1_COD = '030430725' AND D1_SERIE ='9' AND D1_EMISSAO LIKE '2021%' AND D_E_L_E_T_ = ''
	GROUP BY D1_DOC,D1_EMISSAO,D1_NFORI, D1_COD, D1_DESCR, D1_QUANT
ORDER BY 1
SELECT F2_DOC,F2_EMISSAO,* FROM SF2010 F2 WHERE F2_SERIE ='9' AND F2_EMISSAO LIKE '2021%' AND F2.D_E_L_E_T_ =''

DECLARE @ID
SELECT DISTINCT F3_NFISCAL, F3_EMISSAO
	FROM SF3010 
	WHERE F3_SERIE='9' AND F3_EMISSAO BETWEEN ('20210101') AND ('20211019') AND D_E_L_E_T_ =''
ORDER BY 1

--UPDATE SF3010 SET D_E_L_E_T_ = '*' WHERE R_E_C_N_O_ ='2735078'

SELECT * FROM SF2010 WHERE F2_EMISSAO = '20211124' AND F2_PREFIXO = 'V01' AND F2_VALBRUT LIKE '529%'

373124 236,38  
373131  927,86

-- financeiro  >>>> NUMERO CUPOM � AQUI QUE ELE APARECE NO RELATORIO
SELECT D_E_L_E_T_,E1_NRDOC, * FROM SE1010 
--UPDATE SE1010 SET D_E_L_E_T_ = '*'
WHERE --E1_NUM IN ('290027') AND 
E1_EMISSAO BETWEEN ('20190228') AND ('20211124') AND E1_NRDOC = '850032' AND E1_PREFIXO = 'V02'

-- movimento bancario caso seja dinheiro
SELECT D_E_L_E_T_, * FROM SE5010 
--UPDATE SE5010 SET E5_NUMCHEQ = '850032'
WHERE   
E5_NUMERO IN ('290027') AND 
E5_DATA ='20190228'   AND E5_PREFIXO ='V01' AND E5_LA ='' --AND E5_VALOR LIKE '38.06%'

SELECT E5_NUMCHEQ,E5_CLIFOR,E5_DATA, E5_VALOR, E5_PREFIXO,* FROM SE5010 
WHERE  E5_NUMCHEQ ='850032' AND E5_MOEDA ='CH' AND E5_VALOR LIKE'1028%'
		AND  E5_BENEF LIKE 'ETE PAULINO BOTELHO' 
		AND E5_DATA BETWEEN ('20211124') AND ('20211125')

	  
		
*	850032         	  	CHQ	214397   	   	CH 	010358	01	CENTRO EST EDUC TECN	20190228	20190228	1028,34
						010358

/*
(SELECT F2_DOC FROM SF2010 F2 WHERE F2_SERIE ='9' AND F2_EMISSAO BETWEEN ('20210101') AND ('20211019') AND F2.D_E_L_E_T_ ='')ENTR,
--UNION ALL
(SELECT F1_DOC FROM SF1010 F1 WHERE F1_SERIE ='9' AND F1_EMISSAO BETWEEN ('20210101') AND ('20211019') AND F1.D_E_L_E_T_ ='')SAID

FROM SF3010
ORDER BY 1
*/

SELECT * FROM Z06010 WHERE Z06_CODIGO = '001328' ORDER BY 2

SELECT * FROM Z06010 WHERE Z06_SKU = '061190018' ORDER BY 2

SELECT D2_DOC,D2_QUANT,D2_EMISSAO,D1_DOC,D1_QUANT,D1_EMISSAO FROM SD2010, SD1010 
WHERE  D2_SERIE = D1_SERIE  AND D2_COD = '030430725' AND D2_SERIE ='9' AND D2_EMISSAO LIKE '2021%' ORDER BY 3


SELECT B1_LOCAL1,B1_LOCAL2,B1_LOCAL3,B1_LOCALIZ,* FROM SB1010
SELECT * FROM SB2010 WHERE B2_COD = '010020009'

SELECT F2_CHVNFE,* FROM SF2010 
WHERE F2_DOC IN ('369694','369934','369817','369798','369822','369702','369681','369682','083881','083884','083894')
and F2_SERIE ='1' AND F2_EMISSAO >='2021%'
ORDER BY 2

SELECT * FROM SE1010 WHERE E1_PREFIXO IN ('V01','REC') AND E1_NUM ='363976' ORDER BY 3

20210816	20210914
20210816	20211014
--UPDATE SE1010 SET E1_EMIS1 ='20210816'  WHERE E1_PREFIXO ='REC' AND E1_NUM ='363976'
--UPDATE SE1010 SET E1_VENCTO = '20211014', E1_VENCREA = '20211014', E1_VENCORI= '20211014' WHERE E1_PREFIXO ='REC' AND E1_NUM ='363976' AND E1_PARCELA = '003'



SELECT PED.L1_FILIAL				AS nkFilial
      , PED.L1_NUM					AS nkPedido  
	  , PED.L1_NUM					AS nkOrcamento 
      , PED.L1_CLIENTE              AS nkCliente          
	  , PED.L1_LOJA   				AS nkLoja		
	  , PED.L1_CONDPG    			AS nkCondicaoPagamento
	  , PED.L1_VEND 				AS nkVendedor
	  , PED.L1_FRETE				AS valorFrete       
	  , PED.L1_VALBRUT  			AS valorBruto       
	  , PED.L1_VLRTOT				AS valorLiquido   
	  , PED.L1_DESCONT      		AS valorDesconto    
	  , CONVERT(DATE,PED.L1_EMISSAO)AS nkDataCriacao   
	  , ''	             			AS nkDataRevisao            
	  , ''	             			AS nkHoraRevisao            
	  , ''	             			AS nkDataCancelamento       
	  , ''	             			AS nkMotivoCancelamento 
	  , ''							AS nkCanceladoPor             
      , ''	             			AS nkContato            
	  , PED.L1_STATUS	            AS flgStatus                  
	  , 'LOJA'					    AS origem
	  , PEDI.L2_ITEM				AS nkNumeroSeqItem
	  , PEDI.L2_PRODUTO			    AS nkProduto
	  , PEDI.L2_QUANT			    AS quantidade
	  , PEDI.L2_VRUNIT 			    AS valorUnitario
	  , PEDI.L2_VLRITEM		    	AS valorTotal    
      , ''                          AS valorDescontoItem
      , ''		   	                AS valorImpostos  
      , PEDI.L2_STATUS				AS flgStatusItem
	  , ''           			    AS nkMotivoCancelamentoItem
	  , ''						    AS nkCanceladoPorItem
      , ''                          as nkDataCancelamentoItem
      , 'PEDIDO'					AS tipoOperacao
      /*, PED.L1_		AS nkCidade
      , PED.SIGLA_ESTADO_CLIENTE	AS nkEstado
      , PED.COD_PAIS_CLIENTE		AS nkPais
      , PED.COD_REGIAO_CLIENTE		AS nkRegiao
      , PED.CNAE_PRINC_CLIENTE		AS nkCNAEP*/
      , ''							AS nkOcorrencia
	  , CONVERT(DATE,'')            AS nkDataProximoContato
   FROM SL1010 AS PED
  INNER JOIN SL2010	AS PEDI ON PEDI.L2_NUM     = PED.L1_NUM AND PEDI.L2_FILIAL = PED.L1_FILIAL
  --INNER JOIN SUAVIEW            AS ORCT ON ORCT.UA_NUM     = PED.ORC     
  WHERE CONVERT(DATE, PED.L1_EMISSAO )    BETWEEN CONVERT(DATE, '2019-01-01') AND CONVERT(DATE, GETDATE())
  --AND CONVERT(DATE, ORCT.UA_EMISSAO)    BETWEEN CONVERT(DATE, '2020-01-01') AND CONVERT(DATE, '2020-01-31')

  --SELECT LV_FILIAL,LV_DATATEF,LV_HORATEF,LV_DOCTEF,LV_AUTORIZ,LV_INSTITU,LV_DOCCANC,LV_DATCANC,LV_HORCANC,LV_NSUTEF,LV_TIPCART,LV_PREFIXO,LV_VALOR,LV_SEQOPER,LV_FORMA,LV_DATA,LV_NUMERO,LV_PARCELA,LV_TIPO,LV_SEQ,LV_FILORIG,LV_CLIENTE,LV_LOJA,TBL.D_E_L_E_T_ 
  --SELECT* FROM dbo.SLV010 TBL WHERE TBL.R_E_C_N_O_ = ''