USE [OXICLOUD23]
GO

--INSERT INTO [dbo].[SE1010] 
(E1_PREFIXO, 
	 E1_NUM, 
	 E1_TIPO, 
	 E1_CLIENTE, 
	 E1_LOJA, 
	 E1_EMISSAO, 
	 E1_VENCTO, 
	 E1_VALOR, E1_NATUREZ, E1_PORTADO, E1_VENCREA, E1_BAIXA, E1_EMIS1, E1_HIST, E1_MOVIMEN, E1_VEND1, E1_VEND2, E1_NUMNOTA, E1_SERIE, E1_STATUS, E1_ORIGEM, E1_SDOC)
--VALUES ('SA4','011937','R$','999999','01','20201028','20201028','315.90','3100001',
		'C11','20201028','20201028','20201028','VENDA EM DINHEIRO','20201028','000619','001175','011937','SA4','B','LOJA701','SA4')

GO

SELECT * FROM SE1010 WHERE E1_NUM = '011937' AND E1_EMISSAO = '20201028'
 
 --UPDATE SE1010 SET E1_NOMCLI = 'CONSUMIDOR LOJA AR',E1_RECIBO = '2', E1_SITUACA = '0', E1_VALLIQ = '315.90', E1_VENCORI = '20201028'
--,E1_MOEDA = '1', E1_BASCOM1 = '315.90', E1_BASCOM2 = '315.90', E1_OK = 'cJ'
-- WHERE E1_NUM = '011937' AND E1_EMISSAO = '20201028'

--INSERT INTO SE1010 
--(E1_FILIAL, E1_PREFIXO, E1_NUM, E1_TIPO, E1_CLIENTE, E1_LOJA, E1_EMISSAO, E1_VENCTO, E1_VALOR, E1_NATUREZ, E1_PORTADO, E1_VENCREA, E1_BAIXA, E1_EMIS1, E1_HIST, E1_MOVIMEN, E1_VEND1, E1_VEND2, E1_NUMNOTA, E1_SERIE, E1_STATUS, E1_ORIGEM, E1_SDOC)
--VALUES ('','SA4','011937','R$','999999','01','20201028','20201028','315.90','3100001','C11','20201028','20201028','20201028','VENDA EM DINHEIRO','20201028','000619','001175','011937','SA4','B','LOJA701','SA4');


--CABECARIO NOTA
SELECT * FROM SF2010 
--UPDATE SF2010 SET D_E_L_E_T_ = ''
WHERE F2_DOC = '011938' AND F2_SERIE = 'SA4'

-- item NOTA
SELECT * FROM SD2010 
--UPDATE SD2010 SET D_E_L_E_T_ = ''
WHERE D2_DOC = '011937' AND D2_SERIE = 'SA4'


SELECT * FROM SF3010 
--UPDATE SF3010 SET D_E_L_E_T_ = ''
WHERE F3_NFISCAL = '011938' AND F3_SERIE = 'SA4'