DECLARE @P1 char(30)

SELECT LG_FILIAL,LG_CODIGO,LG_IMPFISC,LG_PORTIF,LG_IMPCHQ,LG_TIPTEF,LG_GAVETA,LG_TEFCONS,LG_SERIE,LG_PDV,LG_DISPLAY,LG_TERMTEF,LG_CRDXINT,LG_REDES,LG_IPSITEF,LG_LOGTEF,LG_LARGCOL,LG_CODSAT,LG_FABSAT,LG_SERSAT,TBL.D_E_L_E_T_,LG_PREFIXO 

FROM dbo.SLG010 TBL 
WHERE TBL.R_E_C_N_O_ = @P1

SELECT A6_FILIAL,A6_COD,A6_AGENCIA,A6_NUMCON,A6_NOME,TBL.D_E_L_E_T_,A6_MSBLQL FROM dbo.SA6010 TBL WHERE TBL.R_E_C_N_O_ = @P1