USE [OXICLOUD27]
GO

SELECT DISTINCT
	   --[B1_GRUPO]		'GRUPO'
	   [ZZ1_MARCA]		'CODIGO'
      ,[ZZ1_DESC]		'MARCA'
	  ,(SELECT COUNT(B1_COD) FROM SB1010 WHERE B1_MARCA = ZZ1_MARCA) QTD_PROD
	  ,(SELECT COUNT(B1_VENCAS) FROM SB1010 WHERE B1_MARCA = ZZ1_MARCA AND B1_VENCAS='S') QTD_V_CASADA
	  ,[ZZ1_COMP]		'COD_COMP'
	  ,Y1_NOME			'NOME COMPRADOR'
      ,[ZZ1_LEADT]		'LEADTIME'
	  ,[ZZ1_ENVSIT]		'ENVSITE'
      ,[ZZ1_JANELA]		'JANELA_COMP'
      ,[ZZ1_FRETE]		'FRETE'
      ,[ZZ1_OBSFRE]		'OBS_FOR'
      ,[ZZ1_CONPAG]		'CODPAG'
      ,[ZZ1_POLITI]		'POLITICA'
      ,[ZZ1_MULTGR]		'MULTI_GRUPO'
      ,[ZZ1_MULTSB]		'MULTI_SUBG'
      ,[ZZ1_EMAILF]		'EMAIL'
      ,[ZZ1_VLFAT]		'FAT_MIN'
      ,[ZZ1_JTRANS]		'JANELA_TRANS'
  FROM [dbo].[ZZ1010]  INNER JOIN SY1010 ON ZZ1_COMP = Y1_USER
  INNER JOIN SB1010 ON B1_MARCA = ZZ1_MARCA
 ORDER BY ZZ1_MARCA


 --// MARCA JULIANO
 SELECT DISTINCT
	   [B1_GRUPO]		'GRUPO'
	  ,(SELECT BM_DESC FROM SBM010 WHERE BM_GRUPO = B1_GRUPO) GRUPOS
	  ,[ZZ1_MARCA]		'CODIGO'
      ,[ZZ1_DESC]		'MARCA'
	  ,(SELECT COUNT(B1_COD) FROM SB1010 WHERE B1_MARCA = ZZ1_MARCA) QTD_PROD
	  ,(SELECT COUNT(B1_VENCAS) FROM SB1010 WHERE B1_MARCA = ZZ1_MARCA AND B1_VENCAS='S') QTD_V_CASADA
	  
  FROM [dbo].[ZZ1010]  INNER JOIN SY1010 ON ZZ1_COMP = Y1_USER
  INNER JOIN SB1010 ON B1_MARCA = ZZ1_MARCA
  AND B1_GRUPO NOT IN ('99','09','AT')
  ORDER BY ZZ1_MARCA

--SELECT * FROM SB1010
--SELECT * FROM ZZ1010
--SELECT * FROM ZZ8010
--SELECT * FROM SBM010

