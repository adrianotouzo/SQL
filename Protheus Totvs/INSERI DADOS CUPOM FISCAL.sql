-- cabecario cupom*  >>>> NUMERO CUPOM
SELECT D_E_L_E_T_, * FROM SL1010
--UPDATE SL1010 SET D_E_L_E_T_ = '*', 
WHERE  L1_DOC = '011937' L1_NUM = '011937' AND  L1_SERIE = '005' 


-- item cupom  >>>> NUMERO CUPOM
SELECT D_E_L_E_T_, * FROM SL2010
--UPDATE SL2010 SET D_E_L_E_T_ = '*'
WHERE L2_DOC = '011937' AND L2_SERIE = 'SA4'

-- recebimento loja (ORCAMENTO)
SELECT D_E_L_E_T_, * FROM SL4010
--UPDATE SL4010 SET D_E_L_E_T_ = '*', L4_DATA = '20200914'
WHERE L4_NUM = '616899' AND L4_DATA = '20201020'

select * from SL1010  where L1_DOC IN ('011937','011938') AND L1_EMISSAO = '20201028'

 --UPDATE SL1010 SET L1_SERIE = '005', L1_PDV = '102', L1_EMISNF = '20201020', L1_OPERADO = 'C12', L1_HORA = '09:18', L1_ESTACAO = '102', L1_KEYNFCE = '35201038875597000190590005568110333928049765', L1_SERSAT = '000556811', L1_SDOC = '005'
 --where L1_NUM = '616899'  AND L1_EMISSAO = '20201020' AND L1_VLRTOT LIKE '24,52'


 --ORC 617792 CF 011937     EMISSAO 20201031 PDV 101 SERIE SA4  OPERADO C11