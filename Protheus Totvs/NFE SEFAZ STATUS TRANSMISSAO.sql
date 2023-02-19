SELECT NF50.ID_ENT ,NF50.NFE_ID ,SUBSTRING(NF50.NFE_ID,4,20) AS NOTA_FISCAL  ,LEFT(NF50.NFE_ID,3) AS SERIE  
		,CONVERT(DATE, DATE_NFE, 103) AS DATE_NFE ,TIME_NFE ,LEFT(TIME_NFE,2) AS HORA ,NF54.HRREC_SEFR AS HORA_RECEBIMENTO_SEFAZ
	  ,STATUS
	  ,CASE STATUS
		  WHEN '1'
			THEN 'Recebida'
		  WHEN '2'
			THEN 'Assinada'
		  WHEN '3'
			THEN 'Falha no Schema XML'
		  WHEN '4'
			THEN 'Transmitida'
		  WHEN '5'
			THEN 'Problemas'
		  WHEN '6'
			THEN 'Autorizada'
		  WHEN '7'
			THEN 'Cancelamento'
		else
			'Não identificado'
		end AS STATUS_NOME ,STATUSCANC
		,CASE STATUSCANC
			WHEN '1'
				THEN 'Recebida'
			WHEN '2'
				THEN 'Cancelada'
			WHEN '3'
				THEN 'Falha de cancelamento/inutilização'
			else
				'Não identificado'
			end AS STATUSCANCELAMENTO_NOME
		,NF01.CNPJ
		,CONCAT(NF01.CNPJ,' FILIAL ') AS NOME_ENTIDADE
		,NF01.UF AS ESTADO_FILIAL
		,NF50.MODALIDADE AS CODIGO_MODALIDADE
		,CASE NF50.MODALIDADE
			WHEN '1'
				THEN 'Normal'
			WHEN '2'
				THEN 'Contingência off-line'
			WHEN '3'
				THEN 'Contingência Scan'
			WHEN '4'
				THEN 'Ambiente Nacional'
			WHEN '5'
				THEN 'Contingência DPEC/EPEC'
			WHEN '6'
				THEN 'Sefaz virtual'
			WHEN '7'
				THEN 'Contingência FS-DA'
			WHEN '8'
				THEN 'Contingência SVC-AN'
			WHEN '9'
				THEN 'Contingência SVC-RS'
			ELSE 
				'Não identificado'
			END AS NOME_MODALIDADE
			,NF54.CSTAT_SEFR AS CODIGO_SEFAZ
			,CONVERT(DATE, NF54.DTREC_SEFR,103) AS DATA_RECEBIMENTO_SEFAZ
			
	FROM SPED050 NF50 WITH(NOLOCK)
	INNER JOIN SPED001 NF01 WITH(NOLOCK) ON NF01.ID_ENT = NF50.ID_ENT AND NF01.D_E_L_E_T_ = ''
	LEFT JOIN SPED054 NF54 WITH(NOLOCK)  ON NF01.ID_ENT = NF54.ID_ENT AND NF54.NFE_ID = NF50.NFE_ID AND NF54.D_E_L_E_T_ = '' 
WHERE NF50.D_E_L_E_T_ = ''
AND CONVERT(DATE, NF50.DATE_NFE,103) >= GETDATE()-1
order by 2 dESC

--SPED - NFe/NFSe:
/*
("SPED050")    //Nota Fiscal Eletronica - Saida
("SPED051")    //Nota Fiscal Eletronica de Servico - (Municipal)
("SPED052")    //Lote de transmissao Nota Fiscal Eletronica 
("SPED053")    //Lotes de Nota Fiscal Eletronica de Servico - (Municipal)
("SPED054")    //Nota Fiscal Eletronica x Lote de Transmissao 
("SPED055")    //Lotes de Nota Fiscal Eletronica de Servico - (Municipal)
("SPED060")    //Nota Fiscal Eletronica - Entrada

https://store.office.com/addinsinstallpage.aspx%3Frs=en-US&assetid=WA104381214&ui=en-US&ad=US
*/
