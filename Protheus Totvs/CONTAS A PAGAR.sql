--EXCLUIR CONTAS A PAGAR 

SELECT D_E_L_E_T_,* FROM SE2010 WHERE  E2_NUM IN ('000176','003423') AND E2_TIPO = 'TX'

--UPDATE SE2010 SET D_E_L_E_T_ = '*' WHERE  E2_NUM IN ('000176','003423') AND E2_TIPO = 'TX'


/*NFS 000176 e 003423

valores:       R$ 15,00
               R$ 9,75
               R$ 45,00
               R$ 15,00
               R$ 3,00
*/