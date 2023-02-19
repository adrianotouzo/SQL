/*
--PEDIDOS DE COMPRA COM BAIXA PENDENTE 
-- VERIFICA O TOTAL DE ENTRADA X PEDIDO

Verde:		Verifica se o campo C7_QUJE e C7_QTDACLA tem conte�do 0. Neste filtro, para n�o serem listados os pedidos "Azuis" (Bloqueados), "Pretos" (Autoriza��o de Entrega) e com "Res�duo Eliminado", deve-se acrescentar ao filtro C7_CONAPRO Diferente de B, C7_TIPO = 1 (Pedido) e C7_RESIDUO =      (vazio).
Amarelo:	Verifica se o campo C7_QUJE tem conte�do diferente de 0 e seu conte�do � menor que o conte�do do campo C7_QUANT.
Vermelho:	Verifica se o conte�do do campo C7_QUJE � maior ou igual ao conte�do do campo C7_QUANT.
Azul:		Verifica se o conte�do do campo C7_CONAPRO � igual a B e se o conte�do do campo C7_QUJE � menor que o conte�do do campo C7_QUANT.
Cinza:		Verifica se o campo C7_RESIDUO n�o est� vazio.
Laranja:	Verifica se o conte�do do campo C7_QTDACLA � maior que 0.
Preto:		Verifica o campo C7_TIPO.
Branco:		Verifica se o campo C7_CONTRA e C7_RESIDUO n�o est�o vazios.

Verde:		C7_QUJE == 0 .AND. C7_QTDACLA ==0 .AND. UPPER(C7_CONAPRO)!="B" .AND. C7_TIPO == 1 .AND. UPPER(C7_RESIDUO)== " "  
Amarelo:	C7_QUJE != 0 .AND. C7_QUJE < C7_QUANT .AND. Empty(C7_RESIDUO) .AND. C7_TIPO = 1  
Vermelho:	C7_QUJE >= C7_QUANT  

*/

SELECT D1_PEDIDO, D1_DOC,D1_ITEM,C7_ITEM, D1_COD, D1_DESCR, D1_QUANT AS NOTA , C7_QUJE AS ESPELHO, C7_QUANT AS PEDIDO, D1_QTCONFE
FROM SC7010 
INNER JOIN SD1010 ON D1_COD = C7_PRODUTO AND  C7_ITEM = D1_ITEMPC AND C7_NUM = D1_PEDIDO
WHERE  C7_NUM in('050793','051053') AND D1_COD ='030520006' AND SD1010.D_E_L_E_T_ =''
order by 5
--AND D1_QUANT <> C7_QUJE AND C7_ITEM IN('0016')


SELECT D1_PEDIDO, D1_DOC,D1_ITEM,C7_ITEM, D1_COD, D1_DESCR, D1_QUANT AS NOTA , C7_QUJE AS ESPELHO, C7_QUANT AS PEDIDO, D1_QTCONFE
FROM SC7010 
INNER JOIN SD1010 ON D1_COD = C7_PRODUTO AND  C7_ITEM = D1_ITEMPC AND C7_NUM = D1_PEDIDO
WHERE D1_QTCONFE <> C7_QUJE 

SELECT D1_DOC,* FROM SD1010 WHERE D1_PEDIDO = '050438'  AND D1_COD ='060930098' AND D_E_L_E_T_=''

--UPDATE SC7010 SET C7_QUJE = C7_QUANT WHERE C7_NUM ='050691' AND C7_ITEM = '0001'

SELECT F1_CHVNFE,* FROM SF1010 WHERE F1_DOC IN ('000897468','000738083')
SELECT D1_DOC,* FROM SD1010 WHERE D1_DOC IN ('000897468','000738083')  AND D1_PEDIDO ='050830' AND D_E_L_E_T_ =''
SELECT D1_DOC,D1_ITEM, D1_COD, D1_DESCR, D1_QUANT, D1_PEDIDO,* FROM SD1010 WHERE D1_DOC IN ('000897468','000738083')  AND D_E_L_E_T_ =''

select  C7_NUM,C7_QUJE AS ESPELHO, C7_QUANT AS PEDIDO,* from SC7010 WHERE C7_QUJE <> C7_QUANT AND  C7_NUM in('050830') order by 5

select  C7_QUJE,* FROM SC7010 
WHERE  C7_NUM in('050438','050206','050036') AND C7_PRODUTO ='060930098'
