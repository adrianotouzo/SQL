SELECT * FROM SC5010 

SELECT UA_OBSNF,UA_NUM,UA_CLIENTE,UA_EMISSAO,UA_NUMSC5
FROM SUA010 
WHERE  UA_EMISSAO >'20211209%' AND UA_STATUS ='NF.' 
AND UA_OBSNF IS NOT NULL


--CONVERTE HEXDECIMAL TEXTO
select cast(cast(UA_OBSNF as varbinary(max)) as varchar(max)) as MSM_NF_OBS, C5_MNFORC AS OBSPED,
		UA_NUM AS ORCAMENTO,UA_CLIENTE,UA_EMISSAO, UA_FILIAL, UA_NUMSC5 AS PEDIDO
from   SUA010, SC5010
WHERE  
C5_NUM = UA_NUMSC5  AND C5_FILIAL =UA_FILIAL 
AND C5_MNFORC =''
AND UA_FILIAL ='01'
AND UA_EMISSAO >'202111%' AND UA_STATUS ='NF.' 
AND UA_OBSNF IS NOT NULL
AND SUA010.D_E_L_E_T_ ='' AND SC5010.D_E_L_E_T_ =''
ORDER BY 5


select cast(cast(Z02_ETQ as varbinary(max)) as varchar(max)) as Z02ETQ,* 
from Z02010 
--WHERE Z02_PEDIDO LIKE '59%'
ORDER BY Z02_PEDIDO