SELECT RA_MAT,RA_NOME,RA_NOMECMP,* FROM SRA010 WHERE RA_NOMECMP ='000000001306'

SELECT ZR1_CFISI,ZR1_IMPCEG,* FROM ZR1010 WHERE ZR1_CHVNFE ='35211161064838011682550010017262771839535540'

-- MENINO NOVO 000000001306
-- MARCELO	   000000001042
/*
MUDAR OS CAMPOS PARA S E DEPOIS FAZER FIM CONFERENCIA.
ZR1 ZR1_IMPCEG == 'S'
ZR1 ZR1_CFISI  == 'S'
UPDATE ZR1010 SET ZR1_CFISI ='S',ZR1_IMPCEG ='S' WHERE ZR1_CHVNFE ='35211161064838011682550010017262771839535540'
*/

