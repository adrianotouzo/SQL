select * from SRA010 where 
--RA_FILIAL = '01' 
--AND  RA_MAT IN ('000301','001282') 
 D_E_L_E_T_ = '' ORDER BY 2

select * from SRA010 where RA_FILIAL = '02' 
--AND  RA_MAT IN ('000301','001282') 
and D_E_L_E_T_ = '' ORDER BY 2

select * from SRA010 where RA_FILIAL = '02' AND  RA_MAT IN ('000301','000302') and D_E_L_E_T_ = ''

--update SRA010 set RA_CC = '5230', RA_PROCES = '001' where RA_FILIAL = '02' AND  RA_MAT = '000302'
--update SRA010 set RA_CC = '5260' where RA_FILIAL = '02' AND  RA_MAT = '000302'

--update SRA010 set RA_MAT = '101303' where RA_FILIAL = '01' AND  RA_MAT = '101304'

--DELETE FROM SRA010 
      --WHERE RA_FILIAL = '01' AND  RA_MAT = '001281'

     
--Proximos 101289  -   200306    --- 900569
/*
Luciano Nascimento - de 1298 para 1293
Flávia Crevelenti - de 1299 para 1294
Emanuelle da Silva - de 1300 para 308

--707 Proximo RECNO
 001295 para 101292.
*/

Carolina Moraes Muller Cod: 001297
UPDATE SRA010 SET RA_MAT = '101322' WHERE RA_MAT = '101325'
UPDATE SRA010 SET RA_MAT = '101295' WHERE RA_MAT = '001301'
UPDATE SRA010 SET RA_MAT = '101296' WHERE RA_MAT = '001302'

select RA_FILIAL,RA_MAT, R_E_C_N_O_, D_E_L_E_T_,* from SRA010 order by 2
