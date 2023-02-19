SELECT E1_EMISSAO,E1_VENCTO,E1_VENCREA,E1_VENCORI,E1_VALOR AS TOTAL
FROM SE1010 
--UPDATE SE1010 SET E1_VENCTO ='20220303', E1_VENCREA ='20220303',E1_VENCORI ='20220303'
	WHERE E1_EMISSAO BETWEEN ('20220218') AND ('20220228') AND E1_PREFIXO = 'V09' AND E1_BAIXA ='' AND D_E_L_E_T_ <>'*' 
--GROUP BY E1_EMISSAO,E1_VENCTO,E1_VENCREA,E1_VENCORI,E1_VALOR
ORDER BY 1


SELECT L4_DATA, L4_DATATEF,* FROM SL4010 
--UPDATE SL4010 SET L4_DATATEF = '20210924' 
WHERE L4_DATATEF LIKE '24092021' 
--AND L4_DATA > '20210601' ORDER BY 1
SELECT L4_DATA, L4_DATATEF,* FROM SL4010 WHERE L4_DATA ='20210902' AND L4_DATATEF <> ''

T�tulo NF 363976 $555,00/3 entrada + 1, emiss�o 16/08/2021 finalizado no caixa C09 n�o gerou REC no financiero.
SELECT * FROM SE1010 WHERE E1_CLIENTE = '156825' AND E1_EMISSAO ='20210816'

SELECT * FROM SE1010 WHERE E1_PREFIXO ='V01'


SELECT * FROM SA1010

-- PLANILHA MERCADO LIVRE FULL FECHAMENTO FINANCEIRO
--C ONTAS A RECER
SELECT  E1_EMISSAO,year(E1_VENCTO) AS ANO, Month(E1_VENCTO)AS MES, day(E1_VENCTO)AS DIA,E1_PEDIDO
		E1_NUM,E1_NUMNOTA,E1_SERIE,E1_CLIENTE,E1_LOJA, rtrim(A1_CGC) AS CPF_CNPJ,A1_PESSOA, E1_NOMCLI,
	    E1_VEND1, E1_VENCTO,E1_VALOR AS TOTAL,E1_VALLIQ,E1_STATUS, E1_PREFIXO

---TABELA MERCADO LIVRE	
FROM  SE1010, SA1010
		
		WHERE E1_CLIENTE = A1_COD AND E1_VENCTO >='2021%'  AND E1_VEND1 IN('000555','000333') 
		      AND SE1010.D_E_L_E_T_ <>'*' AND E1_BAIXA ='' 
ORDER BY 5

SELECT Z02_DTINC,* FROM Z02010 WHERE Z02_SERIE = '9' ORDER BY Z02_DOC DESC

-- CONTAS A PAGAR
SELECT * FROM SE2010 
--UPDATE SE2010 SET D_E_L_E_T_ ='*'
	WHERE E2_NUM IN ('1230138') and
D_E_L_E_T_ ='' and E2_VENCTO  LIKE '2020%'  AND E2_BAIXA ='' --AND E1_PREFIXO = 'V09'

 
MERCADO LIVRE 	120138 		03/08/2020 	 R$                   3,00 		ABERTO CHAMADO TI (EXCLUIR) 	 
IBAZAR.COM 		167745 		03/08/2020 	 R$                   396,32 	ABERTO CHAMADO TI (EXCLUIR) 	 
MERCADO LIVRE 	1798444 	03/08/2020 	 R$                   185,78 	ABERTO CHAMADO TI (EXCLUIR) 	 
MERCADO LIVRE 	1863041 	03/08/2020 	 R$                   250,11 	ABERTO CHAMADO TI (EXCLUIR) 	 
MERCADO LIVRE 	1930269 	03/08/2020 	 R$                   249,74 	ABERTO CHAMADO TI (EXCLUIR) 	 
MERCAO LIVRE 	1990494 	03/08/2020 	 R$                   244,61 	ABERTO CHAMADO TI (EXCLUIR) 	 
MERCADO LIVRE 	2050672 	03/08/2020 	 R$                2.513,53 	ABERTO CHAMADO TI (EXCLUIR) 	 
EBAZAR 			834943 		03/08/2020 	 R$                   503,89 	ABERTO CHAMADO TI (EXCLUIR) 	 
EBAZAR 			865341		03/08/2020 	 R$                   836,84 	ABERTO CHAMADO TI (EXCLUIR) 	 
EBAZAR			890901		03/08/2020 	 R$                   714,83 	ABERTO CHAMADO TI (EXCLUIR) 	 
EBAZAR 			921614 		03/08/2020 	 R$                   714,70 	ABERTO CHAMADO TI (EXCLUIR)
