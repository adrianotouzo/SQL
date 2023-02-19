--RAZAO CONTABIL SCRIPIT
SELECT * FROM CT2010 where CT2_DATA > = '20200101' and CT2_DATA < = '20200131'


select CT2_FILIAL FILIAL , CT1_CONTA CONTA , 
	coalesce ( CT2_CCD , ' ' ) CUSTO , 
	coalesce ( CT2_ITEMD , ' ' ) ITEM , 
	coalesce ( CT2_CLVLDB , ' ' ) CLVL , 
	coalesce ( CT2_DATA , ' ' ) DDATA , 
	coalesce ( CT2_TPSALD , ' ' ) TPSALD , 
	coalesce ( CT2_DC , ' ' ) DC , 
	coalesce ( CT2_LOTE , ' ' ) LOTE , 
	coalesce ( CT2_SBLOTE , ' ' ) SUBLOTE , 
	coalesce ( CT2_DOC , ' ' ) DOC , 
	coalesce ( CT2_LINHA , ' ' ) LINHA , 
	coalesce ( CT2_CREDIT , ' ' ) XPARTIDA , 
	coalesce ( CT2_HIST , ' ' ) HIST , 
	coalesce ( CT2_SEQHIS , ' ' ) SEQHIS , 
	coalesce ( CT2_SEQLAN , ' ' ) SEQLAN , '1' TIPOLAN , 
	coalesce ( CT2_VALOR , 0 ) VALOR , 
	coalesce ( CT2_EMPORI , ' ' ) EMPORI , 
	coalesce ( CT2_FILORI , ' ' ) FILORI 

from CT1010 CT1 left join CT2010 CT2 on CT2 . CT2_FILIAL = '' 
		and CT2 . CT2_DEBITO = CT1 . CT1_CONTA and CT2 . CT2_DATA > = '20200101' and CT2 . CT2_DATA < = '20200131' 
		and CT2 . CT2_CCD > = '03' and CT2 . CT2_CCD < = '04' and CT2 . CT2_ITEMD > = '' and CT2 . CT2_ITEMD < = '' 
		and CT2 . CT2_CLVLDB > = '' and CT2 . CT2_CLVLDB < = '' and CT2 . CT2_TPSALD = '' and CT2 . CT2_MOEDLC = '' 
		and ( CT2 . CT2_DC = '' or CT2 . CT2_DC = '' ) and CT2_VALOR < > '' and CT2 . D_E_L_E_T_ = '' 

where CT1 . CT1_FILIAL = '' and CT1 . CT1_CLASSE = '' and CT1 . CT1_CONTA > = '' and CT1 . CT1_CONTA < = '' and CT1 . D_E_L_E_T_ = ''
		union select CT2_FILIAL FILIAL , CT1_CONTA CONTA , 
			coalesce ( CT2_CCC , ' ' ) CUSTO , 
			coalesce ( CT2_ITEMC , ' ' ) ITEM , 
			coalesce ( CT2_CLVLCR , ' ' ) CLVL , 
			coalesce ( CT2_DATA , ' ' ) DDATA , 
			coalesce ( CT2_TPSALD , ' ' ) TPSALD , 
			coalesce ( CT2_DC , ' ' ) DC , 
			coalesce ( CT2_LOTE , ' ' ) LOTE , 
			coalesce ( CT2_SBLOTE , ' ' ) SUBLOTE , 
			coalesce ( CT2_DOC , ' ' ) DOC , 
			coalesce ( CT2_LINHA , ' ' ) LINHA , 
			coalesce ( CT2_DEBITO , ' ' ) XPARTIDA , 
			coalesce ( CT2_HIST , ' ' ) HIST , 
			coalesce ( CT2_SEQHIS , ' ' ) SEQHIS , 
			coalesce ( CT2_SEQLAN , ' ' ) SEQLAN , '2' TIPOLAN , 
			coalesce ( CT2_VALOR , 0 ) VALOR , 
			coalesce ( CT2_EMPORI , ' ' ) EMPORI , 
			coalesce ( CT2_FILORI , ' ' ) FILORI 
	
	from CT1010 CT1 left join CT2010 CT2 on CT2 . CT2_FILIAL = '' and CT2 . CT2_CREDIT = CT1 . CT1_CONTA 
				and CT2 . CT2_DATA > = '20200101' and CT2 . CT2_DATA < = '20200131' and CT2 . CT2_CCC > = '1101010001' 
				and CT2 . CT2_CCC < = '5901010003' and CT2 . CT2_ITEMC > = '' and CT2 . CT2_ITEMC < = '' 
				and CT2 . CT2_CLVLCR > = '' and CT2 . CT2_CLVLCR < = '' and CT2 . CT2_TPSALD = '1'
				and CT2 . CT2_MOEDLC = '01' and ( CT2 . CT2_DC = '' or CT2 . CT2_DC = '' ) and CT2_VALOR < > '' 
				and CT2 . D_E_L_E_T_ = '' 
		
		where CT1 . CT1_FILIAL = '' and CT1 . CT1_CLASSE = '' and CT1 . CT1_CONTA > = ''
				and CT1 . CT1_CONTA < = '' and CT1 . D_E_L_E_T_ = '' 
				
order by CONTA , DDATA
