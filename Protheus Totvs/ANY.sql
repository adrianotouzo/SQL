SELECT D_E_L_E_T_,* FROM SF1010 WHERE F1_DOC IN ('000020396','000020401.')
SELECT D_E_L_E_T_,* FROM SD1010 WHERE D1_DOC IN ('000020396','000020401') AND D_E_L_E_T_ <>'*'


SELECT ZZ8_ATIVO,* FROM ZZ8010 WHERE ZZ8_ATIVO = '1' AND ZZ8_VLFRTE = '99.99'
--UPDATE ZZ8010 SET ZZ8_ECOM = '1' WHERE ZZ8_PROD = '021490016'

ZZ8_ATIVO = '1' LE ESTOQUE, SE FOR '0' ESTOQUE = '0'

SELECT D_E_L_E_T_,* FROM SC6010 WHERE C6_NUM = '563162'
SELECT D_E_L_E_T_,* FROM SC5010 WHERE C5_NUM = '563162'
UPDATE SC6010 SET D_E_L_E_T_ = '*' WHERE C6_NUM = '563162' 
UPDATE SC5010 SET D_E_L_E_T_ = '*' WHERE C5_NUM = '563162' 

SELECT * FROM Z02010 WHERE Z02_DOC = '361103'