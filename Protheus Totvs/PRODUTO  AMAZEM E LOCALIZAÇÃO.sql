--CONSULTA PRODUTO COM SALDO POR AMAZEM E LOCALIZAÇÃO

SELECT DISTINCT B1_COD AS CODIGO , B1_DESC AS PRODUTO , B1_UM AS UN,B1_SUBGRUP,B1_VENCAS as VENDA_CASADA,
				B1_LOCAL1 AS LOCALIZAÇÃO, B1_LOCAL2 AS EXECESSO1,B1_LOCAL3 AS EXECESSO2,
				
		ISNULL((SELECT SUM(B2_QATU) FROM SB2010 B2 WHERE B2_COD = B1_COD AND B2_LOCAL='01' AND  B2.D_E_L_E_T_ <> '*'),0) AMR01,
		ISNULL((SELECT SUM(B2_QATU) FROM SB2010 B2 WHERE B2_COD = B1_COD AND B2_LOCAL='02' AND  B2.D_E_L_E_T_ <> '*'),0) AMR02,
		ISNULL((SELECT SUM(B2_QATU) FROM SB2010 B2 WHERE B2_COD = B1_COD AND B2_LOCAL='03' AND  B2.D_E_L_E_T_ <> '*'),0) AMR03
	FROM SB1010, SB2010
WHERE	B1_COD = B2_COD
ORDER BY 1
	