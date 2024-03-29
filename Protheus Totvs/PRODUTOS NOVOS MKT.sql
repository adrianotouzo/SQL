-- CONSULTA DE ITENS NOVOS CADASTRADOS
-- ===================================
--C�digo / Descri��o / Subgrupo / Marca / Refer�ncia / EAN / Saldo / pre�o / estoque poder ter

USE OXICLOUD27

SELECT DISTINCT  
		year(B1_DTCAD) AS ANO, MONTH(B1_DTCAD) AS MES ,B1_COD CODIGO, B1_DESC DESCRICAO, B1_SUBGRUP SUBGRUPO, 
		B1_GRUPO GRUPO, BM_DESC 'DESCRICAO GRUPO',
        B1_MARCA MARCA, ZZ1_DESC 'DESCRICAO MARCA', 
		RTRIM(B1_FABRIC) 'REF. FABR',B1_CODBOXI EAN, ZZ8_PRLIST AS PRE�O,

		(SELECT SUM(B2_QATU) FROM SB2010 B2 WHERE B2_COD = B1_COD AND B2_FILIAL='01' AND  B2.D_E_L_E_T_ <> '*') SALDOAR,
		(SELECT SUM(B2_QATU) FROM SB2010 B2 WHERE B2_COD = B1_COD AND B2_FILIAL='02' AND  B2.D_E_L_E_T_ <> '*') SALDOSC,
		(SELECT SUM(B6_SALDO) FROM SB6010 B6 WHERE B6_PRODUTO = B1_COD  AND  B6.D_E_L_E_T_ <> '*') SALDOTER,


		CONVERT(varchar, CAST(B1_DTCAD AS datetime), 103) 'DATA CADASTRO',
		CONVERT(varchar, CAST(B1_UCOM AS datetime), 103) 'DATA ULTIMA COMPRA',

		CASE WHEN B1_IMAGEM = 'T' THEN 'SIM' ELSE 'NAO' END AS IMAGEM,
		CASE WHEN B5_DESCSER IS NULL THEN 'NAO' ELSE 'SIM' END AS 'ESPECIFICACAO TECNICA',
		CASE WHEN B1_SUBGRUP = '100' THEN 'SIM' ELSE 'NAO' END AS 'VENDA CASADA',
		CASE WHEN B1_DESC_P <> '' THEN 'SIM' ELSE 'NAO' END AS ESP_TEC

	FROM SB1010 B1
	LEFT OUTER JOIN SB5010 SB5 ON B5_COD = B1_COD
	INNER JOIN SBM010 ON B1_GRUPO = BM_GRUPO
	INNER JOIN ZZ1010 ON B1_MARCA = ZZ1_MARCA
	INNER JOIN ZZ8010 ON B1_COD = ZZ8_PROD
		WHERE B1.D_E_L_E_T_ <> '*'
		AND SBM010.D_E_L_E_T_ <> '*'
		AND ZZ1010.D_E_L_E_T_ <> '*'
		AND B1_DTCAD >='2021%'
-- Colocar a data do periodo a que se refere a consulta
-- AND B1_DTCAD BETWEEN '20210101' AND '20210922'
ORDER BY B1_COD
