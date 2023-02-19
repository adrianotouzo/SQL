SELECT F2_DOC NOTA ,
F2_SERIE SERIE,
CONVERT(varchar, CAST(F2_EMISSAO AS datetime), 103) EMISSAO,
F2_EST EST,
A1_CGC CPF,
F2_CHVNFE CHVNFE,
F2_VALBRUT VLRNOTA,
E2_PREFIXO+E2_NUM  GUIA, 
E2_VALOR VLRDIFAL,
CONVERT(varchar, CAST(E2_BAIXA AS datetime), 103) PGTO

FROM SF2010 F2 WITH(NOLOCK) 
INNER JOIN SE2010 E2 WITH(NOLOCK) ON (E2_PREFIXO+E2_NUM = F2_GNRFECP OR E2_PREFIXO+E2_NUM = F2_GNRDIF) AND E2.D_E_L_E_T_ =''
AND E2_BAIXA = ''
INNER JOIN SA1010 A1 WITH(NOLOCK) ON A1_COD = F2_CLIENTE AND A1_LOJA = F2_LOJA AND A1.D_E_L_E_T_ ='' 
WHERE  F2_SERIE = '9' AND F2.D_E_L_E_T_ =''
ORDER BY 1

SELECT * FROM SE2010 WHERE E2_NUM ='000002022'

SELECT F2_GNRDIF,* FROM SF2010 WHERE F2_EMISSAO ='20211001' AND F2_GNRDIF <>'' AND F2_GNRDIF LIKE 'ICM000002022'

SELECT * FROM SF2010 