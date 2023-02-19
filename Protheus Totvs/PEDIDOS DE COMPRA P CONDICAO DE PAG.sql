/*
Preciso que seja criado um relat�rio que fa�a o levantamento dos pedidos de compras que tem como Condi��o de Pagamento o c�digo 030 (N�o fatura).

Neste relat�rio precisa conter as seguintes informa��es:
. n� Pedido de Compra
. Fornecedor
. Data do Pedido de Compra
. Data da entrega
. Itens do Pedido
. C�digos dos Itens
. Descri��o dos itens
. Valores dos itens
. Filtro para separar informa��es por pedidos de Compra

Transf.NF:144380/          
*/

SELECT  
     C7_NUM AS PEDIDO, C7_EMISSAO AS EMISSAO,C7_DATPRF AS ENTREGA,C7_FORNECE AS FORNECEDOR,
	 C7_ITEM, C7_PRODUTO,C7_DESCRI,C7_QUANT, C7_PRECO, C7_TOTAL, C7_COND,C7_OBS
   
	FROM SC7010 

      WHERE C7_COND ='030' AND C7_EMISSAO LIKE '2021%'

ORDER BY 1,5

SELECT * FROM SB2010 