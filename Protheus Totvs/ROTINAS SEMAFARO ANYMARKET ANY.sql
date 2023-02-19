/*
BRANCA = produto nunca teve nenhuma interação com digital
 
MARRON = produto manualmente enviado para o FULL, ainda sem simulação de preço para anúncio
Estoque ML-FULL = DIFERENTE de BRANCO
Simulador ML  =  campo frete ML NÃO FLEGADO e valor IGUAL a ZERO
 
VERDE = produto manualmente enviado para o FULL, já com simulação preço para anúncio gravada
Estoque ML-FULL = DIFERENTE de BRANCO
Simulador ML  =  campo  frete ML FLEGADO e valor DIFERENTE de ZERO
 
LARANJA = produto cadastrado no ANYMARKET, aguardando valor frete ML correto
Margem = 39,99% Frete = R$ 99,99 Ativo = SIM
 
AMARELA = produto cadastrado no ANYMARKET com valor frete ML correto, aguardando formação preço alterando margem
Margem = 39,99% Frete = DIFERENTE de R$ 99,99 Ativo = NÃO
 
AZUL = produto em venda, com cadastro ANY + frete + formação + estoque OK´s
Margem, DIFERENTE de 39,99% Frete, DIFERENTE de R$ 99,99 Estoque Anymarket, MAIOR que ZERO Ativo = SIM
 
PRETA = produto pausado por vendas zerarem o estoque
Margem, DIFERENTE de 39,99% Frete, DIFERENTE de R$ 99,99 Estoque Anymarket, IGUAL a ZERO Ativo = SIM
 
VERMELHA = produto com todas as informações OK, porém inativado por ação MANUAL
Margem, DIFERENTE de 39,99% Frete, DIFERENTE de R$ 99,99 Estoque Anymarket, QUALQUER VALOR Ativo = NÃO
 
TODOS = filtro para todos os produtos que já tiveram alguma integração com digital
*/
select ZZ1_DESC , ZZ3_DESC , B1_COD , B1_DESC , B1_UM , B1_QE , B1_PRV1 , B1_IPI , B1_IMPORT , B1_FPRECO , 
B1_VENCAS , B1_CODBAR , B1_TE , B1_TS , B1_PICM , B1_OXQTMUL , B1_DESC_P , B1_FABRIC , BM_DESC , 
		case 
			when ZZ8_ATIVO = '2' and ( ZZ8_DMARG = '39.99' and ZZ8_VLFRTE ! = '99.99' ) then '4' 
			when ZZ8_ATIVO = '2' and ( ZZ8_DMARG ! = '39.99' and ZZ8_VLFRTE ! = '99.99' ) then '7' 
			when ZZ8_ATIVO = '1' and ( ZZ8_DMARG ! = '39.99' and ZZ8_VLFRTE ! = '99.99' ) and 
		(select B2_QATU - B2_RESERVA from SB2010 B2 
			where B2_COD = ZZ8_PROD and B2_FILIAL = '01' and B2_LOCAL = '01' and B2 . D_E_L_E_T_ = '') < '1' 
				then '6' 
					when ZZ8_ATIVO = '1' and (ZZ8_DMARG = '39.99' and ZZ8_VLFRTE = '99.99') 
				then '3' 
					when ZZ8_ATIVO = '1' and (ZZ8_DMARG ! = '39.99' and ZZ8_VLFRTE ! = '99.99') 
	and (select B2_QATU - B2_RESERVA from SB2010 B2 where B2_COD = ZZ8_PROD and B2_FILIAL = '01' 
	and B2_LOCAL = '01' and B2 . D_E_L_E_T_ = '' ) > '0'
			then '5' 
			when ZZ8_ATIVO = '' and ( select ISNULL ( SUM ( B6_SALDO ) , 999) QTDE from SB6010 where B6_PRODUTO = B1_COD and D_E_L_E_T_ = '' 
	and B6_CLIFOR = '098390' ) ! = '999' and ZZ8_ATFREO = 'F' and ZZ8_FREMLO = '0' 
			then '1' when ZZ8_ATIVO = '1' 
	and ( select ISNULL ( SUM ( B6_SALDO ) , 999 ) QTDE from SB6010 
			where B6_PRODUTO = B1_COD and D_E_L_E_T_ = '' and B6_CLIFOR = '098390' ) ! = 999 and ZZ8_ATFREO = 'T' 
	and ZZ8_FREMLO ! = '0' 
				then '2' else '0' end CORML from SB1010 B1 with ( NOLOCK ) 
				inner join ZZ1010 Z1 with ( NOLOCK ) on B1_MARCA = ZZ1_MARCA 
				and Z1 . D_E_L_E_T_ = '' 
					inner join ZZ3010 Z3 with ( NOLOCK ) on B1_SUBGRUP = ZZ3_COD and Z3 . D_E_L_E_T_ = '' and B1_SUBGRUP = ZZ3_COD 
					inner join SBM010 BM with ( NOLOCK ) on SUBSTRING ( B1_COD , 1 , 2) = BM_GRUPO and BM . D_E_L_E_T_ = '' 
					inner join ZZ8010 Z8 with ( NOLOCK ) on ZZ8_ATIVO ! = '1' and Z8 . D_E_L_E_T_ <> '*' and ZZ8_PROD = B1_COD 
		where B1_MSBLQL <> '1' and B1_GRUPO <> '100' and B1 . D_E_L_E_T_ <> '*' 
order by ZZ1_DESC , ZZ3_DESC , B1_DESC
