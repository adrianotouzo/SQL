--select * from SF3010 WHERE F3_NFISCAL = '355912'

SELECT F3_CFO, F3_ESTADO, F3_VALCONT, F3_BASEICM, F3_VALICM, F3_ISENICM, F3_OUTRICM, F3_OBSERV 
FROM SF3010 WHERE F3_ENTRADA BETWEEN '20210401' AND '20210430' AND F3_CFO = '6108' 