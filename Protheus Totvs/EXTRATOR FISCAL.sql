--SAIDA E ENTRADA 

SELECT DISTINCT  F3_FILIAL, YEAR(F3_ENTRADA)AS ANO,MONTH(F3_ENTRADA) AS MES, F3_LOJA, F3_NFISCAL, F3_CLIEFOR, F3_ESTADO,F3_CFO, F3_VALCONT, F3_BASEICM, F3_ALIQICM,F3_ESPECIE, 
F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_BASEIPI, F3_VALIPI, F3_ISENIPI, F3_OUTRIPI, F3_ICMSRET, F3_ICMSCOM, F3_VALOBSE,F3_DIFAL,F3_VFCPDIF
 FROM SF3010 WHERE  F3_ENTRADA LIKE '2021%' AND D_E_L_E_T_ <>'*' --F3_ESTADO ='RJ'  AND


 --select * from SF3010  SELECT * FROM SF2010   SELECT * FROM SD2010

 --SAIDA
 /*SELECT DISTINCT D2_FILIAL, D2_TES, D2_CF,D2_COD, F3_ENTRADA, F3_LOJA, F3_NFISCAL, F3_CLIEFOR, F3_ESTADO,F3_CFO, F3_VALCONT, F3_BASEICM, F3_ALIQICM,F3_ESPECIE, 
F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_BASEIPI, F3_VALIPI, F3_ISENIPI, F3_OUTRIPI, F3_ICMSRET, F3_ICMSCOM, F3_VALOBSE 
	FROM SD2010, SF2010, SF3010
		WHERE F2_DOC = D2_DOC AND F3_NFISCAL = F2_DOC 
						AND  F2_EMISSAO BETWEEN '20210501' AND '20210531' 
GROUP BY D2_FILIAL, D2_TES, D2_CF,D2_COD, F3_ENTRADA, F3_LOJA, F3_NFISCAL, F3_CLIEFOR, F3_ESTADO,F3_CFO, F3_VALCONT, F3_BASEICM, F3_ALIQICM,F3_ESPECIE, 
F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_BASEIPI, F3_VALIPI, F3_ISENIPI, F3_OUTRIPI, F3_ICMSRET, F3_ICMSCOM, F3_VALOBSE 
ORDER BY 1

---ENTRADA 

 SELECT DISTINCT D1_FILIAL, D1_TES, D1_CF,D1_COD, F3_ENTRADA, F3_LOJA, F3_NFISCAL, F3_CLIEFOR, F3_ESTADO,F3_CFO, F3_VALCONT, F3_BASEICM, F3_ALIQICM,F3_ESPECIE, 
F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_BASEIPI, F3_VALIPI, F3_ISENIPI, F3_OUTRIPI, F3_ICMSRET, F3_ICMSCOM, F3_VALOBSE 
	FROM SD1010, SF1010, SF3010
		WHERE F1_DOC = D1_DOC AND F3_NFISCAL = F1_DOC 
						AND  F3_ENTRADA BETWEEN '20210501' AND '20210531' 
GROUP BY D1_FILIAL, D1_TES, D1_CF,D1_COD, F3_ENTRADA, F3_LOJA, F3_NFISCAL, F3_CLIEFOR, F3_ESTADO,F3_CFO, F3_VALCONT, F3_BASEICM, F3_ALIQICM,F3_ESPECIE, 
F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_BASEIPI, F3_VALIPI, F3_ISENIPI, F3_OUTRIPI, F3_ICMSRET, F3_ICMSCOM, F3_VALOBSE 
ORDER BY 1

 SELECT * FROM SF1010 WHERE F1_DOC ='147273'
 SELECT * FROM SD1010 WHERE D1_DOC ='147273'
 SELECT D1_FILIAL, D1_TES, D1_CF, D1_COD, 
	FROM SD1010, SF1010 
	WHERE F1_DOC = D1_DOC AND F1_EMISSAO BETWEEN '20210501' AND '20210531' ORDER BY 1

SELECT * FROM SF3010 WHERE F3_NFISCAL IN ('353703','50126911')
*/