SELECT * FROM Z02010 order by 2
SELECT * FROM SF1010 WHERE F1_DOC ='038244' AND D_E_L_E_T_<>'*'
SELECT * FROM SD1010 WHERE D1_DOC = '038224' AND D_E_L_E_T_<>'*' AND D1_SERIE ='9'
SELECT * FROM SF2010 WHERE F2_DOC = '033987' AND D_E_L_E_T_<>'*' AND F2_SERIE ='9'
SELECT * FROM SD2010 WHERE D2_DOC = '033987' AND D_E_L_E_T_<>'*' AND D2_SERIE ='9' AND D2_COD ='051960052'
/*Boa tarde,
 No come�o do m�s tivemos alguns dias que os retornos foram realizado de forma autom�tica, portanto o 
 Elson identificou alguns produtos que est�o negativo no estoque. Levantando maiores informa��es, 
 pude analisar que da forma autom�tica o sistema n�o est� baixando do poder de terceiros as quantidades exatas do retorno. Exemplo:
 10/08  retorno nf 038244 051960052 - 5 unidades/ sa�da 038245 051960052 - 5 unidades. 
se voc�s analisarem no documento de entrada foi baixado somente 2 unidades. segue anexo o print. 
*/