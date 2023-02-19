USE [TOTVSPED12]
GO

/*

Como a lentidão continua, vamos partir para os passos abaixo:

Verifique em seu banco do TSS se existem pendencias que possa estar causando a consulta indevida.

*- Faça backup de sua tabela SPED050
*- Realize filtro em sua tabela SPED050 procurando por STATUS = 1 ou 2 ou 4
Caso encontre algum registro, altere o campo STATUS para 5

*- Realize novo filtro em sua tabela SPED050 e procure por STATUSCANC = 1
Se encontrar registros altere o campo STATUSCANC para 3

*- Realize novo filtro em sua tabela SPED050 e procure por STATUSMAIL = 1
Se encontrar registros altere o campo STATUSMAIL para 3

*- Acesse e faça um backup da tabela SPED150
Em seguida realize filtro na tabela SPED150 procurando por STATUS = 1 ou 2 ou 4
Se encontrar registros altere o campo STATUS para 5

*- Realize novo filtro em sua tabela SPED150 e procure por STATUSMAIL = 1
Se encontrar registros altere o campo STATUSMAIL para 3

Estas alterações irão retirar todas as pendencias de seu banco de dados do TSS

*- Limpar tabela TSSTR1 caso tenha registro
*- Reiniciar o sistema Protheus e TSS por completo

*/


	SELECT *  FROM [dbo].[SPED001A]
	select * from SPED154 where DATE_EVEN >= '20210104'
	select * from SPED050 where DATE_NFE > '20210108'

	select * from SPED050 where  STATUS in ('1','2','4')
	select * from SPED050 where STATUSCANC = '1'
	select * from SPED050 where STATUSMAIL ='1'

	select * from SPED150 where  STATUS in ('1','2','4')
	select * from SPED150 where STATUSCANC = '1'
	select * from SPED150 where STATUSMAIL ='1'

	--UPDATE SPED150 SET STATUSMAIL = '3' where STATUSMAIL ='1' AND DATE_EVEN = '20210109'

	SELECT * FROM TSSTR1

	select * from SPED054 where DTREC_SEFR = '20210109'   --//Nota Fiscal Eletronica x Lote de Transmissao 
	select * from SPED052 where DATE_LOTE = '20210109'    --//Lote de transmissao Nota Fiscal Eletronica 

	select * from SPED158 where ORGAO = 'SP' AND VERSAO = '4.00' AND MODELO = '55' -- LINK CONEXAO WEB SERVICE

	SELECT * FROM SPED000 WHERE PARAMETRO = 'MV_POPPSS' OR PARAMETRO = 'MV_SMTPFPS'
	
	--UPDATE SPED000 SET CONTEUDO = 'oximaq@oximaq.com.br' WHERE R_E_C_N_O_ = '15'

	/*
	000001	MV_SMTPFPS	oxi@2019        14                                                                                                                                                                                                                                         	 	14
	000001	MV_POPPSS 	Oxi0oxi6	 	19
	000002	MV_SMTPFPS	oxi@2019        30                                                                                                                                                                                                                                          	 	30
	000002	MV_POPPSS 	Oxi0oxi6	 	35

	*/


SELECT  * FROM SPED000 WHERE PARAMETRO IN 
('MV_SMTPSRV','MV_SMTPAAC',
 'MV_SMTPFAC','MV_SMTPFPS',
 'MV_SMTPADM','MV_SMTPAUT',
 'MV_SMTPSSL', 'MV_SMTPTLS') 
AND ID_ENT IN (SELECT ID_ENT FROM SPED001 WHERE CNPJ = '38875597000190')

-- CONSULTA POR NUMERO DA NF 

SELECT NFE_ID,ID_ENT,
       MODELO,EMAIL,
       STATUSMAIL,STATUS,
       STATUSCANC, NFE_PROT, 
       MODALIDADE, AMBIENTE
FROM SPED050
WHERE NFE_ID = 'XXX'