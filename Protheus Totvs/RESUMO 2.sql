-- SOMA DOS VALORES +  IPI
-- SOMA DOS VALORES RESUMO 2 VALOR FINAL E SOMADO COM BASE EM OUTRO TABELA 

-- cabecario cupom*  >>>> NUMERO CUPOM SL1010 
-- item cupom  >>>> NUMERO CUPOM SL2010 
-- recebimento loja (ORCAMENTO) SL4010
-- movimento bancario caso seja dinheiro SE5010 
--CABECARIO NOTA SF2010
-- item NOTA SD2010 

-- financeiro  >>>> NUMERO CUPOM � AQUI QUE ELE APARECE NO RELATORIO
SELECT * FROM SE1010 WHERE E1_EMISSAO = '20201219' AND E1_PREFIXO = 'SA4'and E1_VALOR = '12.75' order by 5

SELECT * FROM SE1010 WHERE E1_EMISSAO = '20201219' AND E1_PREFIXO = 'SA4' AND E1_NUM = '014080'
SELECT * FROM SL1010 WHERE L1_EMISSAO = '20201219' AND L1_VLRTOT = '12.75'
SELECT * FROM SL2010 WHERE L2_EMISSAO = '20201219' AND L2_NUM = '622624' AND L2_DOC = '014080'
SELECT * FROM SL4010 WHERE L4_DATA = '20201219'    AND L4_VALOR = '12.75'
SELECT * FROM SE5010 WHERE E5_DATA = '20201219'    AND E5_PREFIXO = 'SA4' AND E5_NUMERO = '014080'
SELECT * FROM SF2010 WHERE F2_EMISSAO = '20201219'  AND F2_SERIE = 'SA4' AND F2_DOC = '014058'
SELECT * FROM SD2010 WHERE D2_EMISSAO = '20201219' AND D2_DOC = '014058' 


