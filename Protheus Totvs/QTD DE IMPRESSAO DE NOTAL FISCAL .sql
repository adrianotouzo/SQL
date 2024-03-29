--QTD DE IMPRESSAO DE NOTAL FISCAL 


SELECT DISTINCT COUNT(ZRL_NUMPED) AS TOTAL  FROM ZRL010 
WHERE ZRL_ACAO = 'IMPRESSAO NFE' AND ZRL_FILIAL = '01' AND ZRL_DATA LIKE '2021%'  

SELECT SUBSTRING(ZRL_DATA,1,6) MES,
SUM(CASE WHEN ZRL_FILIAL = '01' THEN 1 ELSE 0 END) ARA,
SUM(CASE WHEN ZRL_FILIAL = '02' THEN 1 ELSE 0 END) SCA
FROM ZRL010  WHERE D_E_L_E_T_ <> '*' AND ZRL_ACAO = 'IMPRESSAO NFE' AND ZRL_DATA >= '2020%'
GROUP BY SUBSTRING(ZRL_DATA,1,6)
ORDER BY SUBSTRING(ZRL_DATA,1,6)

SELECT * FROM ZRL010 WHERE ZRL_ACAO = 'IMPRESSAO NFE'



/*
SELECT  F2_QTDIMP,F2_DOC, MONTH(F2_EMISSAO) AS MES FROM SF2010 
WHERE F2_SERIE ='1' AND F2_EMISSAO BETWEEN  ('20200601')  AND ('20210228') ORDER BY 3
select count(ZRL_USUER) FROM ZRL010 where ZRL_USUER = 'FATURAMENTO'
select MONTH(ZRL_DATA) as MES, * FROM ZRL010 WHERE ZRL_ACAO = 'IMPRESSAO NFE' AND ZRL_FILIAL = '02'*/