
--BUSCA CHAVE NFE PARA AMOXARIFADO 

--TABELA SF2010 SAIDAS 
--TABELA SF1010 ENTRADA

--NF 002377 - 35200838875597000190550090000023771717885045, e na NF 002651 - 35200838875597000109550090000026511859177105.

select F2_DOC, F2_EMISSAO, F2_SERIE, F2_CHVNFE from SF2010  WHERE F2_SERIE = '1' AND F2_DOC = '002651' AND F2_EMISSAO = '20200809' 
select F2_DOC, F2_EMISSAO, F2_SERIE, F2_CHVNFE from SF2010  WHERE F2_SERIE = '9' AND F2_DOC = '002377' AND F2_EMISSAO = '20200804'
select F2_DOC, F2_EMISSAO, F2_CHVNFE from SF2010  WHERE F2_DOC = '333501'


select F1_DOC, F1_EMISSAO,F1_SERIE, F1_CHVNFE from SF1010  WHERE F1_DOC = '002651' AND F1_EMISSAO = '20200809'

--UPDATE SF2010 SET F2_CHVNFE = '35200838875597000190550090000026511859177105' WHERE F2_DOC = '002651' AND F2_CLIENTE = '050333' AND F2_EMISSAO = '20200809'
--UPDATE SF1010 SET F1_CHVNFE = '35200638875597000190550090000012871803431650' WHERE F1_DOC = '334229'  AND F1_EMISSAO = '20200831'

--UPDATE SF1010 SET D_E_L_E_T_ = '*'  WHERE F1_DOC = '334229'  AND F1_EMISSAO = '20200831'

select * from SF2010  WHERE F2_DOC = '001287' AND F2_EMISSAO = '20200809' AND F2_CLIENTE = '050333'
select * from SF1010  WHERE F1_DOC = '001287' AND F1_EMISSAO = '20200905' AND F1_CLIENTE = '050333'

SELECT * FROM SF2010 WHERE F2_DOC = '004488' AND F2_EMISSAO = '20200923'
SELECT * FROM SF1010 WHERE F1_SERIE = '9' AND F1_DOC IN ('003693', '003670') AND F1_EMISSAO = '20200923'

--TABELA DE PRODUTOS COM ORIGEM DA NF DE SAIDA COM RETORNO D1_NFORI NUMERO DA NOTA DE REMESSA 

SELECT * FROM SD1010 WHERE D1_NFORI = '004488' AND D1_COD = '021490011' AND D_E_L_E_T_ = ''

--UPDATE SF1010 SET F1_STATUS = '' ,D_E_L_E_T_ = '*'  WHERE F1_DOC = '003693'  AND F1_EMISSAO = '20200901'

SELECT F1_STATUS FROM SF1010 WHERE F1_SERIE = '9'

select * from SF2010  WHERE F2_DOC = '075571' AND F2_EMISSAO = '20201022' 
select * from SF1010  WHERE F1_DOC = '075571'
