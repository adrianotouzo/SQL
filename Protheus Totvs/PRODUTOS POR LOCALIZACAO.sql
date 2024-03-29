
SELECT DISTINCT  B1_COD, B1_DESC, B1_FABRIC 'REF. FABR',B1_CODBOXI as EAN, B1_LOCAL1, B1_VENCAS, SUM(B2_QATU) AS ESTOQUE
FROM SB1010, ZZ8010, SB2010
WHERE B1_COD = ZZ8_PROD AND B1_COD = B2_COD AND SB1010.D_E_L_E_T_ <> '*' AND SB2010.D_E_L_E_T_ <> '*' AND ZZ8010.D_E_L_E_T_ <> '*'
and B2_FILIAL ='01' 
--AND B2_QATU <> '0'
--AND B1_VENCAS = 'N' 
--and B1_COD in ('')

Group by  B1_COD, B1_DESC, B1_FABRIC,B1_CODBOXI, B1_LOCAL1, B1_VENCAS
order by 1