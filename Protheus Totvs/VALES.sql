
SELECT ZZA_STATUS,* FROM ZZA010 
--UPDATE ZZA010 SET ZZA_STATUS = 'C'
WHERE ZZA_FILIAL = '02' and ZZA_VALE IN ('018653')
--('017677','017750','017944','017978','018000','018015','018030','018024','018112','018197','018200','018402','018429','018448','018571','018613')

018534 - METALMIX
018653 - LUIZ GUSTAVO

select B2_FILIAL, B2_LOCAL, B2_COD, B2_VATU2 from SB2010 where B2_COD in 
(SELECT ZZB_PRODUT FROM ZZB010 
--UPDATE ZZA010 SET ZZA_STATUS = 'I'
WHERE ZZB_FILIAL = '02' and ZZB_VALE IN ('018219'))
and B2_VATU2 < 0;

--'-67576383198.72'
select B2_VATU2, * from SB2010
--update SB2010 set B2_VATU2 = 0
where B2_COD = '030770171' and B2_FILIAL = '02' and B2_LOCAL = '10' and D_E_L_E_T_ = '';


/*
{"ZZA_STATUS=='I'"	,"BR_CINZA"   },;  // CINZA - Aguardando liberacao de inclusao
{"ZZA_STATUS=='D'"	,"BR_AMARELO" },;  // AMARELO - Aguardando liberacao de devolucao
{"ZZA_STATUS=='A'"	,"ENABLE"     },;  // VERDE - Aberto
{"ZZA_STATUS=='P'"	,"BR_AZUL"    },;  // AZUL - baixado parcialmente
{"ZZA_STATUS=='B'"	,"DISABLE"    },;  // VERMELHO - Baixado
{"ZZA_STATUS=='F'"	,"BR_PINK"    },;  // PINK - Aguardando Faturamento
{"ZZA_STATUS=='C'"  ,"BR_PRETO"   }};  // CANCELADO
*/

select * from SC1010 -- Solicitação de Compra
where C1_NUM in ('011802', '012342','011810', '000023', '012066', '012343', '012319') AND C1_ITEM = '0001';
--                 VERM                  CINZ            AZUL            VERD

select top 100 * from SC5010 -- Solicitação de Compra
where C5_NUM in ('011802', '012342','011810', '012066', '012343', '012319');
--                 VERM              CINZ       AZUL            VERD

select top 100 * from SC6010 -- Solicitação de Compra
where C6_NUM in ('011802', '012342','011810', '012066', '012343', '012319') AND C6_ITEM = '01' AND C6_FILIAL = '01';
--                 VERM              CINZ       AZUL            VERD

select C7_NUM, C7_ENCER, C7_EMITIDO, C7_TES, C7_FABRIC, C7_TRANSP, C7_POLREPR from SC7010 -- Solicitação de Compra
where C7_NUM in ('011802', '012342','011810', '012066', '012343', '012319') AND C7_ITEM = '0001';
--                 VERM              CINZ       AZUL            VERD

select top 100 * from SD2010 -- Itens de Venda da NF
select top 100 * from SE4010 -- FOP
select top 100 * from ZZ8010 -- Preço
select top 100 * from SM2010
select top 100 * from SF2010
select top 100 * from SA3010 -- Cliente

SELECT * FROM ZZA010  WHERE ZZA_FILIAL = '02' and ZZA_VALE IN ('018304')
--update ZZA010 set  WHERE ZZA_FILIAL = '02' and ZZA_VALE IN ('017815')
SELECT * FROM ZZB010 WHERE  ZZB_VALE = '017815'
--update ZZB010 set  WHERE ZZB_FILIAL = '02' and ZZB_VALE IN ('017815')

SELECT * FROM  WHERE UA_NUM = '224238'